; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_mandatory_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_mandatory_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64, i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BSS_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@NL80211_BSS_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_G = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_B = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mandatory_rates(%struct.ieee80211_supported_band* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %11 = icmp ne %struct.ieee80211_supported_band* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NL80211_BSS_CHAN_WIDTH_5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NL80211_BSS_CHAN_WIDTH_10, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @IEEE80211_RATE_MANDATORY_G, align 4
  store i32 %32, i32* %8, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @IEEE80211_RATE_MANDATORY_B, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %38

36:                                               ; preds = %17
  %37 = load i32, i32* @IEEE80211_RATE_MANDATORY_A, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 2
  %41 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %40, align 8
  store %struct.ieee80211_rate* %41, %struct.ieee80211_rate** %6, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %64, %38
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %49, i64 %51
  %53 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %58, %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

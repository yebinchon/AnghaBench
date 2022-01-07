; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_of.c_wiphy_freq_limits_apply.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_of.c_wiphy_freq_limits_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_freq_range = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Disabling freq %d MHz as it's out of OF limits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_freq_range*, i32)* @wiphy_freq_limits_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_freq_limits_apply(%struct.wiphy* %0, %struct.ieee80211_freq_range* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_freq_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_freq_range* %1, %struct.ieee80211_freq_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %80

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %77, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %26, i64 %28
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %29, align 8
  store %struct.ieee80211_supported_band* %30, %struct.ieee80211_supported_band** %9, align 8
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %32 = icmp ne %struct.ieee80211_supported_band* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %77

34:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %42, i32 0, i32 1
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i64 %46
  store %struct.ieee80211_channel* %47, %struct.ieee80211_channel** %10, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %73

55:                                               ; preds = %41
  %56 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %57 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %60 = call i32 @wiphy_freq_limits_valid_chan(%struct.wiphy* %56, %struct.ieee80211_freq_range* %57, i32 %58, %struct.ieee80211_channel* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %55
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %62, %55
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %35

76:                                               ; preds = %35
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %19

80:                                               ; preds = %17, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wiphy_freq_limits_valid_chan(%struct.wiphy*, %struct.ieee80211_freq_range*, i32, %struct.ieee80211_channel*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

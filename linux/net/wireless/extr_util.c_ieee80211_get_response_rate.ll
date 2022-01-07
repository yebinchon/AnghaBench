; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_get_response_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_get_response_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_rate* @ieee80211_get_response_rate(%struct.ieee80211_supported_band* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_rate*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %11, i64 0
  store %struct.ieee80211_rate* %12, %struct.ieee80211_rate** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %45

26:                                               ; preds = %19
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %29, i64 %31
  %33 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 1
  %41 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %41, i64 %43
  store %struct.ieee80211_rate* %44, %struct.ieee80211_rate** %7, align 8
  br label %45

45:                                               ; preds = %38, %37, %25
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %13

48:                                               ; preds = %13
  %49 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  ret %struct.ieee80211_rate* %49
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

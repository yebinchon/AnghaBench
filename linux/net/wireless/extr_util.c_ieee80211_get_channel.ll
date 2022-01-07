; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %54, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %15 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %16, i64 %18
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  store %struct.ieee80211_supported_band* %20, %struct.ieee80211_supported_band** %7, align 8
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %22 = icmp ne %struct.ieee80211_supported_band* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %54

24:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %32, i32 0, i32 1
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i64 %36
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 1
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i64 %47
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %3, align 8
  br label %58

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %25

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %9

57:                                               ; preds = %9
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  ret %struct.ieee80211_channel* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

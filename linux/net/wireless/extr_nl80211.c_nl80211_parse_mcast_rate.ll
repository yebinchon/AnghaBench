; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_mcast_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_mcast_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.wiphy }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, i32*, i32)* @nl80211_parse_mcast_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_mcast_rate(%struct.cfg80211_registered_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 0
  store %struct.wiphy* %15, %struct.wiphy** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %61, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %22 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %23, i64 %25
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %26, align 8
  store %struct.ieee80211_supported_band* %27, %struct.ieee80211_supported_band** %11, align 8
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %29 = icmp ne %struct.ieee80211_supported_band* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %61

31:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  store i32 1, i32* %8, align 4
  br label %60

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %32

60:                                               ; preds = %49, %32
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

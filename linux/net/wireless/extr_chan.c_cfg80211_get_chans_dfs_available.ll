; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_available.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i64 }

@NL80211_EXT_FEATURE_DFS_OFFLOAD = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_DFS_AVAILABLE = common dso_local global i64 0, align 8
@NL80211_DFS_USABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i64, i64)* @cfg80211_get_chans_dfs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_get_chans_dfs_available(%struct.wiphy* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = load i32, i32* @NL80211_EXT_FEATURE_DFS_OFFLOAD, align 4
  %15 = call i32 @wiphy_ext_feature_isset(%struct.wiphy* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @cfg80211_get_start_freq(i64 %16, i64 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @cfg80211_get_end_freq(i64 %19, i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %66, %3
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %28, i64 %29)
  store %struct.ieee80211_channel* %30, %struct.ieee80211_channel** %8, align 8
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %32 = icmp ne %struct.ieee80211_channel* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %70

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %70

42:                                               ; preds = %34
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NL80211_DFS_AVAILABLE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %57 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_DFS_USABLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %55
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %61, %49, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, 20
  store i64 %68, i64* %9, align 8
  br label %23

69:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %64, %41, %33
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @wiphy_ext_feature_isset(%struct.wiphy*, i32) #1

declare dso_local i64 @cfg80211_get_start_freq(i64, i64) #1

declare dso_local i64 @cfg80211_get_end_freq(i64, i64) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

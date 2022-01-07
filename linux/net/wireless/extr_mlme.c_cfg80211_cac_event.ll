; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_cac_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_cac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i64, i32, %struct.TYPE_2__, %struct.wiphy* }
%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@NL80211_DFS_AVAILABLE = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cac_event(%struct.net_device* %0, %struct.cfg80211_chan_def* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %15, %struct.wireless_dev** %9, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 4
  %18 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  store %struct.wiphy* %18, %struct.wiphy** %10, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @trace_cfg80211_cac_event(%struct.net_device* %21, i32 %22)
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 128
  br label %31

31:                                               ; preds = %28, %4
  %32 = phi i1 [ false, %4 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %95

37:                                               ; preds = %31
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %95

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %86 [
    i32 129, label %50
    i32 130, label %80
    i32 128, label %83
  ]

50:                                               ; preds = %48
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  %58 = add i64 %53, %57
  store i64 %58, i64* %12, align 8
  %59 = load i32, i32* @jiffies, align 4
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @time_after_eq(i32 %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %67 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %68 = load i32, i32* @NL80211_DFS_AVAILABLE, align 4
  %69 = call i32 @cfg80211_set_dfs_state(%struct.wiphy* %66, %struct.cfg80211_chan_def* %67, i32 %68)
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %71 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %70, i32 0, i32 1
  %72 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %73 = call i32 @memcpy(i32* %71, %struct.cfg80211_chan_def* %72, i32 4)
  %74 = load i32, i32* @cfg80211_wq, align 4
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %76 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %75, i32 0, i32 0
  %77 = call i32 @queue_work(i32 %74, i32* %76)
  %78 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %79 = call i32 @cfg80211_sched_dfs_chan_update(%struct.cfg80211_registered_device* %78)
  br label %80

80:                                               ; preds = %48, %50
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %88

83:                                               ; preds = %48
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %88

86:                                               ; preds = %48
  %87 = call i64 @WARN_ON(i32 1)
  br label %95

88:                                               ; preds = %83, %80
  %89 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %90 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @nl80211_radar_notify(%struct.cfg80211_registered_device* %89, %struct.cfg80211_chan_def* %90, i32 %91, %struct.net_device* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %86, %47, %36
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_cac_event(%struct.net_device*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

declare dso_local i32 @cfg80211_set_dfs_state(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @cfg80211_sched_dfs_chan_update(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @nl80211_radar_notify(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*, i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

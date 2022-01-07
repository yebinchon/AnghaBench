; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_get_station.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_get_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.station_info = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_get_station(%struct.net_device* %0, i32* %1, %struct.station_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.station_info*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.station_info* %2, %struct.station_info** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %9, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %14 = icmp ne %struct.wireless_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %8, align 8
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %40

32:                                               ; preds = %18
  %33 = load %struct.station_info*, %struct.station_info** %7, align 8
  %34 = call i32 @memset(%struct.station_info* %33, i32 0, i32 4)
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.station_info*, %struct.station_info** %7, align 8
  %39 = call i32 @rdev_get_station(%struct.cfg80211_registered_device* %35, %struct.net_device* %36, i32* %37, %struct.station_info* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %29, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @memset(%struct.station_info*, i32, i32) #1

declare dso_local i32 @rdev_get_station(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

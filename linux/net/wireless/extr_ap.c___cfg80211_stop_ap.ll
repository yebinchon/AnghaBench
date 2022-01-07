; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ap.c___cfg80211_stop_ap.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ap.c___cfg80211_stop_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i64, i32, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@cfg80211_disconnect_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_stop_ap(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %8, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %34, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %81

43:                                               ; preds = %32, %24
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %43
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @rdev_stop_ap(%struct.cfg80211_registered_device* %52, %struct.net_device* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 2
  %64 = call i32 @memset(i32* %63, i32 0, i32 4)
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i32 @rdev_set_qos_map(%struct.cfg80211_registered_device* %67, %struct.net_device* %68, i32* null)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %74 = call i32 @nl80211_send_ap_stopped(%struct.wireless_dev* %73)
  br label %75

75:                                               ; preds = %72, %57
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %77 = call i32 @cfg80211_sched_dfs_chan_update(%struct.cfg80211_registered_device* %76)
  br label %78

78:                                               ; preds = %75, %51
  %79 = call i32 @schedule_work(i32* @cfg80211_disconnect_work)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %48, %40, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_stop_ap(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rdev_set_qos_map(%struct.cfg80211_registered_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @nl80211_send_ap_stopped(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_sched_dfs_chan_update(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

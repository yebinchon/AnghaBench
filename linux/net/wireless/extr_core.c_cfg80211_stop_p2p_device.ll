; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_stop_p2p_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_stop_p2p_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, %struct.wireless_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.wireless_dev = type { i64, i32 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_stop_p2p_device(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %17 = call i32 @wdev_running(%struct.wireless_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %62

20:                                               ; preds = %15
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %23 = call i32 @rdev_stop_p2p_device(%struct.cfg80211_registered_device* %21, %struct.wireless_dev* %22)
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %20
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %38, align 8
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %41 = icmp eq %struct.wireless_dev* %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %44 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %42
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %61 = call i32 @___cfg80211_scan_done(%struct.cfg80211_registered_device* %60, i32 0)
  br label %62

62:                                               ; preds = %14, %19, %59, %34, %20
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wdev_running(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_stop_p2p_device(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @___cfg80211_scan_done(%struct.cfg80211_registered_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

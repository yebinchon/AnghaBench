; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c_cfg80211_ibss_joined.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c_cfg80211_ibss_joined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_channel*, i32 }

@EVENT_IBSS_JOINED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_ibss_joined(%struct.net_device* %0, i32* %1, %struct.ieee80211_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.cfg80211_event*, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %15, %struct.wireless_dev** %9, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %23 = call i32 @trace_cfg80211_ibss_joined(%struct.net_device* %20, i32* %21, %struct.ieee80211_channel* %22)
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %25 = icmp ne %struct.ieee80211_channel* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %69

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.cfg80211_event* @kzalloc(i32 32, i32 %32)
  store %struct.cfg80211_event* %33, %struct.cfg80211_event** %11, align 8
  %34 = load %struct.cfg80211_event*, %struct.cfg80211_event** %11, align 8
  %35 = icmp ne %struct.cfg80211_event* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %69

37:                                               ; preds = %31
  %38 = load i32, i32* @EVENT_IBSS_JOINED, align 4
  %39 = load %struct.cfg80211_event*, %struct.cfg80211_event** %11, align 8
  %40 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cfg80211_event*, %struct.cfg80211_event** %11, align 8
  %42 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %49 = load %struct.cfg80211_event*, %struct.cfg80211_event** %11, align 8
  %50 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %51, align 8
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.cfg80211_event*, %struct.cfg80211_event** %11, align 8
  %57 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %56, i32 0, i32 0
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* @cfg80211_wq, align 4
  %66 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %67 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %66, i32 0, i32 0
  %68 = call i32 @queue_work(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %37, %36, %30
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @trace_cfg80211_ibss_joined(%struct.net_device*, i32*, %struct.ieee80211_channel*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

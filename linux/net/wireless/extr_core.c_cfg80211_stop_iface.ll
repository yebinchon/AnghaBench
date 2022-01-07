; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_stop_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_stop_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, i32 }

@EVENT_STOPPED = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_stop_iface(%struct.wiphy* %0, %struct.wireless_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.cfg80211_event*, align 8
  %9 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %10)
  store %struct.cfg80211_registered_device* %11, %struct.cfg80211_registered_device** %7, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %14 = call i32 @trace_cfg80211_stop_iface(%struct.wiphy* %12, %struct.wireless_dev* %13)
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.cfg80211_event* @kzalloc(i32 8, i32 %15)
  store %struct.cfg80211_event* %16, %struct.cfg80211_event** %8, align 8
  %17 = load %struct.cfg80211_event*, %struct.cfg80211_event** %8, align 8
  %18 = icmp ne %struct.cfg80211_event* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %41

20:                                               ; preds = %3
  %21 = load i32, i32* @EVENT_STOPPED, align 4
  %22 = load %struct.cfg80211_event*, %struct.cfg80211_event** %8, align 8
  %23 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.cfg80211_event*, %struct.cfg80211_event** %8, align 8
  %29 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %28, i32 0, i32 0
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* @cfg80211_wq, align 4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = call i32 @queue_work(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_stop_iface(%struct.wiphy*, %struct.wireless_dev*) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

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

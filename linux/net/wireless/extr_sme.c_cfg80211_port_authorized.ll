; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_port_authorized.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_port_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EVENT_PORT_AUTHORIZED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_port_authorized(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.cfg80211_event*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %7, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.cfg80211_event* @kzalloc(i32 12, i32 %26)
  store %struct.cfg80211_event* %27, %struct.cfg80211_event** %9, align 8
  %28 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %29 = icmp ne %struct.cfg80211_event* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %59

31:                                               ; preds = %25
  %32 = load i32, i32* @EVENT_PORT_AUTHORIZED, align 4
  %33 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %34 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %36 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %47 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %46, i32 0, i32 0
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @cfg80211_wq, align 4
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %31, %30, %24
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

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

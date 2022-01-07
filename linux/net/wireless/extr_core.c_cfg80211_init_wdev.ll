; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_init_wdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_init_wdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@cfg80211_pmsr_free_wk = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_INTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_init_wdev(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %5 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %6 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %5, i32 0, i32 9
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %9 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %8, i32 0, i32 8
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 7
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 6
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 5
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 3
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 2
  %28 = load i32, i32* @cfg80211_pmsr_free_wk, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %2
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %2
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 0
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @list_add_rcu(i32* %43, i32* %46)
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %54 = load i32, i32* @NL80211_CMD_NEW_INTERFACE, align 4
  %55 = call i32 @nl80211_notify_iface(%struct.cfg80211_registered_device* %52, %struct.wireless_dev* %53, i32 %54)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @nl80211_notify_iface(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

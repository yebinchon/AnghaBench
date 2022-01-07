; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c___cfg80211_unregister_wdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c___cfg80211_unregister_wdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, i32, i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_CMD_DEL_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wireless_dev*, i32)* @__cfg80211_unregister_wdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfg80211_unregister_wdev(%struct.wireless_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %8)
  store %struct.cfg80211_registered_device* %9, %struct.cfg80211_registered_device** %5, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 5
  %13 = call i32 @flush_work(i32* %12)
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %16 = load i32, i32* @NL80211_CMD_DEL_INTERFACE, align 4
  %17 = call i32 @nl80211_notify_iface(%struct.cfg80211_registered_device* %14, %struct.wireless_dev* %15, i32 %16)
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 4
  %20 = call i32 @list_del_rcu(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @synchronize_rcu()
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %31 = call i32 @cfg80211_mlme_purge_registrations(%struct.wireless_dev* %30)
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %43 [
    i32 128, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %25
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %38 = call i32 @cfg80211_stop_p2p_device(%struct.cfg80211_registered_device* %36, %struct.wireless_dev* %37)
  br label %44

39:                                               ; preds = %25
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %42 = call i32 @cfg80211_stop_nan(%struct.cfg80211_registered_device* %40, %struct.wireless_dev* %41)
  br label %44

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %39, %35
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 1
  %52 = call i32 @flush_work(i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %55 = call i32 @cfg80211_cqm_config_free(%struct.wireless_dev* %54)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @nl80211_notify_iface(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @cfg80211_mlme_purge_registrations(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_stop_p2p_device(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_stop_nan(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_cqm_config_free(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

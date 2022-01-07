; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_sme_scan_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_sme_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.cfg80211_bss = type { i32 }

@CFG80211_CONN_SCANNING = common dso_local global i64 0, align 8
@CFG80211_CONN_SCAN_AGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__cfg80211_sme_scan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfg80211_sme_scan_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  store %struct.wireless_dev* %8, %struct.wireless_dev** %3, align 8
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %11)
  store %struct.cfg80211_registered_device* %12, %struct.cfg80211_registered_device** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CFG80211_CONN_SCANNING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CFG80211_CONN_SCAN_AGAIN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %51

37:                                               ; preds = %28, %20
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %39 = call %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev* %38)
  store %struct.cfg80211_bss* %39, %struct.cfg80211_bss** %5, align 8
  %40 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %41 = icmp ne %struct.cfg80211_bss* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %43, i32 0, i32 1
  %45 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %46 = call i32 @cfg80211_put_bss(i32* %44, %struct.cfg80211_bss* %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  br label %51

51:                                               ; preds = %19, %36, %47, %42
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_put_bss(i32*, %struct.cfg80211_bss*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

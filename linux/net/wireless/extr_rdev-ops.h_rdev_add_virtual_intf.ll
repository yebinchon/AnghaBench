; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_add_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_add_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wireless_dev* (i32*, i8*, i8, i32, %struct.vif_params*)* }
%struct.vif_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.cfg80211_registered_device*, i8*, i8, i32, %struct.vif_params*)* @rdev_add_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @rdev_add_virtual_intf(%struct.cfg80211_registered_device* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.vif_params*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store %struct.vif_params* %4, %struct.vif_params** %10, align 8
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %12, i32 0, i32 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @trace_rdev_add_virtual_intf(i32* %13, i8* %14, i32 %15)
  %17 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %18 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.wireless_dev* (i32*, i8*, i8, i32, %struct.vif_params*)*, %struct.wireless_dev* (i32*, i8*, i8, i32, %struct.vif_params*)** %20, align 8
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %8, align 1
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.vif_params*, %struct.vif_params** %10, align 8
  %28 = call %struct.wireless_dev* %21(i32* %23, i8* %24, i8 zeroext %25, i32 %26, %struct.vif_params* %27)
  store %struct.wireless_dev* %28, %struct.wireless_dev** %11, align 8
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 0
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %32 = call i32 @trace_rdev_return_wdev(i32* %30, %struct.wireless_dev* %31)
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  ret %struct.wireless_dev* %33
}

declare dso_local i32 @trace_rdev_add_virtual_intf(i32*, i8*, i32) #1

declare dso_local i32 @trace_rdev_return_wdev(i32*, %struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

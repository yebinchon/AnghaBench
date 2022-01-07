; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.net_device*, %struct.cfg80211_sched_scan_request*)* }
%struct.net_device = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_sched_scan_request*)* @rdev_sched_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_sched_scan_start(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_sched_scan_request* %2) #0 {
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %7 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %6, align 8
  %8 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %12 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_rdev_sched_scan_start(i32* %9, %struct.net_device* %10, i32 %13)
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32*, %struct.net_device*, %struct.cfg80211_sched_scan_request*)*, i32 (i32*, %struct.net_device*, %struct.cfg80211_sched_scan_request*)** %18, align 8
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %24 = call i32 %19(i32* %21, %struct.net_device* %22, %struct.cfg80211_sched_scan_request* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @trace_rdev_return_int(i32* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @trace_rdev_sched_scan_start(i32*, %struct.net_device*, i32) #1

declare dso_local i32 @trace_rdev_return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

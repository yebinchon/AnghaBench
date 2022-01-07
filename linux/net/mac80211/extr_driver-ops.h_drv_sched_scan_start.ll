; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }
%struct.ieee80211_scan_ies = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)* @drv_sched_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_sched_scan_start(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.cfg80211_sched_scan_request* %2, %struct.ieee80211_scan_ies* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %9 = alloca %struct.ieee80211_scan_ies*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %8, align 8
  store %struct.ieee80211_scan_ies* %3, %struct.ieee80211_scan_ies** %9, align 8
  %11 = call i32 (...) @might_sleep()
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %21 = call i32 @trace_drv_sched_scan_start(%struct.ieee80211_local* %19, %struct.ieee80211_sub_if_data* %20)
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32*, i32*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)*, i32 (i32*, i32*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)** %25, align 8
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %32 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %9, align 8
  %33 = call i32 %26(i32* %28, i32* %30, %struct.cfg80211_sched_scan_request* %31, %struct.ieee80211_scan_ies* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %18, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_sched_scan_start(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

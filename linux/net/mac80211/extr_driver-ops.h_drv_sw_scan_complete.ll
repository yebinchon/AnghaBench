; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sw_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sw_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*)* }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*)* @drv_sw_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_sw_scan_complete(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %4, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %8 = call i32 @trace_drv_sw_scan_complete(%struct.ieee80211_local* %6, %struct.ieee80211_sub_if_data* %7)
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %12, align 8
  %14 = icmp ne i32 (i32*, i32*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %19, align 8
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = call i32 %20(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %28 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %27)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @trace_drv_sw_scan_complete(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

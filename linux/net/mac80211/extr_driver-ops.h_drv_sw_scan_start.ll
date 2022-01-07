; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sw_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sw_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32*)* }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*)* @drv_sw_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_sw_scan_start(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @trace_drv_sw_scan_start(%struct.ieee80211_local* %8, %struct.ieee80211_sub_if_data* %9, i32* %10)
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %15, align 8
  %17 = icmp ne i32 (i32*, i32*, i32*)* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %22, align 8
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 %23(i32* %25, i32* %27, i32* %28)
  br label %30

30:                                               ; preds = %18, %3
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %32 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %31)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @trace_drv_sw_scan_start(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

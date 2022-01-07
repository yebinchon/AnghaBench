; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.ieee80211_sta*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*)* @drv_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_sta_remove(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %9 = call %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data* %8)
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %40

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %18 = call i32 @trace_drv_sta_remove(%struct.ieee80211_local* %15, %struct.ieee80211_sub_if_data* %16, %struct.ieee80211_sta* %17)
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i32*, %struct.ieee80211_sta*)*, i32 (i32*, i32*, %struct.ieee80211_sta*)** %22, align 8
  %24 = icmp ne i32 (i32*, i32*, %struct.ieee80211_sta*)* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32*, i32*, %struct.ieee80211_sta*)*, i32 (i32*, i32*, %struct.ieee80211_sta*)** %29, align 8
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %36 = call i32 %30(i32* %32, i32* %34, %struct.ieee80211_sta* %35)
  br label %37

37:                                               ; preds = %25, %14
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %39 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %38)
  br label %40

40:                                               ; preds = %37, %13
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_sta_remove(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

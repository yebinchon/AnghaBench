; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_start_nan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_start_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_nan_conf*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_nan_conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_nan_conf*)* @drv_start_nan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_start_nan(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.cfg80211_nan_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.cfg80211_nan_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.cfg80211_nan_conf* %2, %struct.cfg80211_nan_conf** %6, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %10 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %9)
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = load %struct.cfg80211_nan_conf*, %struct.cfg80211_nan_conf** %6, align 8
  %14 = call i32 @trace_drv_start_nan(%struct.ieee80211_local* %11, %struct.ieee80211_sub_if_data* %12, %struct.cfg80211_nan_conf* %13)
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32*, i32*, %struct.cfg80211_nan_conf*)*, i32 (i32*, i32*, %struct.cfg80211_nan_conf*)** %18, align 8
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 0
  %24 = load %struct.cfg80211_nan_conf*, %struct.cfg80211_nan_conf** %6, align 8
  %25 = call i32 %19(i32* %21, i32* %23, %struct.cfg80211_nan_conf* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_start_nan(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_nan_conf*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.ieee80211_scan_request*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_scan_request = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_scan_request*)* @drv_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_hw_scan(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %9 = call i32 (...) @might_sleep()
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %11 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %19 = call i32 @trace_drv_hw_scan(%struct.ieee80211_local* %17, %struct.ieee80211_sub_if_data* %18)
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32*, i32*, %struct.ieee80211_scan_request*)*, i32 (i32*, i32*, %struct.ieee80211_scan_request*)** %23, align 8
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %30 = call i32 %24(i32* %26, i32* %28, %struct.ieee80211_scan_request* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_hw_scan(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

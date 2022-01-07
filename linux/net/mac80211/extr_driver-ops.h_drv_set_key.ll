; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i32*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @drv_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_set_key(%struct.ieee80211_local* %0, i32 %1, %struct.ieee80211_sub_if_data* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_sub_if_data* %2, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %13 = call i32 (...) @might_sleep()
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %15 = call %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data* %14)
  store %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_sub_if_data** %9, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %17 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %46

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %28 = call i32 @trace_drv_set_key(%struct.ieee80211_local* %23, i32 %24, %struct.ieee80211_sub_if_data* %25, %struct.ieee80211_sta* %26, %struct.ieee80211_key_conf* %27)
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32*, i32, i32*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)*, i32 (i32*, i32, i32*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)** %32, align 8
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %41 = call i32 %33(i32* %35, i32 %36, i32* %38, %struct.ieee80211_sta* %39, %struct.ieee80211_key_conf* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %22, %19
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @get_bss_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_set_key(%struct.ieee80211_local*, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

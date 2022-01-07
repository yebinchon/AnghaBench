; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.c_drv_offset_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.c_drv_offset_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32)* }
%struct.ieee80211_sub_if_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drv_offset_tsf(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %9 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %38

12:                                               ; preds = %3
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @trace_drv_offset_tsf(%struct.ieee80211_local* %13, %struct.ieee80211_sub_if_data* %14, i32 %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %20, align 8
  %22 = icmp ne i32 (i32*, i32*, i32)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %27, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 %28(i32* %30, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %23, %12
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %37 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %36)
  br label %38

38:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_offset_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

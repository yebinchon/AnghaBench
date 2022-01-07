; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_add_nan_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_add_nan_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_nan_func*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_nan_func = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_nan_func*)* @drv_add_nan_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_add_nan_func(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.cfg80211_nan_func* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.cfg80211_nan_func*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.cfg80211_nan_func* %2, %struct.cfg80211_nan_func** %7, align 8
  %9 = call i32 (...) @might_sleep()
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %11 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %10)
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32*, i32*, %struct.cfg80211_nan_func*)*, i32 (i32*, i32*, %struct.cfg80211_nan_func*)** %15, align 8
  %17 = icmp ne i32 (i32*, i32*, %struct.cfg80211_nan_func*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %24 = load %struct.cfg80211_nan_func*, %struct.cfg80211_nan_func** %7, align 8
  %25 = call i32 @trace_drv_add_nan_func(%struct.ieee80211_local* %22, %struct.ieee80211_sub_if_data* %23, %struct.cfg80211_nan_func* %24)
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32*, i32*, %struct.cfg80211_nan_func*)*, i32 (i32*, i32*, %struct.cfg80211_nan_func*)** %29, align 8
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = load %struct.cfg80211_nan_func*, %struct.cfg80211_nan_func** %7, align 8
  %36 = call i32 %30(i32* %32, i32* %34, %struct.cfg80211_nan_func* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_add_nan_func(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_nan_func*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

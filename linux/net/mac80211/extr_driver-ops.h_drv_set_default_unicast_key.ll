; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_set_default_unicast_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_set_default_unicast_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32)* }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32)* @drv_set_default_unicast_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_set_default_unicast_key(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %8 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %46

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, -1
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 3
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ true, %11 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @trace_drv_set_default_unicast_key(%struct.ieee80211_local* %21, %struct.ieee80211_sub_if_data* %22, i32 %23)
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %28, align 8
  %30 = icmp ne i32 (i32*, i32*, i32)* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %35, align 8
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 %36(i32* %38, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %17
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %45 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %44)
  br label %46

46:                                               ; preds = %43, %10
  ret void
}

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_drv_set_default_unicast_key(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

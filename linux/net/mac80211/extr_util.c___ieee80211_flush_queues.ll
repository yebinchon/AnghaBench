; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c___ieee80211_flush_queues.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c___ieee80211_flush_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_QUEUE_STOP_REASON_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ieee80211_flush_queues(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %45

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = load i32, i32* @QUEUE_CONTROL, align 4
  %23 = call i32 @ieee80211_hw_check(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19, %16
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = call i32 @ieee80211_get_vif_queues(%struct.ieee80211_local* %26, %struct.ieee80211_sub_if_data* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_FLUSH, align 4
  %34 = call i32 @ieee80211_stop_queues_by_reason(i32* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @drv_flush(%struct.ieee80211_local* %35, %struct.ieee80211_sub_if_data* %36, i32 %37, i32 %38)
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_FLUSH, align 4
  %44 = call i32 @ieee80211_wake_queues_by_reason(i32* %41, i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %29, %15
  ret void
}

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ieee80211_get_vif_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_stop_queues_by_reason(i32*, i32, i32, i32) #1

declare dso_local i32 @drv_flush(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues_by_reason(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

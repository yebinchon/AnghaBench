; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_wake_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_wake_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (i32*, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32 }
%struct.txq_info = type { %struct.TYPE_4__ }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.txq_info*)* @drv_wake_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_wake_tx_queue(%struct.ieee80211_local* %0, %struct.txq_info* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.txq_info*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.txq_info* %1, %struct.txq_info** %4, align 8
  %6 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %7 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(i32 %9)
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %18 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %36

21:                                               ; preds = %16
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %24 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %25 = call i32 @trace_drv_wake_tx_queue(%struct.ieee80211_local* %22, %struct.ieee80211_sub_if_data* %23, %struct.txq_info* %24)
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (i32*, %struct.TYPE_4__*)*, i32 (i32*, %struct.TYPE_4__*)** %29, align 8
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %34 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %33, i32 0, i32 0
  %35 = call i32 %30(i32* %32, %struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %21, %20, %15
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(i32) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_wake_tx_queue(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.txq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

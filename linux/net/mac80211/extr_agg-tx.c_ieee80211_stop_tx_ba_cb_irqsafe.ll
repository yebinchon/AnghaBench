; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_stop_tx_ba_cb_irqsafe.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_stop_tx_ba_cb_irqsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tid_ampdu_tx = type { i32 }

@HT_AGG_STATE_STOP_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.tid_ampdu_tx*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %8, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @trace_api_stop_tx_ba_cb(%struct.ieee80211_sub_if_data* %16, i32* %17, i32 %18)
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.tid_ampdu_tx* @ieee80211_lookup_tid_tx(%struct.ieee80211_sub_if_data* %21, i32* %22, i32 %23, %struct.sta_info** %9)
  store %struct.tid_ampdu_tx* %24, %struct.tid_ampdu_tx** %10, align 8
  %25 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %26 = icmp ne %struct.tid_ampdu_tx* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* @HT_AGG_STATE_STOP_CB, align 4
  %30 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %31 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 0
  %35 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @ieee80211_queue_work(i32* %34, i32* %37)
  br label %39

39:                                               ; preds = %28, %27
  %40 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @trace_api_stop_tx_ba_cb(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tid_ampdu_tx* @ieee80211_lookup_tid_tx(%struct.ieee80211_sub_if_data*, i32*, i32, %struct.sta_info**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

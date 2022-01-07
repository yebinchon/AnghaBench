; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_agg_tx_operational.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_agg_tx_operational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tid_ampdu_tx = type { i32, i32, i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }

@IEEE80211_AMPDU_TX_OPERATIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Aggregation is on for %pM tid %d\0A\00", align 1
@HT_AGG_STATE_OPERATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sta_info*, i32)* @ieee80211_agg_tx_operational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_agg_tx_operational(%struct.ieee80211_local* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tid_ampdu_tx*, align 8
  %8 = alloca %struct.ieee80211_ampdu_params, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 5
  %16 = load i32, i32* @IEEE80211_AMPDU_TX_OPERATIONAL, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 6
  %18 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 2
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %17, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %24, i32 %25)
  store %struct.tid_ampdu_tx* %26, %struct.tid_ampdu_tx** %7, align 8
  %27 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %28 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %32 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ht_dbg(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %45 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @drv_ampdu_action(%struct.ieee80211_local* %44, i32 %47, %struct.ieee80211_ampdu_params* %8)
  %49 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ieee80211_agg_splice_packets(i32 %54, %struct.tid_ampdu_tx* %55, i32 %56)
  %58 = load i32, i32* @HT_AGG_STATE_OPERATIONAL, align 4
  %59 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %60 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ieee80211_agg_splice_finish(i32 %64, i32 %65)
  %67 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_bh(i32* %68)
  %70 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ieee80211_agg_start_txq(%struct.sta_info* %70, i32 %71, i32 1)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @drv_ampdu_action(%struct.ieee80211_local*, i32, %struct.ieee80211_ampdu_params*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ieee80211_agg_splice_packets(i32, %struct.tid_ampdu_tx*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_agg_splice_finish(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_agg_start_txq(%struct.sta_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

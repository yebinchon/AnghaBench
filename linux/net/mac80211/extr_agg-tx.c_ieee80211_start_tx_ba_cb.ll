; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_start_tx_ba_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_start_tx_ba_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.tid_ampdu_tx = type { i32 }

@HT_AGG_STATE_DRV_READY = common dso_local global i32 0, align 4
@HT_AGG_STATE_RESPONSE_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_tx_ba_cb(%struct.sta_info* %0, i32 %1, %struct.tid_ampdu_tx* %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tid_ampdu_tx*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tid_ampdu_tx* %2, %struct.tid_ampdu_tx** %6, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %7, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %8, align 8
  %15 = load i32, i32* @HT_AGG_STATE_DRV_READY, align 4
  %16 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %17 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %16, i32 0, i32 0
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* @HT_AGG_STATE_RESPONSE_RECEIVED, align 4
  %24 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %25 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local* %29, %struct.sta_info* %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %28, %22
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

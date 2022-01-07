; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_stop_tx_ba_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_stop_tx_ba_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__, i32, %struct.ieee80211_sub_if_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_tx = type { i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Stopping Tx BA session for %pM tid %d\0A\00", align 1
@HT_AGG_STATE_STOPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"unexpected callback to A-MPDU stop for %pM tid %d\0A\00", align 1
@WLAN_BACK_INITIATOR = common dso_local global i64 0, align 8
@WLAN_REASON_QSTA_NOT_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_tx_ba_cb(%struct.sta_info* %0, i32 %1, %struct.tid_ampdu_tx* %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tid_ampdu_tx*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tid_ampdu_tx* %2, %struct.tid_ampdu_tx** %6, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 2
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ht_dbg(%struct.ieee80211_sub_if_data* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load i32, i32* @HT_AGG_STATE_STOPPING, align 4
  %23 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %24 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %23, i32 0, i32 2
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ht_dbg(%struct.ieee80211_sub_if_data* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %51

35:                                               ; preds = %3
  %36 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %37 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WLAN_BACK_INITIATOR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %43 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %41, %35
  %48 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ieee80211_remove_tid_tx(%struct.sta_info* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %27
  %52 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i64, i64* @WLAN_BACK_INITIATOR, align 8
  %65 = load i32, i32* @WLAN_REASON_QSTA_NOT_USE, align 4
  %66 = call i32 @ieee80211_send_delba(%struct.ieee80211_sub_if_data* %58, i32 %62, i32 %63, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %51
  ret void
}

declare dso_local i32 @ht_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_remove_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_send_delba(%struct.ieee80211_sub_if_data*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

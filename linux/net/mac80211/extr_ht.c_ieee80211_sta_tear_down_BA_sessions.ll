; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_sta_tear_down_BA_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_sta_tear_down_BA_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tid_ampdu_tx = type { i32 }

@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@WLAN_BACK_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_REASON_QSTA_LEAVE_QBSS = common dso_local global i32 0, align 4
@AGG_STOP_DESTROY_STA = common dso_local global i32 0, align 4
@AGG_STOP_PEER_REQUEST = common dso_local global i32 0, align 4
@HT_AGG_STATE_STOP_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_tear_down_BA_sessions(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tid_ampdu_tx*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WLAN_BACK_RECIPIENT, align 4
  %19 = load i32, i32* @WLAN_REASON_QSTA_LEAVE_QBSS, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AGG_STOP_DESTROY_STA, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AGG_STOP_PEER_REQUEST, align 4
  %26 = icmp ne i32 %24, %25
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i1 [ false, %15 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @___ieee80211_stop_rx_ba_session(%struct.sta_info* %16, i32 %17, i32 %18, i32 %19, i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %11

34:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %44, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %35

47:                                               ; preds = %35
  %48 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @AGG_STOP_DESTROY_STA, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %47
  %56 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @cancel_work_sync(i32* %58)
  %60 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %87, %55
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %69, i32 %70)
  store %struct.tid_ampdu_tx* %71, %struct.tid_ampdu_tx** %6, align 8
  %72 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %73 = icmp ne %struct.tid_ampdu_tx* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %87

75:                                               ; preds = %68
  %76 = load i32, i32* @HT_AGG_STATE_STOP_CB, align 4
  %77 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %78 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %77, i32 0, i32 0
  %79 = call i64 @test_and_clear_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %6, align 8
  %85 = call i32 @ieee80211_stop_tx_ba_cb(%struct.sta_info* %82, i32 %83, %struct.tid_ampdu_tx* %84)
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %64

90:                                               ; preds = %64
  %91 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %90, %47
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @___ieee80211_stop_rx_ba_session(%struct.sta_info*, i32, i32, i32, i32) #1

declare dso_local i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb(%struct.sta_info*, i32, %struct.tid_ampdu_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c____ieee80211_stop_rx_ba_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c____ieee80211_stop_rx_ba_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.ieee80211_local = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_ampdu_params = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }

@IEEE80211_AMPDU_RX_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Rx BA session stop requested for %pM tid %u %s reason: %d\0A\00", align 1
@WLAN_BACK_RECIPIENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"recipient\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"initiator\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"HW problem - can not stop rx aggregation for %pM tid %d\0A\00", align 1
@ieee80211_free_tid_rx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @___ieee80211_stop_rx_ba_session(%struct.sta_info* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.tid_ampdu_rx*, align 8
  %13 = alloca %struct.ieee80211_ampdu_params, align 8
  store %struct.sta_info* %0, %struct.sta_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 3
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  store %struct.ieee80211_local* %16, %struct.ieee80211_local** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 4
  %23 = load i32, i32* @IEEE80211_AMPDU_RX_STOP, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %13, i32 0, i32 5
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %24, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = call i32 @lockdep_is_held(i32* %40)
  %42 = call %struct.tid_ampdu_rx* @rcu_dereference_protected(i32 %37, i32 %41)
  store %struct.tid_ampdu_rx* %42, %struct.tid_ampdu_rx** %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @test_bit(i64 %43, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %5
  br label %140

51:                                               ; preds = %5
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RCU_INIT_POINTER(i32 %58, i32* null)
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @__clear_bit(i64 %60, i32 %64)
  %66 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @WLAN_BACK_RECIPIENT, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ht_dbg(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %73, i8* %78, i32 %80)
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %83 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %84 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @drv_ampdu_action(%struct.ieee80211_local* %82, i32 %85, %struct.ieee80211_ampdu_params* %13)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %51
  %89 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @sdata_info(i32 %91, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %95, i64 %96)
  br label %98

98:                                               ; preds = %88, %51
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @WLAN_BACK_RECIPIENT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %107 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @WLAN_BACK_RECIPIENT, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @ieee80211_send_delba(i32 %108, i32 %112, i64 %113, i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %105, %102, %98
  %118 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %119 = icmp ne %struct.tid_ampdu_rx* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  br label %140

121:                                              ; preds = %117
  %122 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %123 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %122, i32 0, i32 4
  %124 = call i32 @del_timer_sync(i32* %123)
  %125 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %126 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %125, i32 0, i32 3
  %127 = call i32 @spin_lock_bh(i32* %126)
  %128 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %129 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %128, i32 0, i32 0
  store i32 1, i32* %129, align 4
  %130 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %131 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %130, i32 0, i32 3
  %132 = call i32 @spin_unlock_bh(i32* %131)
  %133 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %134 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %133, i32 0, i32 2
  %135 = call i32 @del_timer_sync(i32* %134)
  %136 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %137 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %136, i32 0, i32 1
  %138 = load i32, i32* @ieee80211_free_tid_rx, align 4
  %139 = call i32 @call_rcu(i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %121, %120, %50
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i64, i8*, i32) #1

declare dso_local i64 @drv_ampdu_action(%struct.ieee80211_local*, i32, %struct.ieee80211_ampdu_params*) #1

declare dso_local i32 @sdata_info(i32, i8*, i32, i64) #1

declare dso_local i32 @ieee80211_send_delba(i32, i32, i64, i64, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_process_addba_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_process_addba_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sta_info = type { %struct.TYPE_15__, %struct.TYPE_10__, i32 }
%struct.TYPE_15__ = type { i32, i64* }
%struct.TYPE_10__ = type { i32, %struct.ieee80211_txq** }
%struct.ieee80211_txq = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.tid_ampdu_tx = type { i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@IEEE80211_ADDBA_PARAM_AMSDU_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@IEEE80211_TXQ_NO_AMSDU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wrong addBA response token, %pM tid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"switched off addBA timer for %pM tid %d\0A\00", align 1
@HT_AGG_STATE_WANT_STOP = common dso_local global i32 0, align 4
@HT_AGG_STATE_STOPPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"got addBA resp for %pM tid %d but we already gave up\0A\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@HT_AGG_STATE_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@HT_AGG_STATE_DRV_READY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AGG_STOP_DECLINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_process_addba_resp(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.ieee80211_mgmt* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tid_ampdu_tx*, align 8
  %10 = alloca %struct.ieee80211_txq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @IEEE80211_ADDBA_PARAM_AMSDU_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 6
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @min(i32 %35, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %44, i64 %46
  %48 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %47, align 8
  store %struct.ieee80211_txq* %48, %struct.ieee80211_txq** %10, align 8
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %4
  %52 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %53 = icmp ne %struct.ieee80211_txq* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @IEEE80211_TXQ_NO_AMSDU, align 4
  %56 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %57 = call %struct.TYPE_16__* @to_txq_info(%struct.ieee80211_txq* %56)
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %55, i32* %58)
  br label %60

60:                                               ; preds = %54, %51, %4
  %61 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %65, i32 %66)
  store %struct.tid_ampdu_tx* %67, %struct.tid_ampdu_tx** %9, align 8
  %68 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %69 = icmp ne %struct.tid_ampdu_tx* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %205

71:                                               ; preds = %60
  %72 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %80 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %71
  %84 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @ht_dbg(i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  br label %205

93:                                               ; preds = %71
  %94 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %95 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %94, i32 0, i32 7
  %96 = call i32 @del_timer_sync(i32* %95)
  %97 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %101 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @ht_dbg(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @HT_AGG_STATE_WANT_STOP, align 4
  %107 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %108 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %107, i32 0, i32 6
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %93
  %112 = load i32, i32* @HT_AGG_STATE_STOPPING, align 4
  %113 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %114 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %113, i32 0, i32 6
  %115 = call i64 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111, %93
  %118 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @ht_dbg(i32 %120, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  br label %205

127:                                              ; preds = %111
  %128 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @le16_to_cpu(i32 %134)
  %136 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %199

138:                                              ; preds = %127
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %199

141:                                              ; preds = %138
  %142 = load i32, i32* @HT_AGG_STATE_RESPONSE_RECEIVED, align 4
  %143 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %144 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %143, i32 0, i32 6
  %145 = call i64 @test_and_set_bit(i32 %142, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %205

148:                                              ; preds = %141
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %151 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %154 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @HT_AGG_STATE_DRV_READY, align 4
  %156 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %157 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %156, i32 0, i32 6
  %158 = call i64 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %148
  %161 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %162 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local* %161, %struct.sta_info* %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %148
  %166 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %167 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  store i64 0, i64* %172, align 8
  %173 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @le16_to_cpu(i32 %179)
  %181 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %182 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %181, i32 0, i32 4
  store i64 %180, i64* %182, align 8
  %183 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %184 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %165
  %188 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %189 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %188, i32 0, i32 5
  %190 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %191 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @TU_TO_EXP_TIME(i64 %192)
  %194 = call i32 @mod_timer(i32* %189, i32 %193)
  %195 = load i32, i32* @jiffies, align 4
  %196 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %197 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %187, %165
  br label %204

199:                                              ; preds = %138, %127
  %200 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @AGG_STOP_DECLINED, align 4
  %203 = call i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %198
  br label %205

205:                                              ; preds = %204, %147, %117, %83, %70
  %206 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %207 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = call i32 @mutex_unlock(i32* %208)
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @to_txq_info(%struct.ieee80211_txq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local*, %struct.sta_info*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @TU_TO_EXP_TIME(i64) #1

declare dso_local i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c____ieee80211_start_rx_ba_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c____ieee80211_start_rx_ba_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64*, i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_addba_ext_ie = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sta_info*, i64, i64, %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx*, i32, i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__* }

@IEEE80211_AMPDU_RX_START = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_STATUS_REQUEST_DECLINED = common dso_local global i32 0, align 4
@IEEE80211_FIRST_TSPEC_TSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"STA %pM requests BA session on unsupported tid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"STA %pM erroneously requests BA session on tid %d w/o QoS\0A\00", align 1
@WLAN_STA_BLOCK_BA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Suspend in progress - Denying ADDBA request (%pM tid %d)\0A\00", align 1
@IEEE80211_MAX_AMPDU_BUF = common dso_local global i32 0, align 4
@IEEE80211_MAX_AMPDU_BUF_HT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DELAY_BA = common dso_local global i32 0, align 4
@WLAN_STATUS_INVALID_QOS_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"AddBA Req with bad params from %pM on tid %u. policy %d, buffer size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"AddBA Req buf_size=%d for %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"updated AddBA Req from %pM on tid %u\0A\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"unexpected AddBA Req from %pM on tid %u\0A\00", align 1
@WLAN_BACK_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_QOS = common dso_local global i32 0, align 4
@SUPPORTS_REORDERING_BUFFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Rx A-MPDU request on %pM tid %d result %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@sta_rx_agg_session_timer_expired = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@sta_rx_agg_reorder_timer_expired = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @___ieee80211_start_rx_ba_session(%struct.sta_info* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.ieee80211_addba_ext_ie* %9) #0 {
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ieee80211_addba_ext_ie*, align 8
  %21 = alloca %struct.ieee80211_local*, align 8
  %22 = alloca %struct.tid_ampdu_rx*, align 8
  %23 = alloca %struct.ieee80211_ampdu_params, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.tid_ampdu_rx*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.ieee80211_addba_ext_ie* %9, %struct.ieee80211_addba_ext_ie** %20, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %32, align 8
  store %struct.ieee80211_local* %33, %struct.ieee80211_local** %21, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 0
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 2
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 3
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 5
  %43 = load i32, i32* @IEEE80211_AMPDU_RX_START, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 6
  %45 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %44, align 8
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %25, align 4
  %49 = load i32, i32* @WLAN_STATUS_REQUEST_DECLINED, align 4
  store i32 %49, i32* %26, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @IEEE80211_FIRST_TSPEC_TSID, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %10
  %54 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg(%struct.TYPE_12__* %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %409

63:                                               ; preds = %10
  %64 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg(%struct.TYPE_12__* %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  br label %409

80:                                               ; preds = %63
  %81 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %82 = load i32, i32* @WLAN_STA_BLOCK_BA, align 4
  %83 = call i64 @test_sta_flag(%struct.sta_info* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 2
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg(%struct.TYPE_12__* %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  br label %409

95:                                               ; preds = %80
  %96 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %97 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @IEEE80211_MAX_AMPDU_BUF, align 4
  store i32 %103, i32* %27, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @IEEE80211_MAX_AMPDU_BUF_HT, align 4
  store i32 %105, i32* %27, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IEEE80211_HT_CAP_DELAY_BA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109, %106
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %27, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118, %109
  %123 = load i32, i32* @WLAN_STATUS_INVALID_QOS_PARAM, align 4
  store i32 %123, i32* %26, align 4
  %124 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %125 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %124, i32 0, i32 2
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg_ratelimited(%struct.TYPE_12__* %126, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %131, i32 %132, i32 %133)
  br label %409

135:                                              ; preds = %118
  %136 = load i32, i32* %17, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %27, align 4
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %143 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %141, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %149 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %147, %140
  %153 = load i32, i32* %17, align 4
  %154 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %23, i32 0, i32 4
  store i32 %153, i32* %154, align 8
  %155 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %156 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %155, i32 0, i32 2
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %160 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg(%struct.TYPE_12__* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %162)
  %164 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %165 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 4
  %167 = call i32 @lockdep_assert_held(i32* %166)
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %170 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @test_bit(i32 %168, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %235

175:                                              ; preds = %152
  %176 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %177 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %12, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %220

186:                                              ; preds = %175
  %187 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %188 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %187, i32 0, i32 2
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %191 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg_ratelimited(%struct.TYPE_12__* %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %193, i32 %194)
  %196 = call i32 (...) @rcu_read_lock()
  %197 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %198 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call %struct.tid_ampdu_rx* @rcu_dereference(i32 %204)
  store %struct.tid_ampdu_rx* %205, %struct.tid_ampdu_rx** %28, align 8
  %206 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %28, align 8
  %207 = icmp ne %struct.tid_ampdu_rx* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %186
  %209 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %28, align 8
  %210 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %215, i32* %26, align 4
  br label %218

216:                                              ; preds = %208, %186
  %217 = load i32, i32* @WLAN_STATUS_REQUEST_DECLINED, align 4
  store i32 %217, i32* %26, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = call i32 (...) @rcu_read_unlock()
  br label %409

220:                                              ; preds = %175
  %221 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %222 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %221, i32 0, i32 2
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %225 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %16, align 4
  %229 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg_ratelimited(%struct.TYPE_12__* %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %227, i32 %228)
  %230 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @WLAN_BACK_RECIPIENT, align 4
  %233 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_QOS, align 4
  %234 = call i32 @___ieee80211_stop_rx_ba_session(%struct.sta_info* %230, i32 %231, i32 %232, i32 %233, i32 0)
  br label %235

235:                                              ; preds = %220, %152
  %236 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  %237 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %236, i32 0, i32 0
  %238 = load i32, i32* @SUPPORTS_REORDERING_BUFFER, align 4
  %239 = call i64 @ieee80211_hw_check(i32* %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %235
  %242 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  %243 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %244 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %243, i32 0, i32 2
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = call i32 @drv_ampdu_action(%struct.ieee80211_local* %242, %struct.TYPE_12__* %245, %struct.ieee80211_ampdu_params* %23)
  store i32 %246, i32* %25, align 4
  %247 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %248 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %247, i32 0, i32 2
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %251 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %25, align 4
  %256 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg(%struct.TYPE_12__* %249, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %25, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %241
  %260 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %260, i32* %26, align 4
  br label %261

261:                                              ; preds = %259, %241
  br label %409

262:                                              ; preds = %235
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call %struct.tid_ampdu_rx* @kzalloc(i32 88, i32 %263)
  store %struct.tid_ampdu_rx* %264, %struct.tid_ampdu_rx** %22, align 8
  %265 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %266 = icmp ne %struct.tid_ampdu_rx* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %262
  br label %409

268:                                              ; preds = %262
  %269 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %270 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %269, i32 0, i32 15
  %271 = call i32 @spin_lock_init(i32* %270)
  %272 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %273 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %272, i32 0, i32 8
  %274 = load i32, i32* @sta_rx_agg_session_timer_expired, align 4
  %275 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %276 = call i32 @timer_setup(i32* %273, i32 %274, i32 %275)
  %277 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %278 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %277, i32 0, i32 14
  %279 = load i32, i32* @sta_rx_agg_reorder_timer_expired, align 4
  %280 = call i32 @timer_setup(i32* %278, i32 %279, i32 0)
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* @GFP_KERNEL, align 4
  %283 = call i8* @kcalloc(i32 %281, i32 4, i32 %282)
  %284 = bitcast i8* %283 to %struct.tid_ampdu_rx*
  %285 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %286 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %285, i32 0, i32 13
  store %struct.tid_ampdu_rx* %284, %struct.tid_ampdu_rx** %286, align 8
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* @GFP_KERNEL, align 4
  %289 = call i8* @kcalloc(i32 %287, i32 8, i32 %288)
  %290 = bitcast i8* %289 to %struct.tid_ampdu_rx*
  %291 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %292 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %291, i32 0, i32 12
  store %struct.tid_ampdu_rx* %290, %struct.tid_ampdu_rx** %292, align 8
  %293 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %294 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %293, i32 0, i32 13
  %295 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %294, align 8
  %296 = icmp ne %struct.tid_ampdu_rx* %295, null
  br i1 %296, label %297, label %302

297:                                              ; preds = %268
  %298 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %299 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %298, i32 0, i32 12
  %300 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %299, align 8
  %301 = icmp ne %struct.tid_ampdu_rx* %300, null
  br i1 %301, label %313, label %302

302:                                              ; preds = %297, %268
  %303 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %304 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %303, i32 0, i32 13
  %305 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %304, align 8
  %306 = call i32 @kfree(%struct.tid_ampdu_rx* %305)
  %307 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %308 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %307, i32 0, i32 12
  %309 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %308, align 8
  %310 = call i32 @kfree(%struct.tid_ampdu_rx* %309)
  %311 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %312 = call i32 @kfree(%struct.tid_ampdu_rx* %311)
  br label %409

313:                                              ; preds = %297
  store i32 0, i32* %24, align 4
  br label %314

314:                                              ; preds = %326, %313
  %315 = load i32, i32* %24, align 4
  %316 = load i32, i32* %17, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %320 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %319, i32 0, i32 13
  %321 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %320, align 8
  %322 = load i32, i32* %24, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %321, i64 %323
  %325 = call i32 @__skb_queue_head_init(%struct.tid_ampdu_rx* %324)
  br label %326

326:                                              ; preds = %318
  %327 = load i32, i32* %24, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %24, align 4
  br label %314

329:                                              ; preds = %314
  %330 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  %331 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %332 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %331, i32 0, i32 2
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %332, align 8
  %334 = call i32 @drv_ampdu_action(%struct.ieee80211_local* %330, %struct.TYPE_12__* %333, %struct.ieee80211_ampdu_params* %23)
  store i32 %334, i32* %25, align 4
  %335 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %336 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %335, i32 0, i32 2
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %339 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %25, align 4
  %344 = call i32 (%struct.TYPE_12__*, i8*, i32, i32, ...) @ht_dbg(%struct.TYPE_12__* %337, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %341, i32 %342, i32 %343)
  %345 = load i32, i32* %25, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %329
  %348 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %349 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %348, i32 0, i32 13
  %350 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %349, align 8
  %351 = call i32 @kfree(%struct.tid_ampdu_rx* %350)
  %352 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %353 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %352, i32 0, i32 12
  %354 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %353, align 8
  %355 = call i32 @kfree(%struct.tid_ampdu_rx* %354)
  %356 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %357 = call i32 @kfree(%struct.tid_ampdu_rx* %356)
  br label %409

358:                                              ; preds = %329
  %359 = load i32, i32* %14, align 4
  %360 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %361 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* %14, align 4
  %363 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %364 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %363, i32 0, i32 2
  store i32 %362, i32* %364, align 8
  %365 = load i32, i32* %17, align 4
  %366 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %367 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %366, i32 0, i32 3
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* %13, align 4
  %369 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %370 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %369, i32 0, i32 0
  store i32 %368, i32* %370, align 8
  %371 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %372 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %371, i32 0, i32 11
  store i64 0, i64* %372, align 8
  %373 = load i32, i32* %19, align 4
  %374 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %375 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %374, i32 0, i32 4
  store i32 %373, i32* %375, align 8
  %376 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %377 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %376, i32 0, i32 5
  store i32 0, i32* %377, align 4
  %378 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %379 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %378, i32 0, i32 10
  store i64 0, i64* %379, align 8
  %380 = load i32, i32* %16, align 4
  %381 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %382 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %381, i32 0, i32 6
  store i32 %380, i32* %382, align 8
  %383 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %384 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %385 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %384, i32 0, i32 9
  store %struct.sta_info* %383, %struct.sta_info** %385, align 8
  %386 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %386, i32* %26, align 4
  %387 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %388 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 3
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %16, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %396 = call i32 @rcu_assign_pointer(i32 %394, %struct.tid_ampdu_rx* %395)
  %397 = load i32, i32* %13, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %358
  %400 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %401 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %400, i32 0, i32 8
  %402 = load i32, i32* %13, align 4
  %403 = call i32 @TU_TO_EXP_TIME(i32 %402)
  %404 = call i32 @mod_timer(i32* %401, i32 %403)
  %405 = load i32, i32* @jiffies, align 4
  %406 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %22, align 8
  %407 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %406, i32 0, i32 7
  store i32 %405, i32* %407, align 4
  br label %408

408:                                              ; preds = %399, %358
  br label %409

409:                                              ; preds = %408, %347, %302, %267, %261, %218, %122, %85, %70, %53
  %410 = load i32, i32* %26, align 4
  %411 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %434

413:                                              ; preds = %409
  %414 = load i32, i32* %16, align 4
  %415 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %416 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @__set_bit(i32 %414, i32 %418)
  %420 = load i32, i32* %16, align 4
  %421 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %422 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @__clear_bit(i32 %420, i32 %424)
  %426 = load i64, i64* %12, align 8
  %427 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %428 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  %430 = load i64*, i64** %429, align 8
  %431 = load i32, i32* %16, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %430, i64 %432
  store i64 %426, i64* %433, align 8
  br label %434

434:                                              ; preds = %413, %409
  %435 = load i32, i32* %18, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %434
  %438 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %439 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %440 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %16, align 4
  %444 = load i64, i64* %12, align 8
  %445 = load i32, i32* %26, align 4
  %446 = load i32, i32* %17, align 4
  %447 = load i32, i32* %13, align 4
  %448 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %20, align 8
  %449 = call i32 @ieee80211_send_addba_resp(%struct.sta_info* %438, i32 %442, i32 %443, i64 %444, i32 %445, i32 1, i32 %446, i32 %447, %struct.ieee80211_addba_ext_ie* %448)
  br label %450

450:                                              ; preds = %437, %434
  ret void
}

declare dso_local i32 @ht_dbg(%struct.TYPE_12__*, i8*, i32, i32, ...) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ht_dbg_ratelimited(%struct.TYPE_12__*, i8*, i32, i32, ...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @___ieee80211_stop_rx_ba_session(%struct.sta_info*, i32, i32, i32, i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @drv_ampdu_action(%struct.ieee80211_local*, %struct.TYPE_12__*, %struct.ieee80211_ampdu_params*) #1

declare dso_local %struct.tid_ampdu_rx* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tid_ampdu_rx*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.tid_ampdu_rx*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tid_ampdu_rx*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @TU_TO_EXP_TIME(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @ieee80211_send_addba_resp(%struct.sta_info*, i32, i32, i64, i32, i32, i32, i32, %struct.ieee80211_addba_ext_ie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

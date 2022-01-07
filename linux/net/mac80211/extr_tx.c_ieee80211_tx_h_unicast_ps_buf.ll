; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_h_unicast_ps_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_h_unicast_ps_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.ieee80211_local*, %struct.sta_info* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_local = type { i64, i32, i32 }
%struct.sta_info = type { %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.sk_buff = type { i32 }

@TX_CONTINUE = common dso_local global i32 0, align 4
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@WLAN_STA_PS_DRIVER = common dso_local global i32 0, align 4
@WLAN_STA_PS_DELIVER = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"STA %pM aid %d: PS buffer for AC %d\0A\00", align 1
@TOTAL_MAX_TX_BUFFER = common dso_local global i64 0, align 8
@STA_MAX_TX_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"STA %pM TX buffer for AC %d full - dropping oldest frame\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@IEEE80211_TX_TEMPORARY_FLAGS = common dso_local global i32 0, align 4
@STA_INFO_CLEANUP_INTERVAL = common dso_local global i64 0, align 8
@TX_QUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"STA %pM in PS mode, but polling/in SP -> send frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*)* @ieee80211_tx_h_unicast_ps_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_h_unicast_ps_buf(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %10 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %10, i32 0, i32 3
  %12 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  store %struct.sta_info* %12, %struct.sta_info** %4, align 8
  %13 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_9__* %15)
  store %struct.ieee80211_tx_info* %16, %struct.ieee80211_tx_info** %5, align 8
  %17 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %6, align 8
  %23 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %23, i32 0, i32 2
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %7, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %27 = icmp ne %struct.sta_info* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %33, i32* %2, align 4
  br label %244

34:                                               ; preds = %1
  %35 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %36 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %37 = call i32 @test_sta_flag(%struct.sta_info* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = load i32, i32* @WLAN_STA_PS_DRIVER, align 4
  %42 = call i32 @test_sta_flag(%struct.sta_info* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %46 = load i32, i32* @WLAN_STA_PS_DELIVER, align 4
  %47 = call i32 @test_sta_flag(%struct.sta_info* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44, %39, %34
  %50 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %49, %44
  %58 = phi i1 [ false, %44 ], [ %56, %49 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %226

62:                                               ; preds = %57
  %63 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = call i32 @skb_get_queue_mapping(%struct.TYPE_9__* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ieee80211_is_mgmt(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %62
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ieee80211_is_bufferable_mmpdu(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %84, i32* %2, align 4
  br label %244

85:                                               ; preds = %72, %62
  %86 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_10__*
  %91 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @ps_dbg(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %98, i32 %99)
  %101 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %102 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %101, i32 0, i32 2
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %102, align 8
  %104 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TOTAL_MAX_TX_BUFFER, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %85
  %109 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %109, i32 0, i32 2
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %110, align 8
  %112 = call i32 @purge_old_ps_buffers(%struct.ieee80211_local* %111)
  br label %113

113:                                              ; preds = %108, %85
  %114 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %115 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %114, i32 0, i32 1
  %116 = call i32 @spin_lock(i32* %115)
  %117 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %118 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %119 = call i32 @test_sta_flag(%struct.sta_info* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %113
  %122 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %123 = load i32, i32* @WLAN_STA_PS_DRIVER, align 4
  %124 = call i32 @test_sta_flag(%struct.sta_info* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %128 = load i32, i32* @WLAN_STA_PS_DELIVER, align 4
  %129 = call i32 @test_sta_flag(%struct.sta_info* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %133 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %132, i32 0, i32 1
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %135, i32* %2, align 4
  br label %244

136:                                              ; preds = %126, %121, %113
  %137 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %138 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i64 @skb_queue_len(i32* %142)
  %144 = load i64, i64* @STA_MAX_TX_BUFFER, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %136
  %147 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %148 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call %struct.sk_buff* @skb_dequeue(i32* %152)
  store %struct.sk_buff* %153, %struct.sk_buff** %9, align 8
  %154 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %158 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @ps_dbg(%struct.TYPE_10__* %156, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %164 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %163, i32 0, i32 2
  %165 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %166 = call i32 @ieee80211_free_txskb(i32* %164, %struct.sk_buff* %165)
  br label %174

167:                                              ; preds = %136
  %168 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %169 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %168, i32 0, i32 2
  %170 = load %struct.ieee80211_local*, %struct.ieee80211_local** %169, align 8
  %171 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %167, %146
  %175 = load i64, i64* @jiffies, align 8
  %176 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %177 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  store i64 %175, i64* %178, align 8
  %179 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %184 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32* %182, i32** %185, align 8
  %186 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %187 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %188 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* @IEEE80211_TX_TEMPORARY_FLAGS, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %194 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %198 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %204 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %203, i32 0, i32 1
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = call i32 @skb_queue_tail(i32* %202, %struct.TYPE_9__* %205)
  %207 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %208 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %207, i32 0, i32 1
  %209 = call i32 @spin_unlock(i32* %208)
  %210 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %211 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %210, i32 0, i32 1
  %212 = call i32 @timer_pending(i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %174
  %215 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %216 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %215, i32 0, i32 1
  %217 = load i64, i64* @jiffies, align 8
  %218 = load i64, i64* @STA_INFO_CLEANUP_INTERVAL, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @round_jiffies(i64 %219)
  %221 = call i32 @mod_timer(i32* %216, i32 %220)
  br label %222

222:                                              ; preds = %214, %174
  %223 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %224 = call i32 @sta_info_recalc_tim(%struct.sta_info* %223)
  %225 = load i32, i32* @TX_QUEUED, align 4
  store i32 %225, i32* %2, align 4
  br label %244

226:                                              ; preds = %57
  %227 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %228 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %229 = call i32 @test_sta_flag(%struct.sta_info* %227, i32 %228)
  %230 = call i64 @unlikely(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %226
  %233 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %234 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %233, i32 0, i32 0
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %237 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @ps_dbg(%struct.TYPE_10__* %235, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %232, %226
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %242, %222, %131, %78, %32
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.TYPE_9__*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_is_bufferable_mmpdu(i32) #1

declare dso_local i32 @ps_dbg(%struct.TYPE_10__*, i8*, i32, ...) #1

declare dso_local i32 @purge_old_ps_buffers(%struct.ieee80211_local*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @sta_info_recalc_tim(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

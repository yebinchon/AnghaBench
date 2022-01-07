; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.ieee80211_tx_data = type { i32, %struct.sta_info*, %struct.sk_buff*, %struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_local* }
%struct.sta_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.sk_buff = type { i64, i64, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.tid_ampdu_tx = type { i32 }

@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@TX_DROP = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NL80211_FRAME_TX = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_INJECTED = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@TX_AMPDU_SETUP_IN_HW = common dso_local global i32 0, align 4
@TX_QUEUED = common dso_local global i32 0, align 4
@IEEE80211_TX_UNICAST = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_DONTFRAG = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@WLAN_STA_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_data*, %struct.sta_info*, %struct.sk_buff*)* @ieee80211_tx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_tx_data* %1, %struct.sta_info* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_tx_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tid_ampdu_tx*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_tx_data* %1, %struct.ieee80211_tx_data** %7, align 8
  store %struct.sta_info* %2, %struct.sta_info** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 4
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %12, align 8
  %21 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %22 = call i32 @memset(%struct.ieee80211_tx_data* %21, i32 0, i32 48)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %24, i32 0, i32 2
  store %struct.sk_buff* %23, %struct.sk_buff** %25, align 8
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %27 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %27, i32 0, i32 5
  store %struct.ieee80211_local* %26, %struct.ieee80211_local** %28, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %30 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %30, i32 0, i32 3
  store %struct.ieee80211_sub_if_data* %29, %struct.ieee80211_sub_if_data** %31, align 8
  %32 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %32, i32 0, i32 4
  %34 = call i32 @__skb_queue_head_init(i32* %33)
  %35 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %44, %struct.ieee80211_hdr** %11, align 8
  %45 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %46 = call i64 @likely(%struct.sta_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %4
  %49 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %50 = call i32 @IS_ERR(%struct.sta_info* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %54 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %54, i32 0, i32 1
  store %struct.sta_info* %53, %struct.sta_info** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %137

57:                                               ; preds = %4
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %57
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @rcu_dereference(i32 %69)
  %71 = bitcast i8* %70 to %struct.sta_info*
  %72 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %72, i32 0, i32 1
  store %struct.sta_info* %71, %struct.sta_info** %73, align 8
  %74 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %74, i32 0, i32 1
  %76 = load %struct.sta_info*, %struct.sta_info** %75, align 8
  %77 = icmp ne %struct.sta_info* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %64
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @TX_DROP, align 4
  store i32 %85, i32* %5, align 4
  br label %298

86:                                               ; preds = %78, %64
  br label %117

87:                                               ; preds = %57
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IEEE80211_TX_INTFL_NL80211_FRAME_TX, align 4
  %92 = load i32, i32* @IEEE80211_TX_CTL_INJECTED, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %87
  %97 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %97, i32 0, i32 3
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %98, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %102, i32 0, i32 2
  %104 = load %struct.sk_buff*, %struct.sk_buff** %103, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %101, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %96, %87
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %110 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %111 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %109, i32 %112)
  %114 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %114, i32 0, i32 1
  store %struct.sta_info* %113, %struct.sta_info** %115, align 8
  br label %116

116:                                              ; preds = %108, %96
  br label %117

117:                                              ; preds = %116, %86
  %118 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %118, i32 0, i32 1
  %120 = load %struct.sta_info*, %struct.sta_info** %119, align 8
  %121 = icmp ne %struct.sta_info* %120, null
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %124 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @is_multicast_ether_addr(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %122
  %129 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %130 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %131 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %129, i32 %132)
  %134 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %134, i32 0, i32 1
  store %struct.sta_info* %133, %struct.sta_info** %135, align 8
  br label %136

136:                                              ; preds = %128, %122, %117
  br label %137

137:                                              ; preds = %136, %56
  %138 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %139 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %138, i32 0, i32 1
  %140 = load %struct.sta_info*, %struct.sta_info** %139, align 8
  %141 = icmp ne %struct.sta_info* %140, null
  br i1 %141, label %142, label %197

142:                                              ; preds = %137
  %143 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ieee80211_is_data_qos(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %142
  %149 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %150 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ieee80211_is_qos_nullfunc(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %197, label %154

154:                                              ; preds = %148
  %155 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %156 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %155, i32 0, i32 0
  %157 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %158 = call i64 @ieee80211_hw_check(%struct.TYPE_14__* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %197

160:                                              ; preds = %154
  %161 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %162 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %161, i32 0, i32 0
  %163 = load i32, i32* @TX_AMPDU_SETUP_IN_HW, align 4
  %164 = call i64 @ieee80211_hw_check(%struct.TYPE_14__* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %197, label %166

166:                                              ; preds = %160
  %167 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %168 = call i32 @ieee80211_get_tid(%struct.ieee80211_hdr* %167)
  store i32 %168, i32* %13, align 4
  %169 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %169, i32 0, i32 1
  %171 = load %struct.sta_info*, %struct.sta_info** %170, align 8
  %172 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @rcu_dereference(i32 %178)
  %180 = bitcast i8* %179 to %struct.tid_ampdu_tx*
  store %struct.tid_ampdu_tx* %180, %struct.tid_ampdu_tx** %14, align 8
  %181 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %14, align 8
  %182 = icmp ne %struct.tid_ampdu_tx* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %166
  %184 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %186 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %187 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %14, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @ieee80211_tx_prep_agg(%struct.ieee80211_tx_data* %184, %struct.sk_buff* %185, %struct.ieee80211_tx_info* %186, %struct.tid_ampdu_tx* %187, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %183
  %194 = load i32, i32* @TX_QUEUED, align 4
  store i32 %194, i32* %5, align 4
  br label %298

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195, %166
  br label %197

197:                                              ; preds = %196, %160, %154, %148, %142, %137
  %198 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %199 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @is_multicast_ether_addr(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load i32, i32* @IEEE80211_TX_UNICAST, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %207 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %211 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %212 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %221

215:                                              ; preds = %197
  %216 = load i32, i32* @IEEE80211_TX_UNICAST, align 4
  %217 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %218 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %203
  %222 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %223 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %262, label %228

228:                                              ; preds = %221
  %229 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %230 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @IEEE80211_TX_UNICAST, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %228
  %236 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @FCS_LEN, align 8
  %240 = add nsw i64 %238, %239
  %241 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %242 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp sle i64 %240, %246
  br i1 %247, label %255, label %248

248:                                              ; preds = %235
  %249 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %250 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248, %235, %228
  %256 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %257 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %258 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %255, %248
  br label %262

262:                                              ; preds = %261, %221
  %263 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %264 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %263, i32 0, i32 1
  %265 = load %struct.sta_info*, %struct.sta_info** %264, align 8
  %266 = icmp ne %struct.sta_info* %265, null
  br i1 %266, label %273, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %269 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %270 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %291

273:                                              ; preds = %262
  %274 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %275 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %274, i32 0, i32 1
  %276 = load %struct.sta_info*, %struct.sta_info** %275, align 8
  %277 = load i32, i32* @WLAN_STA_CLEAR_PS_FILT, align 4
  %278 = call i64 @test_and_clear_sta_flag(%struct.sta_info* %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %273
  %281 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %282 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %283 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %7, align 8
  %287 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %286, i32 0, i32 1
  %288 = load %struct.sta_info*, %struct.sta_info** %287, align 8
  %289 = call i32 @ieee80211_check_fast_xmit(%struct.sta_info* %288)
  br label %290

290:                                              ; preds = %280, %273
  br label %291

291:                                              ; preds = %290, %267
  %292 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %293 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %294 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %291, %193, %84
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_data*, i32, i32) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i64 @likely(%struct.sta_info*) #1

declare dso_local i32 @IS_ERR(%struct.sta_info*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_tx_prep_agg(%struct.ieee80211_tx_data*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.tid_ampdu_tx*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_and_clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_check_fast_xmit(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

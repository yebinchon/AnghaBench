; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_STA_SP = common dso_local global i32 0, align 4
@IEEE80211_FRAME_RELEASE_PSPOLL = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@ieee80211_ac_to_qos_mask = common dso_local global i32* null, align 8
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@IEEE80211_TX_CTRL_PS_RESPONSE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@IEEE80211_FRAME_RELEASE_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_TX_STATUS_EOSP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_EOSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, i32, i32, i32)* @ieee80211_sta_ps_deliver_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_ps_deliver_response(%struct.sta_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff_head, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ieee80211_tx_info*, align 8
  %22 = alloca %struct.ieee80211_hdr*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  store %struct.ieee80211_sub_if_data* %27, %struct.ieee80211_sub_if_data** %9, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %29, align 8
  store %struct.ieee80211_local* %30, %struct.ieee80211_local** %10, align 8
  store i64 0, i64* %11, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %32 = load i32, i32* @WLAN_STA_SP, align 4
  %33 = call i32 @set_sta_flag(%struct.sta_info* %31, i32 %32)
  %34 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %35 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ieee80211_sta_ps_get_frames(%struct.sta_info* %35, i32 %36, i32 %37, i32 %38, %struct.sk_buff_head* %12, i64* %11)
  %40 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @ieee80211_sta_ps_more_data(%struct.sta_info* %40, i32 %41, i32 %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IEEE80211_FRAME_RELEASE_PSPOLL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @find_highest_prio_tid(i64 %52)
  %54 = call i64 @BIT(i32 %53)
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %51, %47, %4
  %56 = call i64 @skb_queue_empty(%struct.sk_buff_head* %12)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @IEEE80211_AC_VO, align 4
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %78, %61
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** @ieee80211_ac_to_qos_mask, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %68, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %81

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %63

81:                                               ; preds = %76, %63
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 2, %82
  %84 = sub nsw i32 7, %83
  store i32 %84, i32* %14, align 4
  %85 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @ieee80211_send_null_response(%struct.sta_info* %85, i32 %86, i32 %87, i32 1, i32 0)
  br label %284

89:                                               ; preds = %58, %55
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %223, label %92

92:                                               ; preds = %89
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %93 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %16)
  br label %94

94:                                               ; preds = %164, %92
  %95 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %95, %struct.sk_buff** %17, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %97, label %202

97:                                               ; preds = %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %99 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %98)
  store %struct.ieee80211_tx_info* %99, %struct.ieee80211_tx_info** %21, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = bitcast i8* %103 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %104, %struct.ieee80211_hdr** %22, align 8
  store i32* null, i32** %23, align 8
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %108 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @IEEE80211_TX_CTRL_PS_RESPONSE, align 4
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %97
  %121 = call i64 @skb_queue_empty(%struct.sk_buff_head* %12)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120, %97
  %124 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %125 = call i32 @cpu_to_le16(i32 %124)
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %138

130:                                              ; preds = %120
  %131 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %132 = xor i32 %131, -1
  %133 = call i32 @cpu_to_le16(i32 %132)
  %134 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %135 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %130, %123
  %139 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %140 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ieee80211_is_data_qos(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %146 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ieee80211_is_qos_nullfunc(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144, %138
  %151 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %152 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %151)
  store i32* %152, i32** %23, align 8
  br label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @BIT(i32 %156)
  %158 = load i64, i64* %19, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %19, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %161 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %16, %struct.sk_buff* %160)
  %162 = call i64 @skb_queue_empty(%struct.sk_buff_head* %12)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %153
  br label %94

165:                                              ; preds = %153
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @IEEE80211_FRAME_RELEASE_UAPSD, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load i32, i32* @IEEE80211_TX_STATUS_EOSP, align 4
  %171 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %174 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %202

177:                                              ; preds = %165
  %178 = load i32*, i32** %23, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load i32, i32* @IEEE80211_QOS_CTL_EOSP, align 4
  %182 = load i32*, i32** %23, align 8
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @IEEE80211_TX_STATUS_EOSP, align 4
  %186 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %21, align 8
  %189 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %201

192:                                              ; preds = %177
  %193 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %194 = call i32 @cpu_to_le16(i32 %193)
  %195 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %22, align 8
  %196 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  store i32 1, i32* %20, align 4
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %18, align 4
  br label %201

201:                                              ; preds = %192, %180
  br label %202

202:                                              ; preds = %201, %169, %94
  %203 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %204 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %205 = load i64, i64* %19, align 8
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @drv_allow_buffered_frames(%struct.ieee80211_local* %203, %struct.sta_info* %204, i64 %205, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %211 = call i32 @ieee80211_add_pending_skbs(%struct.ieee80211_local* %210, %struct.sk_buff_head* %16)
  %212 = load i32, i32* %20, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %202
  %215 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %216 = load i64, i64* %19, align 8
  %217 = call i32 @find_highest_prio_tid(i64 %216)
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @ieee80211_send_null_response(%struct.sta_info* %215, i32 %217, i32 %218, i32 0, i32 0)
  br label %220

220:                                              ; preds = %214, %202
  %221 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %222 = call i32 @sta_info_recalc_tim(%struct.sta_info* %221)
  br label %283

223:                                              ; preds = %89
  %224 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %225 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %226 = load i64, i64* %11, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @drv_release_buffered_frames(%struct.ieee80211_local* %224, %struct.sta_info* %225, i64 %226, i32 %227, i32 %228, i32 %229)
  %231 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %232 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %223
  br label %284

239:                                              ; preds = %223
  store i32 0, i32* %24, align 4
  br label %240

240:                                              ; preds = %279, %239
  %241 = load i32, i32* %24, align 4
  %242 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %243 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @ARRAY_SIZE(i32* %245)
  %247 = icmp slt i32 %241, %246
  br i1 %247, label %248, label %282

248:                                              ; preds = %240
  %249 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %250 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %24, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %275

258:                                              ; preds = %248
  %259 = load i64, i64* %11, align 8
  %260 = load i32, i32* %24, align 4
  %261 = call i64 @BIT(i32 %260)
  %262 = and i64 %259, %261
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %258
  %265 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %266 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %24, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @txq_has_queue(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %264, %258, %248
  br label %279

276:                                              ; preds = %264
  %277 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %278 = call i32 @sta_info_recalc_tim(%struct.sta_info* %277)
  br label %282

279:                                              ; preds = %275
  %280 = load i32, i32* %24, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %24, align 4
  br label %240

282:                                              ; preds = %276, %240
  br label %283

283:                                              ; preds = %282, %220
  br label %284

284:                                              ; preds = %238, %283, %81
  ret void
}

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @ieee80211_sta_ps_get_frames(%struct.sta_info*, i32, i32, i32, %struct.sk_buff_head*, i64*) #1

declare dso_local i32 @ieee80211_sta_ps_more_data(%struct.sta_info*, i32, i32, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @find_highest_prio_tid(i64) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @ieee80211_send_null_response(%struct.sta_info*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @drv_allow_buffered_frames(%struct.ieee80211_local*, %struct.sta_info*, i64, i32, i32, i32) #1

declare dso_local i32 @ieee80211_add_pending_skbs(%struct.ieee80211_local*, %struct.sk_buff_head*) #1

declare dso_local i32 @sta_info_recalc_tim(%struct.sta_info*) #1

declare dso_local i32 @drv_release_buffered_frames(%struct.ieee80211_local*, %struct.sta_info*, i64, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @txq_has_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_ht_cap_ie_to_sta_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_ht_cap_ie_to_sta_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_supported_band = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.ieee80211_ht_cap = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.sta_info = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_UNEQUAL_MODULATION = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_UNEQUAL_MODULATION_START_BYTE = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_HT_7935 = common dso_local global i32 0, align 4
@IEEE80211_MAX_MPDU_LEN_HT_3839 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i8* null, align 8
@IEEE80211_STA_RX_BW_40 = common dso_local global i8* null, align 8
@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_ht_cap* %2, %struct.sta_info* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_ht_cap*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %10 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_ht_cap* %2, %struct.ieee80211_ht_cap** %7, align 8
  store %struct.sta_info* %3, %struct.sta_info** %8, align 8
  %18 = call i32 @memset(%struct.ieee80211_sta_ht_cap* %9, i32 0, i32 40)
  %19 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %20 = icmp ne %struct.ieee80211_ht_cap* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %4
  br label %250

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = bitcast %struct.ieee80211_sta_ht_cap* %10 to i8*
  %33 = bitcast %struct.ieee80211_sta_ht_cap* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 40, i1 false)
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %28
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %28
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %49 = call i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %48, %struct.ieee80211_sta_ht_cap* %10)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %58 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = or i32 %56, %68
  %70 = and i32 %54, %69
  %71 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %50
  %78 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %79 = xor i32 %78, -1
  %80 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %50
  %84 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %91 = xor i32 %90, -1
  %92 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %101 = and i32 %99, %100
  %102 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %105 = and i32 %103, %104
  %106 = ashr i32 %105, 2
  %107 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %12, align 4
  %111 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %95
  br label %250

122:                                              ; preds = %95
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %132 = ashr i32 %130, %131
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %136

134:                                              ; preds = %122
  %135 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS, align 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %134, %127
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %164, %136
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %150 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %148, %156
  %158 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  br label %164

164:                                              ; preds = %141
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %137

167:                                              ; preds = %137
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @IEEE80211_HT_MCS_TX_UNEQUAL_MODULATION, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %205

172:                                              ; preds = %167
  %173 = load i32, i32* @IEEE80211_HT_MCS_UNEQUAL_MODULATION_START_BYTE, align 4
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %201, %172
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %204

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %187 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %185, %193
  %195 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  br label %201

201:                                              ; preds = %178
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %174

204:                                              ; preds = %174
  br label %205

205:                                              ; preds = %204, %167
  %206 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %10, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %212 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %210, %216
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %205
  %221 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %220, %205
  %228 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %229 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %227
  %240 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_HT_7935, align 4
  %241 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %242 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  store i32 %240, i32* %243, align 4
  br label %249

244:                                              ; preds = %227
  %245 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_HT_3839, align 4
  %246 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %247 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  store i32 %245, i32* %248, align 4
  br label %249

249:                                              ; preds = %244, %239
  br label %250

250:                                              ; preds = %249, %121, %27
  %251 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %252 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = call i32 @memcmp(i32* %253, %struct.ieee80211_sta_ht_cap* %9, i32 40)
  store i32 %254, i32* %15, align 4
  %255 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %256 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = call i32 @memcpy(i32* %257, %struct.ieee80211_sta_ht_cap* %9, i32 40)
  %259 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %260 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  switch i32 %264, label %265 [
    i32 135, label %267
    i32 136, label %267
    i32 134, label %270
    i32 133, label %270
    i32 132, label %270
    i32 137, label %270
  ]

265:                                              ; preds = %250
  %266 = call i32 @WARN_ON_ONCE(i32 1)
  br label %267

267:                                              ; preds = %250, %250, %265
  %268 = load i8*, i8** @IEEE80211_STA_RX_BW_20, align 8
  %269 = ptrtoint i8* %268 to i32
  store i32 %269, i32* %16, align 4
  br label %283

270:                                              ; preds = %250, %250, %250, %250
  %271 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = load i8*, i8** @IEEE80211_STA_RX_BW_40, align 8
  br label %280

278:                                              ; preds = %270
  %279 = load i8*, i8** @IEEE80211_STA_RX_BW_20, align 8
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i8* [ %277, %276 ], [ %279, %278 ]
  %282 = ptrtoint i8* %281 to i32
  store i32 %282, i32* %16, align 4
  br label %283

283:                                              ; preds = %280, %267
  %284 = load i32, i32* %16, align 4
  %285 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %286 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  store i32 %284, i32* %287, align 8
  %288 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %283
  %294 = load i8*, i8** @IEEE80211_STA_RX_BW_40, align 8
  br label %297

295:                                              ; preds = %283
  %296 = load i8*, i8** @IEEE80211_STA_RX_BW_20, align 8
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i8* [ %294, %293 ], [ %296, %295 ]
  %299 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %300 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %299, i32 0, i32 1
  store i8* %298, i8** %300, align 8
  %301 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %9, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %304 = and i32 %302, %303
  %305 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %306 = ashr i32 %304, %305
  switch i32 %306, label %313 [
    i32 129, label %307
    i32 128, label %307
    i32 130, label %309
    i32 131, label %311
  ]

307:                                              ; preds = %297, %297
  %308 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  store i32 %308, i32* %17, align 4
  br label %313

309:                                              ; preds = %297
  %310 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  store i32 %310, i32* %17, align 4
  br label %313

311:                                              ; preds = %297
  %312 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %312, i32* %17, align 4
  br label %313

313:                                              ; preds = %297, %311, %309, %307
  %314 = load i32, i32* %17, align 4
  %315 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %316 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %314, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  store i32 1, i32* %15, align 4
  br label %321

321:                                              ; preds = %320, %313
  %322 = load i32, i32* %17, align 4
  %323 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %324 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  store i32 %322, i32* %325, align 4
  %326 = load i32, i32* %15, align 4
  ret i32 %326
}

declare dso_local i32 @memset(%struct.ieee80211_sta_ht_cap*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_ht_cap*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i32*, %struct.ieee80211_sta_ht_cap*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_sta_ht_cap*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

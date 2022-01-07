; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_apply_vhtcap_overrides.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_apply_vhtcap_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_15__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_sta_vht_cap = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i8*, i8* }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TXSTBC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_apply_vhtcap_overrides(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sta_vht_cap* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.ieee80211_sta_vht_cap* %1, %struct.ieee80211_sta_vht_cap** %4, align 8
  %17 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %273

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %273

30:                                               ; preds = %22
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %32 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %33 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %34 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %31, %struct.ieee80211_sta_vht_cap* %32, i32 %33)
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %36 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %37 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %38 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %35, %struct.ieee80211_sta_vht_cap* %36, i32 %37)
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %40 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %41 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %42 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %39, %struct.ieee80211_sta_vht_cap* %40, i32 %41)
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %44 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %45 = load i32, i32* @IEEE80211_VHT_CAP_TXSTBC, align 4
  %46 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %43, %struct.ieee80211_sta_vht_cap* %44, i32 %45)
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %48 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %49 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %50 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %47, %struct.ieee80211_sta_vht_cap* %48, i32 %49)
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %52 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %53 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %54 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %51, %struct.ieee80211_sta_vht_cap* %52, i32 %53)
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %56 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %57 = load i32, i32* @IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN, align 4
  %58 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %55, %struct.ieee80211_sta_vht_cap* %56, i32 %57)
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %60 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %61 = load i32, i32* @IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN, align 4
  %62 = call i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data* %59, %struct.ieee80211_sta_vht_cap* %60, i32 %61)
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %30
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT, align 4
  %84 = load i32, i32* %13, align 4
  %85 = ashr i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT, align 4
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %73
  %98 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %97, %73
  br label %112

112:                                              ; preds = %111, %30
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @le16_to_cpu(i8* %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @le16_to_cpu(i8* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @le16_to_cpu(i8* %135)
  store i32 %136, i32* %7, align 4
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @le16_to_cpu(i8* %143)
  store i32 %144, i32* %9, align 4
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @le16_to_cpu(i8* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %11, align 4
  %156 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @le16_to_cpu(i8* %159)
  store i32 %160, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %259, %112
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %262

164:                                              ; preds = %161
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 2, %166
  %168 = ashr i32 %165, %167
  %169 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %170 = and i32 %168, %169
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  %173 = mul nsw i32 2, %172
  %174 = ashr i32 %171, %173
  %175 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %176 = and i32 %174, %175
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %5, align 4
  %179 = mul nsw i32 2, %178
  %180 = ashr i32 %177, %179
  %181 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %164
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %189, %185
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %193, %189
  %198 = load i32, i32* %5, align 4
  %199 = mul nsw i32 2, %198
  %200 = shl i32 3, %199
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %5, align 4
  %206 = mul nsw i32 2, %205
  %207 = shl i32 3, %206
  %208 = and i32 %204, %207
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %197, %193, %164
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %5, align 4
  %214 = mul nsw i32 2, %213
  %215 = ashr i32 %212, %214
  %216 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %217 = and i32 %215, %216
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %5, align 4
  %220 = mul nsw i32 2, %219
  %221 = ashr i32 %218, %220
  %222 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %223 = and i32 %221, %222
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %5, align 4
  %226 = mul nsw i32 2, %225
  %227 = ashr i32 %224, %226
  %228 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %229 = and i32 %227, %228
  store i32 %229, i32* %16, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %258

232:                                              ; preds = %211
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %236, %232
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %240, %236
  %245 = load i32, i32* %5, align 4
  %246 = mul nsw i32 2, %245
  %247 = shl i32 3, %246
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %10, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %5, align 4
  %253 = mul nsw i32 2, %252
  %254 = shl i32 3, %253
  %255 = and i32 %251, %254
  %256 = load i32, i32* %10, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %10, align 4
  br label %258

258:                                              ; preds = %244, %240, %211
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %5, align 4
  br label %161

262:                                              ; preds = %161
  %263 = load i32, i32* %7, align 4
  %264 = call i8* @cpu_to_le16(i32 %263)
  %265 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %266 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  store i8* %264, i8** %267, align 8
  %268 = load i32, i32* %10, align 4
  %269 = call i8* @cpu_to_le16(i32 %268)
  %270 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %271 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  store i8* %269, i8** %272, align 8
  br label %273

273:                                              ; preds = %262, %29, %21
  ret void
}

declare dso_local i32 @__check_vhtcap_disable(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_vht_cap*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

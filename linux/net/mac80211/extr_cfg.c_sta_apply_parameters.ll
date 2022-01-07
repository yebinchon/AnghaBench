; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_apply_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_apply_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.sta_info = type { i64, i64, %struct.TYPE_13__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32*, %struct.TYPE_12__, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.station_parameters = type { i32, i32, i32, i32*, i32, i64, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_14__, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.ieee80211_supported_band = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@NL80211_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_STA_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MFP = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_CHAN_SWITCH = common dso_local global i32 0, align 4
@TDLS_WIDER_BW = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_WIDER_BW = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_UAPSD = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA8_MAX_MSDU_IN_AMSDU_LSB = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA9_MAX_MSDU_IN_AMSDU_MSB = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_STA_TXPOWER = common dso_local global i32 0, align 4
@NL80211_TX_POWER_LIMITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*, %struct.station_parameters*)* @sta_apply_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_apply_parameters(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.station_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.station_parameters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.station_parameters* %2, %struct.station_parameters** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %10, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %19 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %18)
  store %struct.ieee80211_supported_band* %19, %struct.ieee80211_supported_band** %9, align 8
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %21 = icmp ne %struct.ieee80211_supported_band* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %555

25:                                               ; preds = %3
  %26 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %27 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %30 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_15__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %87

59:                                               ; preds = %25
  %60 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %61 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %62 = call i64 @test_sta_flag(%struct.sta_info* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = or i32 %72, %74
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %70, %64
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = and i32 %101, %103
  %105 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %106 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %100, %93, %87
  %109 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %110 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %111 = call i64 @test_sta_flag(%struct.sta_info* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %136, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %116 = call i32 @BIT(i32 %115)
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %119, %113
  %126 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @sta_apply_auth_flags(%struct.ieee80211_local* %126, %struct.sta_info* %127, i32 %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %555

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %119, %108
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %139 = call i32 @BIT(i32 %138)
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %150 = load i32, i32* @WLAN_STA_SHORT_PREAMBLE, align 4
  %151 = call i32 @set_sta_flag(%struct.sta_info* %149, i32 %150)
  br label %156

152:                                              ; preds = %142
  %153 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %154 = load i32, i32* @WLAN_STA_SHORT_PREAMBLE, align 4
  %155 = call i32 @clear_sta_flag(%struct.sta_info* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %136
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %160 = call i32 @BIT(i32 %159)
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %166 = call i32 @BIT(i32 %165)
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %173 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %177 = call i32 @BIT(i32 %176)
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %163
  %181 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %182 = load i32, i32* @WLAN_STA_MFP, align 4
  %183 = call i32 @set_sta_flag(%struct.sta_info* %181, i32 %182)
  br label %188

184:                                              ; preds = %163
  %185 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %186 = load i32, i32* @WLAN_STA_MFP, align 4
  %187 = call i32 @clear_sta_flag(%struct.sta_info* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188, %157
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %192 = call i32 @BIT(i32 %191)
  %193 = and i32 %190, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %189
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %198 = call i32 @BIT(i32 %197)
  %199 = and i32 %196, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %203 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %204 = call i32 @set_sta_flag(%struct.sta_info* %202, i32 %203)
  br label %209

205:                                              ; preds = %195
  %206 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %207 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %208 = call i32 @clear_sta_flag(%struct.sta_info* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %201
  br label %210

210:                                              ; preds = %209, %189
  %211 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %212 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %213 = call i64 @test_sta_flag(%struct.sta_info* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %240

215:                                              ; preds = %210
  %216 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %217 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %240, label %222

222:                                              ; preds = %215
  %223 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %224 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = icmp sge i32 %225, 4
  br i1 %226, label %227, label %240

227:                                              ; preds = %222
  %228 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %229 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %227
  %237 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %238 = load i32, i32* @WLAN_STA_TDLS_CHAN_SWITCH, align 4
  %239 = call i32 @set_sta_flag(%struct.sta_info* %237, i32 %238)
  br label %240

240:                                              ; preds = %236, %227, %222, %215, %210
  %241 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %242 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %243 = call i64 @test_sta_flag(%struct.sta_info* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %276

245:                                              ; preds = %240
  %246 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %247 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %276, label %252

252:                                              ; preds = %245
  %253 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %254 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %253, i32 0, i32 0
  %255 = load i32, i32* @TDLS_WIDER_BW, align 4
  %256 = call i64 @ieee80211_hw_check(%struct.TYPE_16__* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %252
  %259 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %260 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = icmp sge i32 %261, 8
  br i1 %262, label %263, label %276

263:                                              ; preds = %258
  %264 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %265 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 7
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %263
  %273 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %274 = load i32, i32* @WLAN_STA_TDLS_WIDER_BW, align 4
  %275 = call i32 @set_sta_flag(%struct.sta_info* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %263, %258, %252, %245, %240
  %277 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %278 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @STATION_PARAM_APPLY_UAPSD, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %276
  %284 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %285 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %284, i32 0, i32 19
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %288 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 8
  store i32 %286, i32* %289, align 4
  %290 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %291 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %290, i32 0, i32 18
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %294 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 7
  store i32 %292, i32* %295, align 8
  br label %296

296:                                              ; preds = %283, %276
  %297 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %298 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp sge i32 %299, 8
  br i1 %300, label %301, label %346

301:                                              ; preds = %296
  %302 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %303 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 7
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @WLAN_EXT_CAPA8_MAX_MSDU_IN_AMSDU_LSB, align 4
  %308 = and i32 %306, %307
  %309 = ashr i32 %308, 7
  store i32 %309, i32* %13, align 4
  %310 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %311 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = icmp sge i32 %312, 9
  br i1 %313, label %314, label %327

314:                                              ; preds = %301
  %315 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %316 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 8
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @WLAN_EXT_CAPA9_MAX_MSDU_IN_AMSDU_MSB, align 4
  %321 = and i32 %319, %320
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %14, align 4
  %323 = shl i32 %322, 1
  store i32 %323, i32* %14, align 4
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %13, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %13, align 4
  br label %327

327:                                              ; preds = %314, %301
  %328 = load i32, i32* %13, align 4
  switch i32 %328, label %341 [
    i32 1, label %329
    i32 2, label %333
    i32 3, label %337
  ]

329:                                              ; preds = %327
  %330 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %331 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 2
  store i32 32, i32* %332, align 8
  br label %345

333:                                              ; preds = %327
  %334 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %335 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 2
  store i32 16, i32* %336, align 8
  br label %345

337:                                              ; preds = %327
  %338 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %339 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 2
  store i32 8, i32* %340, align 8
  br label %345

341:                                              ; preds = %327
  %342 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %343 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 2
  store i32 0, i32* %344, align 8
  br label %345

345:                                              ; preds = %341, %337, %333, %329
  br label %346

346:                                              ; preds = %345, %296
  %347 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %348 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %347, i32 0, i32 17
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %346
  %352 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %353 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %352, i32 0, i32 17
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %356 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 6
  store i64 %354, i64* %357, align 8
  br label %358

358:                                              ; preds = %351, %346
  %359 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %360 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %359, i32 0, i32 5
  %361 = load i64, i64* %360, align 8
  %362 = icmp sge i64 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %358
  %364 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %365 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %368 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %367, i32 0, i32 0
  store i64 %366, i64* %368, align 8
  br label %369

369:                                              ; preds = %363, %358
  %370 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %371 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @STATION_PARAM_APPLY_STA_TXPOWER, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %410

376:                                              ; preds = %369
  %377 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %378 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %377, i32 0, i32 16
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %382 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 5
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  store i64 %380, i64* %384, align 8
  %385 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %386 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %385, i32 0, i32 16
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @NL80211_TX_POWER_LIMITED, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %400

391:                                              ; preds = %376
  %392 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %393 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %392, i32 0, i32 16
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %397 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 1
  store i32 %395, i32* %399, align 8
  br label %400

400:                                              ; preds = %391, %376
  %401 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %402 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %403 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %404 = call i32 @drv_sta_set_txpwr(%struct.ieee80211_local* %401, %struct.ieee80211_sub_if_data* %402, %struct.sta_info* %403)
  store i32 %404, i32* %8, align 4
  %405 = load i32, i32* %8, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %400
  %408 = load i32, i32* %8, align 4
  store i32 %408, i32* %4, align 4
  br label %555

409:                                              ; preds = %400
  br label %410

410:                                              ; preds = %409, %369
  %411 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %412 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %411, i32 0, i32 15
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %441

415:                                              ; preds = %410
  %416 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %417 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %416, i32 0, i32 14
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %441

420:                                              ; preds = %415
  %421 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %422 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 0
  %425 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %426 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %427 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %426, i32 0, i32 15
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %430 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %429, i32 0, i32 14
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %433 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 4
  %435 = load i32*, i32** %434, align 8
  %436 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %437 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  %440 = call i32 @ieee80211_parse_bitrates(i32* %424, %struct.ieee80211_supported_band* %425, i32 %428, i32 %431, i32* %439)
  br label %441

441:                                              ; preds = %420, %415, %410
  %442 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %443 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %442, i32 0, i32 13
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %454

446:                                              ; preds = %441
  %447 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %448 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %449 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %450 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %449, i32 0, i32 13
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %453 = call i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %447, %struct.ieee80211_supported_band* %448, i32 %451, %struct.sta_info* %452)
  br label %454

454:                                              ; preds = %446, %441
  %455 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %456 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %455, i32 0, i32 12
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %467

459:                                              ; preds = %454
  %460 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %461 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %462 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %463 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %462, i32 0, i32 12
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %466 = call i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data* %460, %struct.ieee80211_supported_band* %461, i32 %464, %struct.sta_info* %465)
  br label %467

467:                                              ; preds = %459, %454
  %468 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %469 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %468, i32 0, i32 11
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %484

472:                                              ; preds = %467
  %473 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %474 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %475 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %476 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %475, i32 0, i32 11
  %477 = load i64, i64* %476, align 8
  %478 = inttoptr i64 %477 to i8*
  %479 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %480 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %479, i32 0, i32 10
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %483 = call i32 @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data* %473, %struct.ieee80211_supported_band* %474, i8* %478, i32 %481, %struct.sta_info* %482)
  br label %484

484:                                              ; preds = %472, %467
  %485 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %486 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %485, i32 0, i32 9
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %499

489:                                              ; preds = %484
  %490 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %491 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %492 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %493 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %492, i32 0, i32 8
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %496 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = call i32 @__ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %490, %struct.sta_info* %491, i32 %494, i64 %497)
  br label %499

499:                                              ; preds = %489, %484
  %500 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %501 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %500, i32 0, i32 6
  %502 = load i64, i64* %501, align 8
  %503 = icmp sge i64 %502, 0
  br i1 %503, label %504, label %511

504:                                              ; preds = %499
  %505 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %506 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %505, i32 0, i32 6
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %509 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %509, i32 0, i32 3
  store i64 %507, i64* %510, align 8
  br label %511

511:                                              ; preds = %504, %499
  %512 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %513 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %512, i32 0, i32 0
  %514 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_15__* %513)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %511
  %517 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %518 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %519 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %520 = call i32 @sta_apply_mesh_params(%struct.ieee80211_local* %517, %struct.sta_info* %518, %struct.station_parameters* %519)
  br label %521

521:                                              ; preds = %516, %511
  %522 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %523 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %522, i32 0, i32 7
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %532

526:                                              ; preds = %521
  %527 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %528 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %527, i32 0, i32 7
  %529 = load i64, i64* %528, align 8
  %530 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %531 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %530, i32 0, i32 1
  store i64 %529, i64* %531, align 8
  br label %532

532:                                              ; preds = %526, %521
  %533 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %534 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %535 = call i64 @test_sta_flag(%struct.sta_info* %533, i32 %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %543, label %537

537:                                              ; preds = %532
  %538 = load i32, i32* %12, align 4
  %539 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %540 = call i32 @BIT(i32 %539)
  %541 = and i32 %538, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %554

543:                                              ; preds = %537, %532
  %544 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %545 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %546 = load i32, i32* %11, align 4
  %547 = load i32, i32* %12, align 4
  %548 = call i32 @sta_apply_auth_flags(%struct.ieee80211_local* %544, %struct.sta_info* %545, i32 %546, i32 %547)
  store i32 %548, i32* %8, align 4
  %549 = load i32, i32* %8, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %543
  %552 = load i32, i32* %8, align 4
  store i32 %552, i32* %4, align 4
  br label %555

553:                                              ; preds = %543
  br label %554

554:                                              ; preds = %553, %537
  store i32 0, i32* %4, align 4
  br label %555

555:                                              ; preds = %554, %551, %407, %133, %22
  %556 = load i32, i32* %4, align 4
  ret i32 %556
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_15__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_apply_auth_flags(%struct.ieee80211_local*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @drv_sta_set_txpwr(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_parse_bitrates(i32*, %struct.ieee80211_supported_band*, i32, i32, i32*) #1

declare dso_local i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i8*, i32, %struct.sta_info*) #1

declare dso_local i32 @__ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i64) #1

declare dso_local i32 @sta_apply_mesh_params(%struct.ieee80211_local*, %struct.sta_info*, %struct.station_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

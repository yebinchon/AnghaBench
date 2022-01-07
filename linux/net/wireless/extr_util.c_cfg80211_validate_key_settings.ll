; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_validate_key_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_validate_key_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.key_params = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@NL80211_KEY_RX_TX = common dso_local global i32 0, align 4
@NL80211_KEY_NO_TX = common dso_local global i32 0, align 4
@NL80211_KEY_SET_TX = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_EXT_KEY_ID = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_TKIP = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP_256 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_GCMP = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_GCMP_256 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP104 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_AES_CMAC = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_BIP_CMAC_256 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_BIP_GMAC_128 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_BIP_GMAC_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_validate_key_settings(%struct.cfg80211_registered_device* %0, %struct.key_params* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.key_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.key_params* %1, %struct.key_params** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 5
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %284

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %284

37:                                               ; preds = %26, %23, %20
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %284

46:                                               ; preds = %40, %37
  %47 = load %struct.key_params*, %struct.key_params** %8, align 8
  %48 = getelementptr inbounds %struct.key_params, %struct.key_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %134 [
    i32 130, label %50
    i32 134, label %66
    i32 133, label %66
    i32 132, label %66
    i32 131, label %66
    i32 138, label %114
    i32 137, label %114
    i32 136, label %114
    i32 135, label %114
    i32 128, label %127
    i32 129, label %127
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.key_params*, %struct.key_params** %8, align 8
  %58 = getelementptr inbounds %struct.key_params, %struct.key_params* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NL80211_KEY_RX_TX, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %284

65:                                               ; preds = %56
  br label %135

66:                                               ; preds = %46, %46, %46, %46
  %67 = load %struct.key_params*, %struct.key_params** %8, align 8
  %68 = getelementptr inbounds %struct.key_params, %struct.key_params* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NL80211_KEY_NO_TX, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72, %66
  %76 = load %struct.key_params*, %struct.key_params** %8, align 8
  %77 = getelementptr inbounds %struct.key_params, %struct.key_params* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NL80211_KEY_SET_TX, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %72
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %284

84:                                               ; preds = %75
  %85 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %86 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %85, i32 0, i32 0
  %87 = load i32, i32* @NL80211_EXT_FEATURE_EXT_KEY_ID, align 4
  %88 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_3__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96, %93
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %284

102:                                              ; preds = %96, %90
  br label %113

103:                                              ; preds = %84
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %284

112:                                              ; preds = %106, %103
  br label %113

113:                                              ; preds = %112, %102
  br label %135

114:                                              ; preds = %46, %46, %46, %46
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %284

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %284

126:                                              ; preds = %120
  br label %135

127:                                              ; preds = %46, %46
  %128 = load i32, i32* %9, align 4
  %129 = icmp sgt i32 %128, 3
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %284

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %46, %133
  br label %135

135:                                              ; preds = %134, %126, %113, %65
  %136 = load %struct.key_params*, %struct.key_params** %8, align 8
  %137 = getelementptr inbounds %struct.key_params, %struct.key_params* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %249 [
    i32 128, label %139
    i32 130, label %149
    i32 134, label %159
    i32 133, label %169
    i32 132, label %179
    i32 131, label %189
    i32 129, label %199
    i32 138, label %209
    i32 137, label %219
    i32 136, label %229
    i32 135, label %239
  ]

139:                                              ; preds = %135
  %140 = load %struct.key_params*, %struct.key_params** %8, align 8
  %141 = getelementptr inbounds %struct.key_params, %struct.key_params* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %284

148:                                              ; preds = %139
  br label %250

149:                                              ; preds = %135
  %150 = load %struct.key_params*, %struct.key_params** %8, align 8
  %151 = getelementptr inbounds %struct.key_params, %struct.key_params* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %284

158:                                              ; preds = %149
  br label %250

159:                                              ; preds = %135
  %160 = load %struct.key_params*, %struct.key_params** %8, align 8
  %161 = getelementptr inbounds %struct.key_params, %struct.key_params* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %284

168:                                              ; preds = %159
  br label %250

169:                                              ; preds = %135
  %170 = load %struct.key_params*, %struct.key_params** %8, align 8
  %171 = getelementptr inbounds %struct.key_params, %struct.key_params* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @WLAN_KEY_LEN_CCMP_256, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %284

178:                                              ; preds = %169
  br label %250

179:                                              ; preds = %135
  %180 = load %struct.key_params*, %struct.key_params** %8, align 8
  %181 = getelementptr inbounds %struct.key_params, %struct.key_params* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @WLAN_KEY_LEN_GCMP, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %6, align 4
  br label %284

188:                                              ; preds = %179
  br label %250

189:                                              ; preds = %135
  %190 = load %struct.key_params*, %struct.key_params** %8, align 8
  %191 = getelementptr inbounds %struct.key_params, %struct.key_params* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @WLAN_KEY_LEN_GCMP_256, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %284

198:                                              ; preds = %189
  br label %250

199:                                              ; preds = %135
  %200 = load %struct.key_params*, %struct.key_params** %8, align 8
  %201 = getelementptr inbounds %struct.key_params, %struct.key_params* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @WLAN_KEY_LEN_WEP104, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %284

208:                                              ; preds = %199
  br label %250

209:                                              ; preds = %135
  %210 = load %struct.key_params*, %struct.key_params** %8, align 8
  %211 = getelementptr inbounds %struct.key_params, %struct.key_params* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @WLAN_KEY_LEN_AES_CMAC, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %6, align 4
  br label %284

218:                                              ; preds = %209
  br label %250

219:                                              ; preds = %135
  %220 = load %struct.key_params*, %struct.key_params** %8, align 8
  %221 = getelementptr inbounds %struct.key_params, %struct.key_params* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @WLAN_KEY_LEN_BIP_CMAC_256, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %6, align 4
  br label %284

228:                                              ; preds = %219
  br label %250

229:                                              ; preds = %135
  %230 = load %struct.key_params*, %struct.key_params** %8, align 8
  %231 = getelementptr inbounds %struct.key_params, %struct.key_params* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @WLAN_KEY_LEN_BIP_GMAC_128, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %6, align 4
  br label %284

238:                                              ; preds = %229
  br label %250

239:                                              ; preds = %135
  %240 = load %struct.key_params*, %struct.key_params** %8, align 8
  %241 = getelementptr inbounds %struct.key_params, %struct.key_params* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @WLAN_KEY_LEN_BIP_GMAC_256, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %6, align 4
  br label %284

248:                                              ; preds = %239
  br label %250

249:                                              ; preds = %135
  br label %250

250:                                              ; preds = %249, %248, %238, %228, %218, %208, %198, %188, %178, %168, %158, %148
  %251 = load %struct.key_params*, %struct.key_params** %8, align 8
  %252 = getelementptr inbounds %struct.key_params, %struct.key_params* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %272

255:                                              ; preds = %250
  %256 = load %struct.key_params*, %struct.key_params** %8, align 8
  %257 = getelementptr inbounds %struct.key_params, %struct.key_params* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  switch i32 %258, label %271 [
    i32 128, label %259
    i32 129, label %259
    i32 130, label %262
    i32 134, label %262
    i32 133, label %262
    i32 132, label %262
    i32 131, label %262
    i32 138, label %262
    i32 137, label %262
    i32 136, label %262
    i32 135, label %262
  ]

259:                                              ; preds = %255, %255
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %6, align 4
  br label %284

262:                                              ; preds = %255, %255, %255, %255, %255, %255, %255, %255, %255
  %263 = load %struct.key_params*, %struct.key_params** %8, align 8
  %264 = getelementptr inbounds %struct.key_params, %struct.key_params* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 6
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %6, align 4
  br label %284

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %255, %270
  br label %272

272:                                              ; preds = %271, %250
  %273 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %274 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %273, i32 0, i32 0
  %275 = load %struct.key_params*, %struct.key_params** %8, align 8
  %276 = getelementptr inbounds %struct.key_params, %struct.key_params* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @cfg80211_supported_cipher_suite(%struct.TYPE_3__* %274, i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %272
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %6, align 4
  br label %284

283:                                              ; preds = %272
  store i32 0, i32* %6, align 4
  br label %284

284:                                              ; preds = %283, %280, %267, %259, %245, %235, %225, %215, %205, %195, %185, %175, %165, %155, %145, %130, %123, %117, %109, %99, %81, %62, %43, %34, %17
  %285 = load i32, i32* %6, align 4
  ret i32 %285
}

declare dso_local i32 @wiphy_ext_feature_isset(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cfg80211_supported_cipher_suite(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

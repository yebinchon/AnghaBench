; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_authenticate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.ieee80211_channel = type { i32 }
%struct.key_parse = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32* }

@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_AUTH_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_GROUP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_WEP104 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_CMD_AUTHENTICATE = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_SAE = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_SK = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_SK_PFS = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_PK = common dso_local global i32 0, align 4
@NL80211_ATTR_AUTH_DATA = common dso_local global i64 0, align 8
@NL80211_ATTR_LOCAL_STATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_authenticate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.key_parse, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = bitcast %struct.net_device* %26 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %27, %struct.cfg80211_registered_device** %6, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 1
  %30 = load %struct.net_device**, %struct.net_device*** %29, align 8
  %31 = getelementptr inbounds %struct.net_device*, %struct.net_device** %30, i64 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %7, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %414

43:                                               ; preds = %2
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %414

54:                                               ; preds = %43
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %414

65:                                               ; preds = %54
  %66 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %67 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %414

76:                                               ; preds = %65
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = call i32 @nl80211_parse_key(%struct.genl_info* %77, %struct.key_parse* %18)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  br label %414

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %414

99:                                               ; preds = %91, %87
  %100 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %414

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @WLAN_KEY_LEN_WEP40, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %118, %112
  %125 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WLAN_KEY_LEN_WEP104, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130, %124
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %414

139:                                              ; preds = %130, %118
  %140 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 3
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %414

146:                                              ; preds = %139
  br label %152

147:                                              ; preds = %83
  %148 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  br label %152

152:                                              ; preds = %147, %146
  %153 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %189

156:                                              ; preds = %152
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %157

157:                                              ; preds = %179, %156
  %158 = load i32, i32* %20, align 4
  %159 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %160 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %169 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %167, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %164
  store i32 1, i32* %21, align 4
  br label %182

178:                                              ; preds = %164
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %20, align 4
  br label %157

182:                                              ; preds = %177, %157
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %414

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %152
  %190 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %191 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %190, i32 0, i32 2
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* @EOPNOTSUPP, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %3, align 4
  br label %414

199:                                              ; preds = %189
  %200 = load %struct.net_device*, %struct.net_device** %7, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 0
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %199
  %208 = load %struct.net_device*, %struct.net_device** %7, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* @EOPNOTSUPP, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %414

218:                                              ; preds = %207, %199
  %219 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %220 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = call i32* @nla_data(i64 %224)
  store i32* %225, i32** %9, align 8
  %226 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %227 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %226, i32 0, i32 1
  %228 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %229 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = call %struct.ieee80211_channel* @nl80211_get_valid_chan(%struct.TYPE_9__* %227, i64 %233)
  store %struct.ieee80211_channel* %234, %struct.ieee80211_channel** %8, align 8
  %235 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %236 = icmp ne %struct.ieee80211_channel* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %218
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %414

240:                                              ; preds = %218
  %241 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %242 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = call i32* @nla_data(i64 %246)
  store i32* %247, i32** %10, align 8
  %248 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %249 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @nla_len(i64 %253)
  store i32 %254, i32* %14, align 4
  %255 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %256 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %255, i32 0, i32 0
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* @NL80211_ATTR_IE, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %240
  %263 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %264 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = load i64, i64* @NL80211_ATTR_IE, align 8
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = call i32* @nla_data(i64 %268)
  store i32* %269, i32** %11, align 8
  %270 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %271 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %270, i32 0, i32 0
  %272 = load i64*, i64** %271, align 8
  %273 = load i64, i64* @NL80211_ATTR_IE, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @nla_len(i64 %275)
  store i32 %276, i32* %15, align 4
  br label %277

277:                                              ; preds = %262, %240
  %278 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %279 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %278, i32 0, i32 0
  %280 = load i64*, i64** %279, align 8
  %281 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %282 = getelementptr inbounds i64, i64* %280, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @nla_get_u32(i64 %283)
  store i32 %284, i32* %17, align 4
  %285 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %286 = bitcast %struct.cfg80211_registered_device* %285 to %struct.net_device*
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* @NL80211_CMD_AUTHENTICATE, align 4
  %289 = call i32 @nl80211_valid_auth_type(%struct.net_device* %286, i32 %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %277
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %3, align 4
  br label %414

294:                                              ; preds = %277
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %310, label %298

298:                                              ; preds = %294
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %310, label %302

302:                                              ; preds = %298
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK_PFS, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @NL80211_AUTHTYPE_FILS_PK, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %321

310:                                              ; preds = %306, %302, %298, %294
  %311 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %312 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %311, i32 0, i32 0
  %313 = load i64*, i64** %312, align 8
  %314 = load i64, i64* @NL80211_ATTR_AUTH_DATA, align 8
  %315 = getelementptr inbounds i64, i64* %313, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %310
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %3, align 4
  br label %414

321:                                              ; preds = %310, %306
  %322 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %323 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %322, i32 0, i32 0
  %324 = load i64*, i64** %323, align 8
  %325 = load i64, i64* @NL80211_ATTR_AUTH_DATA, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %369

329:                                              ; preds = %321
  %330 = load i32, i32* %17, align 4
  %331 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %348

333:                                              ; preds = %329
  %334 = load i32, i32* %17, align 4
  %335 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %333
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK_PFS, align 4
  %340 = icmp ne i32 %338, %339
  br i1 %340, label %341, label %348

341:                                              ; preds = %337
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* @NL80211_AUTHTYPE_FILS_PK, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %341
  %346 = load i32, i32* @EINVAL, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %3, align 4
  br label %414

348:                                              ; preds = %341, %337, %333, %329
  %349 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %350 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %349, i32 0, i32 0
  %351 = load i64*, i64** %350, align 8
  %352 = load i64, i64* @NL80211_ATTR_AUTH_DATA, align 8
  %353 = getelementptr inbounds i64, i64* %351, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = call i32* @nla_data(i64 %354)
  store i32* %355, i32** %12, align 8
  %356 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %357 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %356, i32 0, i32 0
  %358 = load i64*, i64** %357, align 8
  %359 = load i64, i64* @NL80211_ATTR_AUTH_DATA, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @nla_len(i64 %361)
  store i32 %362, i32* %16, align 4
  %363 = load i32, i32* %16, align 4
  %364 = icmp slt i32 %363, 4
  br i1 %364, label %365, label %368

365:                                              ; preds = %348
  %366 = load i32, i32* @EINVAL, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %3, align 4
  br label %414

368:                                              ; preds = %348
  br label %369

369:                                              ; preds = %368, %321
  %370 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %371 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = load i64, i64* @NL80211_ATTR_LOCAL_STATE_CHANGE, align 8
  %374 = getelementptr inbounds i64, i64* %372, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  %377 = xor i1 %376, true
  %378 = xor i1 %377, true
  %379 = zext i1 %378 to i32
  store i32 %379, i32* %19, align 4
  %380 = load i32, i32* %19, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %369
  store i32 0, i32* %3, align 4
  br label %414

383:                                              ; preds = %369
  %384 = load %struct.net_device*, %struct.net_device** %7, align 8
  %385 = getelementptr inbounds %struct.net_device, %struct.net_device* %384, i32 0, i32 0
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %385, align 8
  %387 = call i32 @wdev_lock(%struct.TYPE_8__* %386)
  %388 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %389 = bitcast %struct.cfg80211_registered_device* %388 to %struct.net_device*
  %390 = load %struct.net_device*, %struct.net_device** %7, align 8
  %391 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %392 = load i32, i32* %17, align 4
  %393 = load i32*, i32** %9, align 8
  %394 = load i32*, i32** %10, align 8
  %395 = load i32, i32* %14, align 4
  %396 = load i32*, i32** %11, align 8
  %397 = load i32, i32* %15, align 4
  %398 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 2
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %18, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32*, i32** %12, align 8
  %407 = load i32, i32* %16, align 4
  %408 = call i32 @cfg80211_mlme_auth(%struct.net_device* %389, %struct.net_device* %390, %struct.ieee80211_channel* %391, i32 %392, i32* %393, i32* %394, i32 %395, i32* %396, i32 %397, i32* %400, i64 %403, i32 %405, i32* %406, i32 %407)
  store i32 %408, i32* %13, align 4
  %409 = load %struct.net_device*, %struct.net_device** %7, align 8
  %410 = getelementptr inbounds %struct.net_device, %struct.net_device* %409, i32 0, i32 0
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %410, align 8
  %412 = call i32 @wdev_unlock(%struct.TYPE_8__* %411)
  %413 = load i32, i32* %13, align 4
  store i32 %413, i32* %3, align 4
  br label %414

414:                                              ; preds = %383, %382, %365, %345, %318, %291, %237, %215, %196, %185, %143, %136, %109, %96, %81, %73, %62, %51, %40
  %415 = load i32, i32* %3, align 4
  ret i32 %415
}

declare dso_local i32 @nl80211_parse_key(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local %struct.ieee80211_channel* @nl80211_get_valid_chan(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @nl80211_valid_auth_type(%struct.net_device*, i32, i32) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @cfg80211_mlme_auth(%struct.net_device*, %struct.net_device*, %struct.ieee80211_channel*, i32, i32*, i32*, i32, i32*, i32, i32*, i64, i32, i32*, i32) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

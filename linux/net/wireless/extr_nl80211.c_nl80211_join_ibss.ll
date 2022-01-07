; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_join_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_9__*, %struct.wiphy, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.wiphy = type { i32, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_9__*, %struct.wiphy, %struct.TYPE_7__* }
%struct.cfg80211_ibss_params = type { i32, i32, i32, i32, i8*, i8*, %struct.TYPE_10__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.cfg80211_cached_keys = type { i32 }

@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_BEACON_INTERVAL = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_FEATURE_HT_IBSS = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_VHT_IBSS = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_FIXED = common dso_local global i64 0, align 8
@NL80211_ATTR_PRIVACY = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_BASIC_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_HT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_HT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_MCAST_RATE = common dso_local global i64 0, align 8
@NL80211_ATTR_KEYS = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT_OVER_NL80211 = common dso_local global i64 0, align 8
@NL80211_ATTR_HANDLE_DFS = common dso_local global i64 0, align 8
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_join_ibss(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_ibss_params, align 8
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_cached_keys*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 2
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = bitcast %struct.net_device* %21 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %6, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 2
  %25 = load %struct.net_device**, %struct.net_device*** %24, align 8
  %26 = getelementptr inbounds %struct.net_device*, %struct.net_device** %25, i64 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %10, align 8
  %28 = call i32 @memset(%struct.cfg80211_ibss_params* %8, i32 0, i32 104)
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @nla_len(i64 %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36, %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %478

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  store i32 100, i32* %49, align 8
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @nla_get_u32(i64 %63)
  %65 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %48
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %68 = bitcast %struct.cfg80211_registered_device* %67 to %struct.net_device*
  %69 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %70 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @cfg80211_validate_beacon_int(%struct.net_device* %68, i64 %69, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %478

77:                                               ; preds = %66
  %78 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %79 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %478

87:                                               ; preds = %77
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %478

98:                                               ; preds = %87
  %99 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %100 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %99, i32 0, i32 1
  store %struct.wiphy* %100, %struct.wiphy** %9, align 8
  %101 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %102 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %98
  %109 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %110 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @nla_data(i64 %114)
  %116 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 15
  store i8* %115, i8** %116, align 8
  %117 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 15
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @is_valid_ether_addr(i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %108
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %478

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %98
  %126 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @nla_data(i64 %131)
  %133 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 14
  store i8* %132, i8** %133, align 8
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @nla_len(i64 %139)
  %141 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 13
  store i8* %140, i8** %141, align 8
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_IE, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %125
  %150 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %151 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @NL80211_ATTR_IE, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @nla_data(i64 %155)
  %157 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 12
  store i8* %156, i8** %157, align 8
  %158 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %159 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @NL80211_ATTR_IE, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @nla_len(i64 %163)
  %165 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 11
  store i8* %164, i8** %165, align 8
  br label %166

166:                                              ; preds = %149, %125
  %167 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %168 = bitcast %struct.cfg80211_registered_device* %167 to %struct.net_device*
  %169 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %170 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 6
  %171 = call i32 @nl80211_parse_chandef(%struct.net_device* %168, %struct.genl_info* %169, %struct.TYPE_10__* %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %478

176:                                              ; preds = %166
  %177 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %178 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 6
  %180 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %181 = call i32 @cfg80211_reg_can_beacon(%struct.wiphy* %178, %struct.TYPE_10__* %179, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %176
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %478

186:                                              ; preds = %176
  %187 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  switch i32 %189, label %224 [
    i32 130, label %190
    i32 135, label %190
    i32 132, label %190
    i32 133, label %191
    i32 131, label %191
    i32 129, label %203
    i32 128, label %203
    i32 134, label %203
  ]

190:                                              ; preds = %186, %186, %186
  br label %227

191:                                              ; preds = %186, %186
  %192 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %193 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NL80211_FEATURE_HT_IBSS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %478

202:                                              ; preds = %191
  br label %227

203:                                              ; preds = %186, %186, %186
  %204 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %205 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NL80211_FEATURE_HT_IBSS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %478

214:                                              ; preds = %203
  %215 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %216 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %215, i32 0, i32 1
  %217 = load i32, i32* @NL80211_EXT_FEATURE_VHT_IBSS, align 4
  %218 = call i32 @wiphy_ext_feature_isset(%struct.wiphy* %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %3, align 4
  br label %478

223:                                              ; preds = %214
  br label %227

224:                                              ; preds = %186
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %478

227:                                              ; preds = %223, %202, %190
  %228 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %229 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %228, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* @NL80211_ATTR_FREQ_FIXED, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  %235 = xor i1 %234, true
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 1
  store i32 %237, i32* %238, align 4
  %239 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %240 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %239, i32 0, i32 1
  %241 = load i64*, i64** %240, align 8
  %242 = load i64, i64* @NL80211_ATTR_PRIVACY, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  %246 = xor i1 %245, true
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 2
  store i32 %248, i32* %249, align 8
  %250 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %251 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %294

257:                                              ; preds = %227
  %258 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %259 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %258, i32 0, i32 1
  %260 = load i64*, i64** %259, align 8
  %261 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i8* @nla_data(i64 %263)
  %265 = bitcast i8* %264 to i32*
  store i32* %265, i32** %12, align 8
  %266 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %267 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %266, i32 0, i32 1
  %268 = load i64*, i64** %267, align 8
  %269 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = call i8* @nla_len(i64 %271)
  %273 = ptrtoint i8* %272 to i32
  store i32 %273, i32* %13, align 4
  %274 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %275 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %274, i32 0, i32 1
  %276 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %275, align 8
  %277 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %276, i64 %281
  %283 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %282, align 8
  store %struct.ieee80211_supported_band* %283, %struct.ieee80211_supported_band** %14, align 8
  %284 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %285 = load i32*, i32** %12, align 8
  %286 = load i32, i32* %13, align 4
  %287 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 10
  %288 = call i32 @ieee80211_get_ratemask(%struct.ieee80211_supported_band* %284, i32* %285, i32 %286, i32* %287)
  store i32 %288, i32* %11, align 4
  %289 = load i32, i32* %11, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %257
  %292 = load i32, i32* %11, align 4
  store i32 %292, i32* %3, align 4
  br label %478

293:                                              ; preds = %257
  br label %294

294:                                              ; preds = %293, %227
  %295 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %296 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %295, i32 0, i32 1
  %297 = load i64*, i64** %296, align 8
  %298 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 9
  %304 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %305 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %304, i32 0, i32 1
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = call i8* @nla_data(i64 %309)
  %311 = call i32 @memcpy(i32* %303, i8* %310, i32 4)
  br label %312

312:                                              ; preds = %302, %294
  %313 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %314 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %313, i32 0, i32 1
  %315 = load i64*, i64** %314, align 8
  %316 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %341

320:                                              ; preds = %312
  %321 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %322 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %321, i32 0, i32 1
  %323 = load i64*, i64** %322, align 8
  %324 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %325 = getelementptr inbounds i64, i64* %323, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %320
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %3, align 4
  br label %478

331:                                              ; preds = %320
  %332 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 8
  %333 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %334 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %333, i32 0, i32 1
  %335 = load i64*, i64** %334, align 8
  %336 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %337 = getelementptr inbounds i64, i64* %335, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = call i8* @nla_data(i64 %338)
  %340 = call i32 @memcpy(i32* %332, i8* %339, i32 4)
  br label %341

341:                                              ; preds = %331, %312
  %342 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %343 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %342, i32 0, i32 1
  %344 = load i64*, i64** %343, align 8
  %345 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %346 = getelementptr inbounds i64, i64* %344, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %366

349:                                              ; preds = %341
  %350 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %351 = bitcast %struct.cfg80211_registered_device* %350 to %struct.net_device*
  %352 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 7
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %355 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %354, i32 0, i32 1
  %356 = load i64*, i64** %355, align 8
  %357 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %358 = getelementptr inbounds i64, i64* %356, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @nla_get_u32(i64 %359)
  %361 = call i32 @nl80211_parse_mcast_rate(%struct.net_device* %351, i32 %353, i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %349
  %364 = load i32, i32* @EINVAL, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %3, align 4
  br label %478

366:                                              ; preds = %349, %341
  %367 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %403

370:                                              ; preds = %366
  %371 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %372 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %371, i32 0, i32 1
  %373 = load i64*, i64** %372, align 8
  %374 = load i64, i64* @NL80211_ATTR_KEYS, align 8
  %375 = getelementptr inbounds i64, i64* %373, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %403

378:                                              ; preds = %370
  store i32 0, i32* %15, align 4
  %379 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %380 = bitcast %struct.cfg80211_registered_device* %379 to %struct.net_device*
  %381 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %382 = call %struct.cfg80211_cached_keys* @nl80211_parse_connkeys(%struct.net_device* %380, %struct.genl_info* %381, i32* %15)
  store %struct.cfg80211_cached_keys* %382, %struct.cfg80211_cached_keys** %10, align 8
  %383 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %384 = call i64 @IS_ERR(%struct.cfg80211_cached_keys* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %378
  %387 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %388 = call i32 @PTR_ERR(%struct.cfg80211_cached_keys* %387)
  store i32 %388, i32* %3, align 4
  br label %478

389:                                              ; preds = %378
  %390 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 6
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 132
  br i1 %393, label %394, label %402

394:                                              ; preds = %389
  %395 = load i32, i32* %15, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %394
  %398 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %399 = call i32 @kzfree(%struct.cfg80211_cached_keys* %398)
  %400 = load i32, i32* @EINVAL, align 4
  %401 = sub nsw i32 0, %400
  store i32 %401, i32* %3, align 4
  br label %478

402:                                              ; preds = %394, %389
  br label %403

403:                                              ; preds = %402, %370, %366
  %404 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %405 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %404, i32 0, i32 1
  %406 = load i64*, i64** %405, align 8
  %407 = load i64, i64* @NL80211_ATTR_CONTROL_PORT, align 8
  %408 = getelementptr inbounds i64, i64* %406, i64 %407
  %409 = load i64, i64* %408, align 8
  %410 = call i8* @nla_get_flag(i64 %409)
  %411 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 5
  store i8* %410, i8** %411, align 8
  %412 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %413 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %412, i32 0, i32 1
  %414 = load i64*, i64** %413, align 8
  %415 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_OVER_NL80211, align 8
  %416 = getelementptr inbounds i64, i64* %414, i64 %415
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %432

419:                                              ; preds = %403
  %420 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %421 = bitcast %struct.cfg80211_registered_device* %420 to %struct.net_device*
  %422 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %423 = call i32 @validate_pae_over_nl80211(%struct.net_device* %421, %struct.genl_info* %422)
  store i32 %423, i32* %16, align 4
  %424 = load i32, i32* %16, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %419
  %427 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %428 = call i32 @kzfree(%struct.cfg80211_cached_keys* %427)
  %429 = load i32, i32* %16, align 4
  store i32 %429, i32* %3, align 4
  br label %478

430:                                              ; preds = %419
  %431 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 3
  store i32 1, i32* %431, align 4
  br label %432

432:                                              ; preds = %430, %403
  %433 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %434 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %433, i32 0, i32 1
  %435 = load i64*, i64** %434, align 8
  %436 = load i64, i64* @NL80211_ATTR_HANDLE_DFS, align 8
  %437 = getelementptr inbounds i64, i64* %435, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = call i8* @nla_get_flag(i64 %438)
  %440 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %8, i32 0, i32 4
  store i8* %439, i8** %440, align 8
  %441 = load %struct.net_device*, %struct.net_device** %7, align 8
  %442 = getelementptr inbounds %struct.net_device, %struct.net_device* %441, i32 0, i32 0
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %442, align 8
  %444 = call i32 @wdev_lock(%struct.TYPE_9__* %443)
  %445 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %446 = bitcast %struct.cfg80211_registered_device* %445 to %struct.net_device*
  %447 = load %struct.net_device*, %struct.net_device** %7, align 8
  %448 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %449 = call i32 @__cfg80211_join_ibss(%struct.net_device* %446, %struct.net_device* %447, %struct.cfg80211_ibss_params* %8, %struct.cfg80211_cached_keys* %448)
  store i32 %449, i32* %11, align 4
  %450 = load i32, i32* %11, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %432
  %453 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %10, align 8
  %454 = call i32 @kzfree(%struct.cfg80211_cached_keys* %453)
  br label %472

455:                                              ; preds = %432
  %456 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %457 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %456, i32 0, i32 1
  %458 = load i64*, i64** %457, align 8
  %459 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %471

463:                                              ; preds = %455
  %464 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %465 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.net_device*, %struct.net_device** %7, align 8
  %468 = getelementptr inbounds %struct.net_device, %struct.net_device* %467, i32 0, i32 0
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 1
  store i32 %466, i32* %470, align 8
  br label %471

471:                                              ; preds = %463, %455
  br label %472

472:                                              ; preds = %471, %452
  %473 = load %struct.net_device*, %struct.net_device** %7, align 8
  %474 = getelementptr inbounds %struct.net_device, %struct.net_device* %473, i32 0, i32 0
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %474, align 8
  %476 = call i32 @wdev_unlock(%struct.TYPE_9__* %475)
  %477 = load i32, i32* %11, align 4
  store i32 %477, i32* %3, align 4
  br label %478

478:                                              ; preds = %472, %426, %397, %386, %363, %328, %291, %224, %220, %211, %199, %183, %174, %121, %95, %84, %75, %45
  %479 = load i32, i32* %3, align 4
  ret i32 %479
}

declare dso_local i32 @memset(%struct.cfg80211_ibss_params*, i32, i32) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @cfg80211_validate_beacon_int(%struct.net_device*, i64, i32) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.TYPE_10__*) #1

declare dso_local i32 @cfg80211_reg_can_beacon(%struct.wiphy*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @wiphy_ext_feature_isset(%struct.wiphy*, i32) #1

declare dso_local i32 @ieee80211_get_ratemask(%struct.ieee80211_supported_band*, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @nl80211_parse_mcast_rate(%struct.net_device*, i32, i32) #1

declare dso_local %struct.cfg80211_cached_keys* @nl80211_parse_connkeys(%struct.net_device*, %struct.genl_info*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @PTR_ERR(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @kzfree(%struct.cfg80211_cached_keys*) #1

declare dso_local i8* @nla_get_flag(i64) #1

declare dso_local i32 @validate_pae_over_nl80211(%struct.net_device*, %struct.genl_info*) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @__cfg80211_join_ibss(%struct.net_device*, %struct.net_device*, %struct.cfg80211_ibss_params*, %struct.cfg80211_cached_keys*) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

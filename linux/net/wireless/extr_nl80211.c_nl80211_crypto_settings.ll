; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_crypto_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_crypto_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.genl_info = type { i64* }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, i32, i8*, i8*, i8*, i8**, i8*, i8*, i8**, i8*, i64 }

@NL80211_ATTR_CONTROL_PORT = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT_ETHERTYPE = common dso_local global i64 0, align 8
@WIPHY_FLAG_CONTROL_PORT_PROTOCOL = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT_OVER_NL80211 = common dso_local global i64 0, align 8
@NL80211_ATTR_CIPHER_SUITES_PAIRWISE = common dso_local global i64 0, align 8
@NL80211_ATTR_CIPHER_SUITE_GROUP = common dso_local global i64 0, align 8
@NL80211_ATTR_WPA_VERSIONS = common dso_local global i64 0, align 8
@NL80211_ATTR_AKM_SUITES = common dso_local global i64 0, align 8
@NL80211_MAX_NR_AKM_SUITES = common dso_local global i32 0, align 4
@NL80211_ATTR_PMK = common dso_local global i64 0, align 8
@WLAN_PMK_LEN = common dso_local global i8* null, align 8
@NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_PSK = common dso_local global i32 0, align 4
@NL80211_ATTR_SAE_PASSWORD = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_SAE_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.genl_info*, %struct.cfg80211_crypto_settings*, i32)* @nl80211_crypto_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_crypto_settings(%struct.cfg80211_registered_device* %0, %struct.genl_info* %1, %struct.cfg80211_crypto_settings* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.cfg80211_crypto_settings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.genl_info* %1, %struct.genl_info** %7, align 8
  store %struct.cfg80211_crypto_settings* %2, %struct.cfg80211_crypto_settings** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %18 = call i32 @memset(%struct.cfg80211_crypto_settings* %17, i32 0, i32 88)
  %19 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @NL80211_ATTR_CONTROL_PORT, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %26 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %25, i32 0, i32 12
  store i64 %24, i64* %26, align 8
  %27 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %4
  %35 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @nla_get_u16(i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i8* @cpu_to_be16(i64 %42)
  %44 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %45 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %44, i32 0, i32 11
  store i8* %43, i8** %45, align 8
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WIPHY_FLAG_CONTROL_PORT_PROTOCOL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %34
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @ETH_P_PAE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %361

60:                                               ; preds = %53, %34
  %61 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %62 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %70 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %60
  br label %77

72:                                               ; preds = %4
  %73 = load i64, i64* @ETH_P_PAE, align 8
  %74 = call i8* @cpu_to_be16(i64 %73)
  %75 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %76 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %75, i32 0, i32 11
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %71
  %78 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_OVER_NL80211, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %87 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %88 = call i32 @validate_pae_over_nl80211(%struct.cfg80211_registered_device* %86, %struct.genl_info* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %361

93:                                               ; preds = %85
  %94 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %95 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %77
  %97 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %98 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @NL80211_ATTR_CIPHER_SUITES_PAIRWISE, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %175

104:                                              ; preds = %96
  %105 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @NL80211_ATTR_CIPHER_SUITES_PAIRWISE, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @nla_data(i64 %110)
  store i8* %111, i8** %12, align 8
  %112 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @NL80211_ATTR_CIPHER_SUITES_PAIRWISE, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @nla_len(i64 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %125 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = urem i64 %127, 4
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %104
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %361

133:                                              ; preds = %104
  %134 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %135 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %361

142:                                              ; preds = %133
  %143 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %144 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %143, i32 0, i32 10
  %145 = load i8**, i8*** %144, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @memcpy(i8** %145, i8* %146, i32 %147)
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %171, %142
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %152 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %149
  %156 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %157 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %156, i32 0, i32 0
  %158 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %159 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %158, i32 0, i32 10
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @cfg80211_supported_cipher_suite(%struct.TYPE_3__* %157, i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %155
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %361

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %149

174:                                              ; preds = %149
  br label %175

175:                                              ; preds = %174, %96
  %176 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %177 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* @NL80211_ATTR_CIPHER_SUITE_GROUP, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %175
  %184 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %185 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* @NL80211_ATTR_CIPHER_SUITE_GROUP, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i8* @nla_get_u32(i64 %189)
  %191 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %192 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %191, i32 0, i32 9
  store i8* %190, i8** %192, align 8
  %193 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %194 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %193, i32 0, i32 0
  %195 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %196 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %195, i32 0, i32 9
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @cfg80211_supported_cipher_suite(%struct.TYPE_3__* %194, i8* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %183
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %5, align 4
  br label %361

203:                                              ; preds = %183
  br label %204

204:                                              ; preds = %203, %175
  %205 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %206 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* @NL80211_ATTR_WPA_VERSIONS, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %204
  %213 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %214 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i64, i64* @NL80211_ATTR_WPA_VERSIONS, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @nla_get_u32(i64 %218)
  %220 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %221 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %220, i32 0, i32 8
  store i8* %219, i8** %221, align 8
  %222 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %223 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %222, i32 0, i32 8
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @nl80211_valid_wpa_versions(i8* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %212
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %5, align 4
  br label %361

230:                                              ; preds = %212
  br label %231

231:                                              ; preds = %230, %204
  %232 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %233 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %284

239:                                              ; preds = %231
  %240 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %241 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i8* @nla_data(i64 %245)
  store i8* %246, i8** %15, align 8
  %247 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %248 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = call i8* @nla_len(i64 %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = udiv i64 %256, 4
  %258 = trunc i64 %257 to i32
  %259 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %260 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = urem i64 %262, 4
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %239
  %266 = load i32, i32* @EINVAL, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %5, align 4
  br label %361

268:                                              ; preds = %239
  %269 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %270 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @NL80211_MAX_NR_AKM_SUITES, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %5, align 4
  br label %361

277:                                              ; preds = %268
  %278 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %279 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %278, i32 0, i32 7
  %280 = load i8**, i8*** %279, align 8
  %281 = load i8*, i8** %15, align 8
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @memcpy(i8** %280, i8* %281, i32 %282)
  br label %284

284:                                              ; preds = %277, %231
  %285 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %286 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %324

292:                                              ; preds = %284
  %293 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %294 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = call i8* @nla_len(i64 %298)
  %300 = load i8*, i8** @WLAN_PMK_LEN, align 8
  %301 = icmp ne i8* %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %292
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %5, align 4
  br label %361

305:                                              ; preds = %292
  %306 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %307 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %306, i32 0, i32 0
  %308 = load i32, i32* @NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_PSK, align 4
  %309 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_3__* %307, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %5, align 4
  br label %361

314:                                              ; preds = %305
  %315 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %316 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %315, i32 0, i32 0
  %317 = load i64*, i64** %316, align 8
  %318 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %319 = getelementptr inbounds i64, i64* %317, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = call i8* @nla_data(i64 %320)
  %322 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %323 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %322, i32 0, i32 6
  store i8* %321, i8** %323, align 8
  br label %324

324:                                              ; preds = %314, %284
  %325 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %326 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %325, i32 0, i32 0
  %327 = load i64*, i64** %326, align 8
  %328 = load i64, i64* @NL80211_ATTR_SAE_PASSWORD, align 8
  %329 = getelementptr inbounds i64, i64* %327, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %360

332:                                              ; preds = %324
  %333 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %334 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %333, i32 0, i32 0
  %335 = load i32, i32* @NL80211_EXT_FEATURE_SAE_OFFLOAD, align 4
  %336 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_3__* %334, i32 %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %332
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %5, align 4
  br label %361

341:                                              ; preds = %332
  %342 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %343 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %342, i32 0, i32 0
  %344 = load i64*, i64** %343, align 8
  %345 = load i64, i64* @NL80211_ATTR_SAE_PASSWORD, align 8
  %346 = getelementptr inbounds i64, i64* %344, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = call i8* @nla_data(i64 %347)
  %349 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %350 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %349, i32 0, i32 5
  store i8* %348, i8** %350, align 8
  %351 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %352 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %351, i32 0, i32 0
  %353 = load i64*, i64** %352, align 8
  %354 = load i64, i64* @NL80211_ATTR_SAE_PASSWORD, align 8
  %355 = getelementptr inbounds i64, i64* %353, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = call i8* @nla_len(i64 %356)
  %358 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %359 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %358, i32 0, i32 4
  store i8* %357, i8** %359, align 8
  br label %360

360:                                              ; preds = %341, %324
  store i32 0, i32* %5, align 4
  br label %361

361:                                              ; preds = %360, %338, %311, %302, %274, %265, %227, %200, %167, %139, %130, %91, %57
  %362 = load i32, i32* %5, align 4
  ret i32 %362
}

declare dso_local i32 @memset(%struct.cfg80211_crypto_settings*, i32, i32) #1

declare dso_local i64 @nla_get_u16(i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @validate_pae_over_nl80211(%struct.cfg80211_registered_device*, %struct.genl_info*) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @cfg80211_supported_cipher_suite(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @nl80211_valid_wpa_versions(i8*) #1

declare dso_local i32 @wiphy_ext_feature_isset(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

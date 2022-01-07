; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_associate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64, i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32*, i8*, i32* }

@EPERM = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_USE_MFP = common dso_local global i64 0, align 8
@NL80211_MFP_REQUIRED = common dso_local global i32 0, align 4
@NL80211_MFP_NO = common dso_local global i32 0, align 4
@NL80211_ATTR_PREV_BSSID = common dso_local global i64 0, align 8
@NL80211_ATTR_DISABLE_HT = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_HT = common dso_local global i32 0, align 4
@NL80211_ATTR_HT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_HT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_DISABLE_VHT = common dso_local global i64 0, align 8
@ASSOC_REQ_DISABLE_VHT = common dso_local global i32 0, align 4
@NL80211_ATTR_VHT_CAPABILITY_MASK = common dso_local global i64 0, align 8
@NL80211_ATTR_VHT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_USE_RRM = common dso_local global i64 0, align 8
@NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES = common dso_local global i32 0, align 4
@NL80211_FEATURE_QUIET = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_RRM = common dso_local global i32 0, align 4
@ASSOC_REQ_USE_RRM = common dso_local global i32 0, align 4
@NL80211_ATTR_FILS_KEK = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_NONCES = common dso_local global i64 0, align 8
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_associate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.cfg80211_assoc_request, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 2
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 2
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  %26 = bitcast %struct.cfg80211_assoc_request* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 80, i1 false)
  store i32 0, i32* %13, align 4
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %470

46:                                               ; preds = %33, %2
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62, %54, %46
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %470

73:                                               ; preds = %62
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %75 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %470

83:                                               ; preds = %73
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.net_device*, %struct.net_device** %7, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %470

102:                                              ; preds = %91, %83
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32* @nla_data(i64 %108)
  store i32* %109, i32** %10, align 8
  %110 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %111 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %110, i32 0, i32 1
  %112 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.ieee80211_channel* @nl80211_get_valid_chan(%struct.TYPE_7__* %111, i64 %117)
  store %struct.ieee80211_channel* %118, %struct.ieee80211_channel** %8, align 8
  %119 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %120 = icmp ne %struct.ieee80211_channel* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %102
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %470

124:                                              ; preds = %102
  %125 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %126 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32* @nla_data(i64 %130)
  store i32* %131, i32** %11, align 8
  %132 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %133 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @nla_len(i64 %137)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %13, align 4
  %140 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %141 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @NL80211_ATTR_IE, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %124
  %148 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %149 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @NL80211_ATTR_IE, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = call i32* @nla_data(i64 %153)
  %155 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 12
  store i32* %154, i32** %155, align 8
  %156 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %157 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* @NL80211_ATTR_IE, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @nla_len(i64 %161)
  %163 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 11
  store i8* %162, i8** %163, align 8
  br label %164

164:                                              ; preds = %147, %124
  %165 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %166 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* @NL80211_ATTR_USE_MFP, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %164
  %173 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %174 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* @NL80211_ATTR_USE_MFP, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @nla_get_u32(i64 %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @NL80211_MFP_REQUIRED, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %193

185:                                              ; preds = %172
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @NL80211_MFP_NO, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %470

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %183
  br label %194

194:                                              ; preds = %193, %164
  %195 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %196 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i64, i64* @NL80211_ATTR_PREV_BSSID, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %194
  %203 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %204 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = load i64, i64* @NL80211_ATTR_PREV_BSSID, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = call i32* @nla_data(i64 %208)
  %210 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 10
  store i32* %209, i32** %210, align 8
  br label %211

211:                                              ; preds = %202, %194
  %212 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %213 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* @NL80211_ATTR_DISABLE_HT, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @nla_get_flag(i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %211
  %221 = load i32, i32* @ASSOC_REQ_DISABLE_HT, align 4
  %222 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %221
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %220, %211
  %226 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %227 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %226, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 9
  %235 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %236 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %235, i32 0, i32 1
  %237 = load i64*, i64** %236, align 8
  %238 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i32* @nla_data(i64 %240)
  %242 = call i32 @memcpy(i32* %234, i32* %241, i32 4)
  br label %243

243:                                              ; preds = %233, %225
  %244 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %245 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %272

251:                                              ; preds = %243
  %252 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %253 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY_MASK, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %251
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %3, align 4
  br label %470

262:                                              ; preds = %251
  %263 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 8
  %264 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %265 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = call i32* @nla_data(i64 %269)
  %271 = call i32 @memcpy(i32* %263, i32* %270, i32 4)
  br label %272

272:                                              ; preds = %262, %243
  %273 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %274 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = load i64, i64* @NL80211_ATTR_DISABLE_VHT, align 8
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @nla_get_flag(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %272
  %282 = load i32, i32* @ASSOC_REQ_DISABLE_VHT, align 4
  %283 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %282
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %281, %272
  %287 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %288 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %287, i32 0, i32 1
  %289 = load i64*, i64** %288, align 8
  %290 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 7
  %296 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %297 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %296, i32 0, i32 1
  %298 = load i64*, i64** %297, align 8
  %299 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = call i32* @nla_data(i64 %301)
  %303 = call i32 @memcpy(i32* %295, i32* %302, i32 4)
  br label %304

304:                                              ; preds = %294, %286
  %305 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %306 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %305, i32 0, i32 1
  %307 = load i64*, i64** %306, align 8
  %308 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %333

312:                                              ; preds = %304
  %313 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %314 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %313, i32 0, i32 1
  %315 = load i64*, i64** %314, align 8
  %316 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %312
  %321 = load i32, i32* @EINVAL, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %3, align 4
  br label %470

323:                                              ; preds = %312
  %324 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 6
  %325 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %326 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %325, i32 0, i32 1
  %327 = load i64*, i64** %326, align 8
  %328 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %329 = getelementptr inbounds i64, i64* %327, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = call i32* @nla_data(i64 %330)
  %332 = call i32 @memcpy(i32* %324, i32* %331, i32 4)
  br label %333

333:                                              ; preds = %323, %304
  %334 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %335 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %334, i32 0, i32 1
  %336 = load i64*, i64** %335, align 8
  %337 = load i64, i64* @NL80211_ATTR_USE_RRM, align 8
  %338 = getelementptr inbounds i64, i64* %336, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = call i64 @nla_get_flag(i64 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %372

342:                                              ; preds = %333
  %343 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %344 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @NL80211_FEATURE_DS_PARAM_SET_IE_IN_PROBES, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %342
  %351 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %352 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @NL80211_FEATURE_QUIET, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %367, label %358

358:                                              ; preds = %350, %342
  %359 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %360 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %359, i32 0, i32 1
  %361 = load i32, i32* @NL80211_EXT_FEATURE_RRM, align 4
  %362 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_7__* %360, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %358
  %365 = load i32, i32* @EINVAL, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %3, align 4
  br label %470

367:                                              ; preds = %358, %350
  %368 = load i32, i32* @ASSOC_REQ_USE_RRM, align 4
  %369 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 5
  %370 = load i32, i32* %369, align 8
  %371 = or i32 %370, %368
  store i32 %371, i32* %369, align 8
  br label %372

372:                                              ; preds = %367, %333
  %373 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %374 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %373, i32 0, i32 1
  %375 = load i64*, i64** %374, align 8
  %376 = load i64, i64* @NL80211_ATTR_FILS_KEK, align 8
  %377 = getelementptr inbounds i64, i64* %375, i64 %376
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %416

380:                                              ; preds = %372
  %381 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %382 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %381, i32 0, i32 1
  %383 = load i64*, i64** %382, align 8
  %384 = load i64, i64* @NL80211_ATTR_FILS_KEK, align 8
  %385 = getelementptr inbounds i64, i64* %383, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = call i32* @nla_data(i64 %386)
  %388 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 4
  store i32* %387, i32** %388, align 8
  %389 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %390 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %389, i32 0, i32 1
  %391 = load i64*, i64** %390, align 8
  %392 = load i64, i64* @NL80211_ATTR_FILS_KEK, align 8
  %393 = getelementptr inbounds i64, i64* %391, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = call i8* @nla_len(i64 %394)
  %396 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 3
  store i8* %395, i8** %396, align 8
  %397 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %398 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %397, i32 0, i32 1
  %399 = load i64*, i64** %398, align 8
  %400 = load i64, i64* @NL80211_ATTR_FILS_NONCES, align 8
  %401 = getelementptr inbounds i64, i64* %399, i64 %400
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %380
  %405 = load i32, i32* @EINVAL, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %3, align 4
  br label %470

407:                                              ; preds = %380
  %408 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %409 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %408, i32 0, i32 1
  %410 = load i64*, i64** %409, align 8
  %411 = load i64, i64* @NL80211_ATTR_FILS_NONCES, align 8
  %412 = getelementptr inbounds i64, i64* %410, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = call i32* @nla_data(i64 %413)
  %415 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 2
  store i32* %414, i32** %415, align 8
  br label %416

416:                                              ; preds = %407, %372
  %417 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %418 = bitcast %struct.cfg80211_registered_device* %417 to %struct.net_device*
  %419 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %420 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %9, i32 0, i32 1
  %421 = call i32 @nl80211_crypto_settings(%struct.net_device* %418, %struct.genl_info* %419, i32* %420, i32 1)
  store i32 %421, i32* %12, align 4
  %422 = load i32, i32* %12, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %468, label %424

424:                                              ; preds = %416
  %425 = load %struct.net_device*, %struct.net_device** %7, align 8
  %426 = getelementptr inbounds %struct.net_device, %struct.net_device* %425, i32 0, i32 0
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %426, align 8
  %428 = call i32 @wdev_lock(%struct.TYPE_8__* %427)
  %429 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %430 = bitcast %struct.cfg80211_registered_device* %429 to %struct.net_device*
  %431 = load %struct.net_device*, %struct.net_device** %7, align 8
  %432 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %433 = load i32*, i32** %10, align 8
  %434 = load i32*, i32** %11, align 8
  %435 = load i32, i32* %13, align 4
  %436 = call i32 @cfg80211_mlme_assoc(%struct.net_device* %430, %struct.net_device* %431, %struct.ieee80211_channel* %432, i32* %433, i32* %434, i32 %435, %struct.cfg80211_assoc_request* %9)
  store i32 %436, i32* %12, align 4
  %437 = load i32, i32* %12, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %463, label %439

439:                                              ; preds = %424
  %440 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %441 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %440, i32 0, i32 1
  %442 = load i64*, i64** %441, align 8
  %443 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %444 = getelementptr inbounds i64, i64* %442, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %463

447:                                              ; preds = %439
  %448 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %449 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.net_device*, %struct.net_device** %7, align 8
  %452 = getelementptr inbounds %struct.net_device, %struct.net_device* %451, i32 0, i32 0
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 0
  store i64 %450, i64* %454, align 8
  %455 = load %struct.net_device*, %struct.net_device** %7, align 8
  %456 = getelementptr inbounds %struct.net_device, %struct.net_device* %455, i32 0, i32 0
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 2
  %459 = load i32*, i32** %458, align 8
  %460 = load i32*, i32** %10, align 8
  %461 = load i32, i32* @ETH_ALEN, align 4
  %462 = call i32 @memcpy(i32* %459, i32* %460, i32 %461)
  br label %463

463:                                              ; preds = %447, %439, %424
  %464 = load %struct.net_device*, %struct.net_device** %7, align 8
  %465 = getelementptr inbounds %struct.net_device, %struct.net_device* %464, i32 0, i32 0
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %465, align 8
  %467 = call i32 @wdev_unlock(%struct.TYPE_8__* %466)
  br label %468

468:                                              ; preds = %463, %416
  %469 = load i32, i32* %12, align 4
  store i32 %469, i32* %3, align 4
  br label %470

470:                                              ; preds = %468, %404, %364, %320, %259, %189, %121, %99, %80, %70, %43
  %471 = load i32, i32* %3, align 4
  ret i32 %471
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @nla_data(i64) #2

declare dso_local %struct.ieee80211_channel* @nl80211_get_valid_chan(%struct.TYPE_7__*, i64) #2

declare dso_local i8* @nla_len(i64) #2

declare dso_local i32 @nla_get_u32(i64) #2

declare dso_local i64 @nla_get_flag(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wiphy_ext_feature_isset(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @nl80211_crypto_settings(%struct.net_device*, %struct.genl_info*, i32*, i32) #2

declare dso_local i32 @wdev_lock(%struct.TYPE_8__*) #2

declare dso_local i32 @cfg80211_mlme_assoc(%struct.net_device*, %struct.net_device*, %struct.ieee80211_channel*, i32*, i32*, i32, %struct.cfg80211_assoc_request*) #2

declare dso_local i32 @wdev_unlock(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_ap.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_9__, %struct.wireless_dev*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.wireless_dev = type { i64, i64, i32, i32, %struct.TYPE_10__, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_9__, %struct.wireless_dev*, %struct.TYPE_8__* }
%struct.cfg80211_ap_settings = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_10__, i8*, i32, i32, i8*, i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@NL80211_ATTR_BEACON_INTERVAL = common dso_local global i64 0, align 8
@NL80211_ATTR_DTIM_PERIOD = common dso_local global i64 0, align 8
@NL80211_ATTR_BEACON_HEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@NL80211_ATTR_HIDDEN_SSID = common dso_local global i64 0, align 8
@NL80211_ATTR_PRIVACY = common dso_local global i64 0, align 8
@NL80211_ATTR_AUTH_TYPE = common dso_local global i64 0, align 8
@NL80211_CMD_START_AP = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i8* null, align 8
@NL80211_MAX_NR_CIPHER_SUITES = common dso_local global i32 0, align 4
@NL80211_ATTR_INACTIVITY_TIMEOUT = common dso_local global i64 0, align 8
@NL80211_FEATURE_INACTIVITY_TIMER = common dso_local global i32 0, align 4
@NL80211_ATTR_P2P_CTWINDOW = common dso_local global i64 0, align 8
@NL80211_FEATURE_P2P_GO_CTWIN = common dso_local global i32 0, align 4
@NL80211_ATTR_P2P_OPPPS = common dso_local global i64 0, align 8
@NL80211_FEATURE_P2P_GO_OPPPS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_TX_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_SMPS_MODE = common dso_local global i64 0, align 8
@NL80211_FEATURE_STATIC_SMPS = common dso_local global i32 0, align 4
@NL80211_FEATURE_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@NL80211_ATTR_PBSS = common dso_local global i64 0, align 8
@NL80211_BAND_60GHZ = common dso_local global i64 0, align 8
@NL80211_ATTR_ACL_POLICY = common dso_local global i64 0, align 8
@NL80211_ATTR_TWT_RESPONDER = common dso_local global i64 0, align 8
@NL80211_ATTR_HE_OBSS_PD = common dso_local global i64 0, align 8
@NL80211_ATTR_EXTERNAL_AUTH_SUPPORT = common dso_local global i64 0, align 8
@AP_SETTINGS_EXTERNAL_AUTH_SUPPORT = common dso_local global i32 0, align 4
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_ap(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_ap_settings, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 2
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %24, align 8
  store %struct.wireless_dev* %25, %struct.wireless_dev** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %27, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %35, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %640

44:                                               ; preds = %33, %2
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %640

54:                                               ; preds = %44
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EALREADY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %640

62:                                               ; preds = %54
  %63 = call i32 @memset(%struct.cfg80211_ap_settings* %9, i32 0, i32 136)
  %64 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %65 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %81 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79, %71, %62
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %640

90:                                               ; preds = %79
  %91 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %92 = bitcast %struct.cfg80211_registered_device* %91 to %struct.net_device*
  %93 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 19
  %97 = call i32 @nl80211_parse_beacon(%struct.net_device* %92, i64* %95, i32* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %640

102:                                              ; preds = %90
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @nla_get_u32(i64 %108)
  %110 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 7
  store i8* %109, i8** %110, align 8
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @nla_get_u32(i64 %116)
  %118 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 18
  store i8* %117, i8** %118, align 8
  %119 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %120 = bitcast %struct.cfg80211_registered_device* %119 to %struct.net_device*
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %122, align 8
  %124 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 7
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @cfg80211_validate_beacon_int(%struct.net_device* %120, i64 %125, i8* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %102
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %640

133:                                              ; preds = %102
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %133
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @nla_data(i64 %147)
  %149 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 5
  store i32 %148, i32* %149, align 8
  %150 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %151 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @nla_len(i64 %155)
  %157 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  %158 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %141
  %162 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161, %141
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %640

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169, %133
  %171 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %172 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @NL80211_ATTR_HIDDEN_SSID, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %170
  %179 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %180 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* @NL80211_ATTR_HIDDEN_SSID, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @nla_get_u32(i64 %184)
  %186 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 17
  store i8* %185, i8** %186, align 8
  br label %187

187:                                              ; preds = %178, %170
  %188 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %189 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %188, i32 0, i32 1
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* @NL80211_ATTR_PRIVACY, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 1
  store i32 %197, i32* %198, align 8
  %199 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %200 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %226

206:                                              ; preds = %187
  %207 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %208 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %207, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i8* @nla_get_u32(i64 %212)
  %214 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 16
  store i8* %213, i8** %214, align 8
  %215 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %216 = bitcast %struct.cfg80211_registered_device* %215 to %struct.net_device*
  %217 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 16
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* @NL80211_CMD_START_AP, align 4
  %220 = call i32 @nl80211_valid_auth_type(%struct.net_device* %216, i8* %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %206
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %3, align 4
  br label %640

225:                                              ; preds = %206
  br label %229

226:                                              ; preds = %187
  %227 = load i8*, i8** @NL80211_AUTHTYPE_AUTOMATIC, align 8
  %228 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 16
  store i8* %227, i8** %228, align 8
  br label %229

229:                                              ; preds = %226, %225
  %230 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %231 = bitcast %struct.cfg80211_registered_device* %230 to %struct.net_device*
  %232 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %233 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 15
  %234 = load i32, i32* @NL80211_MAX_NR_CIPHER_SUITES, align 4
  %235 = call i32 @nl80211_crypto_settings(%struct.net_device* %231, %struct.genl_info* %232, i32* %233, i32 %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load i32, i32* %10, align 4
  store i32 %239, i32* %3, align 4
  br label %640

240:                                              ; preds = %229
  %241 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %242 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = load i64, i64* @NL80211_ATTR_INACTIVITY_TIMEOUT, align 8
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %240
  %249 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %250 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @NL80211_FEATURE_INACTIVITY_TIMER, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %248
  %257 = load i32, i32* @EOPNOTSUPP, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %640

259:                                              ; preds = %248
  %260 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %261 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* @NL80211_ATTR_INACTIVITY_TIMEOUT, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @nla_get_u16(i64 %265)
  %267 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 14
  store i32 %266, i32* %267, align 8
  br label %268

268:                                              ; preds = %259, %240
  %269 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %270 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %269, i32 0, i32 1
  %271 = load i64*, i64** %270, align 8
  %272 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %312

276:                                              ; preds = %268
  %277 = load %struct.net_device*, %struct.net_device** %7, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 1
  %279 = load %struct.wireless_dev*, %struct.wireless_dev** %278, align 8
  %280 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = load i32, i32* @EINVAL, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %3, align 4
  br label %640

287:                                              ; preds = %276
  %288 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %289 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = load i64, i64* @NL80211_ATTR_P2P_CTWINDOW, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = call i8* @nla_get_u8(i64 %293)
  %295 = ptrtoint i8* %294 to i64
  %296 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 2
  store i64 %295, i64* %296, align 8
  %297 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %287
  %301 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %302 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @NL80211_FEATURE_P2P_GO_CTWIN, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %300
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %3, align 4
  br label %640

311:                                              ; preds = %300, %287
  br label %312

312:                                              ; preds = %311, %268
  %313 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %314 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %313, i32 0, i32 1
  %315 = load i64*, i64** %314, align 8
  %316 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %356

320:                                              ; preds = %312
  %321 = load %struct.net_device*, %struct.net_device** %7, align 8
  %322 = getelementptr inbounds %struct.net_device, %struct.net_device* %321, i32 0, i32 1
  %323 = load %struct.wireless_dev*, %struct.wireless_dev** %322, align 8
  %324 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %320
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %3, align 4
  br label %640

331:                                              ; preds = %320
  %332 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %333 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %332, i32 0, i32 1
  %334 = load i64*, i64** %333, align 8
  %335 = load i64, i64* @NL80211_ATTR_P2P_OPPPS, align 8
  %336 = getelementptr inbounds i64, i64* %334, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = call i8* @nla_get_u8(i64 %337)
  store i8* %338, i8** %11, align 8
  %339 = load i8*, i8** %11, align 8
  %340 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 13
  store i8* %339, i8** %340, align 8
  %341 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 13
  %342 = load i8*, i8** %341, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %344, label %355

344:                                              ; preds = %331
  %345 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %346 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @NL80211_FEATURE_P2P_GO_OPPPS, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %344
  %353 = load i32, i32* @EINVAL, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %3, align 4
  br label %640

355:                                              ; preds = %344, %331
  br label %356

356:                                              ; preds = %355, %312
  %357 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %358 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %357, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %375

364:                                              ; preds = %356
  %365 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %366 = bitcast %struct.cfg80211_registered_device* %365 to %struct.net_device*
  %367 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %368 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %369 = call i32 @nl80211_parse_chandef(%struct.net_device* %366, %struct.genl_info* %367, %struct.TYPE_10__* %368)
  store i32 %369, i32* %10, align 4
  %370 = load i32, i32* %10, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %364
  %373 = load i32, i32* %10, align 4
  store i32 %373, i32* %3, align 4
  br label %640

374:                                              ; preds = %364
  br label %397

375:                                              ; preds = %356
  %376 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %377 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %376, i32 0, i32 6
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %378, align 8
  %380 = icmp ne %struct.TYPE_7__* %379, null
  br i1 %380, label %381, label %387

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %383 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %384 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %383, i32 0, i32 6
  %385 = bitcast %struct.TYPE_10__* %382 to i8*
  %386 = bitcast %struct.TYPE_10__* %384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %385, i8* align 8 %386, i64 8, i1 false)
  br label %396

387:                                              ; preds = %375
  %388 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %389 = bitcast %struct.cfg80211_registered_device* %388 to %struct.net_device*
  %390 = call i32 @nl80211_get_ap_channel(%struct.net_device* %389, %struct.cfg80211_ap_settings* %9)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %387
  %393 = load i32, i32* @EINVAL, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %3, align 4
  br label %640

395:                                              ; preds = %387
  br label %396

396:                                              ; preds = %395, %381
  br label %397

397:                                              ; preds = %396, %374
  %398 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %399 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %401 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %402 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @cfg80211_reg_can_beacon_relax(%struct.TYPE_9__* %399, %struct.TYPE_10__* %400, i64 %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %397
  %407 = load i32, i32* @EINVAL, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %3, align 4
  br label %640

409:                                              ; preds = %397
  %410 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %411 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %410, i32 0, i32 1
  %412 = load i64*, i64** %411, align 8
  %413 = load i64, i64* @NL80211_ATTR_TX_RATES, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %440

417:                                              ; preds = %409
  %418 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %419 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 12
  %420 = call i32 @nl80211_parse_tx_bitrate_mask(%struct.genl_info* %418, i32* %419)
  store i32 %420, i32* %10, align 4
  %421 = load i32, i32* %10, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %417
  %424 = load i32, i32* %10, align 4
  store i32 %424, i32* %3, align 4
  br label %640

425:                                              ; preds = %417
  %426 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %427 = bitcast %struct.cfg80211_registered_device* %426 to %struct.net_device*
  %428 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 12
  %434 = call i32 @validate_beacon_tx_rate(%struct.net_device* %427, i32 %432, i32* %433)
  store i32 %434, i32* %10, align 4
  %435 = load i32, i32* %10, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %425
  %438 = load i32, i32* %10, align 4
  store i32 %438, i32* %3, align 4
  br label %640

439:                                              ; preds = %425
  br label %440

440:                                              ; preds = %439, %409
  %441 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %442 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %441, i32 0, i32 1
  %443 = load i64*, i64** %442, align 8
  %444 = load i64, i64* @NL80211_ATTR_SMPS_MODE, align 8
  %445 = getelementptr inbounds i64, i64* %443, i64 %444
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %489

448:                                              ; preds = %440
  %449 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %450 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %449, i32 0, i32 1
  %451 = load i64*, i64** %450, align 8
  %452 = load i64, i64* @NL80211_ATTR_SMPS_MODE, align 8
  %453 = getelementptr inbounds i64, i64* %451, i64 %452
  %454 = load i64, i64* %453, align 8
  %455 = call i8* @nla_get_u8(i64 %454)
  %456 = ptrtoint i8* %455 to i32
  %457 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 3
  store i32 %456, i32* %457, align 8
  %458 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  switch i32 %459, label %485 [
    i32 129, label %460
    i32 128, label %461
    i32 130, label %473
  ]

460:                                              ; preds = %448
  br label %488

461:                                              ; preds = %448
  %462 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %463 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @NL80211_FEATURE_STATIC_SMPS, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %461
  %470 = load i32, i32* @EINVAL, align 4
  %471 = sub nsw i32 0, %470
  store i32 %471, i32* %3, align 4
  br label %640

472:                                              ; preds = %461
  br label %488

473:                                              ; preds = %448
  %474 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %475 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @NL80211_FEATURE_DYNAMIC_SMPS, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %473
  %482 = load i32, i32* @EINVAL, align 4
  %483 = sub nsw i32 0, %482
  store i32 %483, i32* %3, align 4
  br label %640

484:                                              ; preds = %473
  br label %488

485:                                              ; preds = %448
  %486 = load i32, i32* @EINVAL, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %3, align 4
  br label %640

488:                                              ; preds = %484, %472, %460
  br label %491

489:                                              ; preds = %440
  %490 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 3
  store i32 129, i32* %490, align 8
  br label %491

491:                                              ; preds = %489, %488
  %492 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %493 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %492, i32 0, i32 1
  %494 = load i64*, i64** %493, align 8
  %495 = load i64, i64* @NL80211_ATTR_PBSS, align 8
  %496 = getelementptr inbounds i64, i64* %494, i64 %495
  %497 = load i64, i64* %496, align 8
  %498 = call i8* @nla_get_flag(i64 %497)
  %499 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 11
  store i8* %498, i8** %499, align 8
  %500 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 11
  %501 = load i8*, i8** %500, align 8
  %502 = icmp ne i8* %501, null
  br i1 %502, label %503, label %515

503:                                              ; preds = %491
  %504 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %505 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  %507 = load i32*, i32** %506, align 8
  %508 = load i64, i64* @NL80211_BAND_60GHZ, align 8
  %509 = getelementptr inbounds i32, i32* %507, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %503
  %513 = load i32, i32* @EOPNOTSUPP, align 4
  %514 = sub nsw i32 0, %513
  store i32 %514, i32* %3, align 4
  br label %640

515:                                              ; preds = %503, %491
  %516 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %517 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %516, i32 0, i32 1
  %518 = load i64*, i64** %517, align 8
  %519 = load i64, i64* @NL80211_ATTR_ACL_POLICY, align 8
  %520 = getelementptr inbounds i64, i64* %518, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %538

523:                                              ; preds = %515
  %524 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %525 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %524, i32 0, i32 0
  %526 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %527 = call i32 @parse_acl_data(%struct.TYPE_9__* %525, %struct.genl_info* %526)
  %528 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 4
  store i32 %527, i32* %528, align 4
  %529 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 4
  %530 = load i32, i32* %529, align 4
  %531 = call i64 @IS_ERR(i32 %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %523
  %534 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 4
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @PTR_ERR(i32 %535)
  store i32 %536, i32* %3, align 4
  br label %640

537:                                              ; preds = %523
  br label %538

538:                                              ; preds = %537, %515
  %539 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %540 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %539, i32 0, i32 1
  %541 = load i64*, i64** %540, align 8
  %542 = load i64, i64* @NL80211_ATTR_TWT_RESPONDER, align 8
  %543 = getelementptr inbounds i64, i64* %541, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = call i8* @nla_get_flag(i64 %544)
  %546 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 10
  store i8* %545, i8** %546, align 8
  %547 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %548 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %547, i32 0, i32 1
  %549 = load i64*, i64** %548, align 8
  %550 = load i64, i64* @NL80211_ATTR_HE_OBSS_PD, align 8
  %551 = getelementptr inbounds i64, i64* %549, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %568

554:                                              ; preds = %538
  %555 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %556 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %555, i32 0, i32 1
  %557 = load i64*, i64** %556, align 8
  %558 = load i64, i64* @NL80211_ATTR_HE_OBSS_PD, align 8
  %559 = getelementptr inbounds i64, i64* %557, i64 %558
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 9
  %562 = call i32 @nl80211_parse_he_obss_pd(i64 %560, i32* %561)
  store i32 %562, i32* %10, align 4
  %563 = load i32, i32* %10, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %567

565:                                              ; preds = %554
  %566 = load i32, i32* %10, align 4
  store i32 %566, i32* %3, align 4
  br label %640

567:                                              ; preds = %554
  br label %568

568:                                              ; preds = %567, %538
  %569 = call i32 @nl80211_calculate_ap_params(%struct.cfg80211_ap_settings* %9)
  %570 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %571 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %570, i32 0, i32 1
  %572 = load i64*, i64** %571, align 8
  %573 = load i64, i64* @NL80211_ATTR_EXTERNAL_AUTH_SUPPORT, align 8
  %574 = getelementptr inbounds i64, i64* %572, i64 %573
  %575 = load i64, i64* %574, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %582

577:                                              ; preds = %568
  %578 = load i32, i32* @AP_SETTINGS_EXTERNAL_AUTH_SUPPORT, align 4
  %579 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 8
  %580 = load i32, i32* %579, align 8
  %581 = or i32 %580, %578
  store i32 %581, i32* %579, align 8
  br label %582

582:                                              ; preds = %577, %568
  %583 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %584 = call i32 @wdev_lock(%struct.wireless_dev* %583)
  %585 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %586 = bitcast %struct.cfg80211_registered_device* %585 to %struct.net_device*
  %587 = load %struct.net_device*, %struct.net_device** %7, align 8
  %588 = call i32 @rdev_start_ap(%struct.net_device* %586, %struct.net_device* %587, %struct.cfg80211_ap_settings* %9)
  store i32 %588, i32* %10, align 4
  %589 = load i32, i32* %10, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %633, label %591

591:                                              ; preds = %582
  %592 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %593 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %592, i32 0, i32 6
  %594 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %595 = bitcast %struct.TYPE_10__* %593 to i8*
  %596 = bitcast %struct.TYPE_10__* %594 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %595, i8* align 8 %596, i64 8, i1 false)
  %597 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 7
  %598 = load i8*, i8** %597, align 8
  %599 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %600 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %599, i32 0, i32 5
  store i8* %598, i8** %600, align 8
  %601 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %602 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %601, i32 0, i32 4
  %603 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 6
  %604 = bitcast %struct.TYPE_10__* %602 to i8*
  %605 = bitcast %struct.TYPE_10__* %603 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %604, i8* align 8 %605, i64 8, i1 false)
  %606 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %609 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %608, i32 0, i32 1
  store i64 %607, i64* %609, align 8
  %610 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %611 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %610, i32 0, i32 3
  %612 = load i32, i32* %611, align 4
  %613 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 5
  %614 = load i32, i32* %613, align 8
  %615 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %616 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %615, i32 0, i32 1
  %617 = load i64, i64* %616, align 8
  %618 = call i32 @memcpy(i32 %612, i32 %614, i64 %617)
  %619 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %620 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %619, i32 0, i32 1
  %621 = load i64*, i64** %620, align 8
  %622 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %623 = getelementptr inbounds i64, i64* %621, i64 %622
  %624 = load i64, i64* %623, align 8
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %632

626:                                              ; preds = %591
  %627 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %628 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %631 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %630, i32 0, i32 2
  store i32 %629, i32* %631, align 8
  br label %632

632:                                              ; preds = %626, %591
  br label %633

633:                                              ; preds = %632, %582
  %634 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %635 = call i32 @wdev_unlock(%struct.wireless_dev* %634)
  %636 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %9, i32 0, i32 4
  %637 = load i32, i32* %636, align 4
  %638 = call i32 @kfree(i32 %637)
  %639 = load i32, i32* %10, align 4
  store i32 %639, i32* %3, align 4
  br label %640

640:                                              ; preds = %633, %565, %533, %512, %485, %481, %469, %437, %423, %406, %392, %372, %352, %328, %308, %284, %256, %238, %222, %166, %131, %100, %87, %59, %51, %41
  %641 = load i32, i32* %3, align 4
  ret i32 %641
}

declare dso_local i32 @memset(%struct.cfg80211_ap_settings*, i32, i32) #1

declare dso_local i32 @nl80211_parse_beacon(%struct.net_device*, i64*, i32*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @cfg80211_validate_beacon_int(%struct.net_device*, i64, i8*) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i64 @nla_len(i64) #1

declare dso_local i32 @nl80211_valid_auth_type(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @nl80211_crypto_settings(%struct.net_device*, %struct.genl_info*, i32*, i32) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nl80211_get_ap_channel(%struct.net_device*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @cfg80211_reg_can_beacon_relax(%struct.TYPE_9__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @nl80211_parse_tx_bitrate_mask(%struct.genl_info*, i32*) #1

declare dso_local i32 @validate_beacon_tx_rate(%struct.net_device*, i32, i32*) #1

declare dso_local i8* @nla_get_flag(i64) #1

declare dso_local i32 @parse_acl_data(%struct.TYPE_9__*, %struct.genl_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nl80211_parse_he_obss_pd(i64, i32*) #1

declare dso_local i32 @nl80211_calculate_ap_params(%struct.cfg80211_ap_settings*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_start_ap(%struct.net_device*, %struct.net_device*, %struct.cfg80211_ap_settings*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

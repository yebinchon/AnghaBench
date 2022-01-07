; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_station.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.station_parameters = type { i32, i32, i32, i64, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_AID = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_LISTEN_INTERVAL = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_SUPPORT_P2P_PS = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_SUPPORTED_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_CAPABILITY = common dso_local global i64 0, align 8
@STATION_PARAM_APPLY_CAPABILITY = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_EXT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_PLINK_ACTION = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_PLINK_STATE = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_PEER_AID = common dso_local global i64 0, align 8
@STATION_PARAM_APPLY_PLINK_STATE = common dso_local global i32 0, align 4
@NL80211_ATTR_LOCAL_MESH_POWER_MODE = common dso_local global i64 0, align 8
@NL80211_ATTR_OPMODE_NOTIF = common dso_local global i64 0, align 8
@NL80211_ATTR_AIRTIME_WEIGHT = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_AIRTIME_FAIRNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_station(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.station_parameters, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %7, align 8
  %22 = call i32 @memset(%struct.station_parameters* %8, i32 0, i32 120)
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %365

32:                                               ; preds = %2
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_STA_AID, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @NL80211_ATTR_STA_AID, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @nla_get_u16(i64 %46)
  %48 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 16
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %32
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @NL80211_ATTR_STA_LISTEN_INTERVAL, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @NL80211_ATTR_STA_LISTEN_INTERVAL, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @nla_get_u16(i64 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %69

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  br label %69

69:                                               ; preds = %67, %57
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NL80211_ATTR_STA_SUPPORT_P2P_PS, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_STA_SUPPORT_P2P_PS, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @nla_get_u8(i64 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  br label %89

87:                                               ; preds = %69
  %88 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 1
  store i32 -1, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %77
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %365

100:                                              ; preds = %89
  %101 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %102 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @nla_data(i64 %106)
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %9, align 8
  %109 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %110 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_RATES, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %100
  %117 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %118 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_RATES, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @nla_data(i64 %122)
  %124 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 15
  store i8* %123, i8** %124, align 8
  %125 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %126 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_RATES, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @nla_len(i64 %130)
  %132 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 14
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %116, %100
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_STA_CAPABILITY, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %133
  %142 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %143 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @NL80211_ATTR_STA_CAPABILITY, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @nla_get_u16(i64 %147)
  %149 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 13
  store i8* %148, i8** %149, align 8
  %150 = load i32, i32* @STATION_PARAM_APPLY_CAPABILITY, align 4
  %151 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %141, %133
  %155 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %156 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @NL80211_ATTR_STA_EXT_CAPABILITY, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %154
  %163 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %164 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @NL80211_ATTR_STA_EXT_CAPABILITY, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @nla_data(i64 %168)
  %170 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 12
  store i8* %169, i8** %170, align 8
  %171 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %172 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @NL80211_ATTR_STA_EXT_CAPABILITY, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @nla_len(i64 %176)
  %178 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 11
  store i8* %177, i8** %178, align 8
  br label %179

179:                                              ; preds = %162, %154
  %180 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %181 = load %struct.net_device*, %struct.net_device** %7, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @parse_station_flags(%struct.genl_info* %180, i32 %185, %struct.station_parameters* %8)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %365

191:                                              ; preds = %179
  %192 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %193 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* @NL80211_ATTR_STA_PLINK_ACTION, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %191
  %200 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %201 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* @NL80211_ATTR_STA_PLINK_ACTION, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @nla_get_u8(i64 %205)
  %207 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 10
  store i8* %206, i8** %207, align 8
  br label %208

208:                                              ; preds = %199, %191
  %209 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %210 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = load i64, i64* @NL80211_ATTR_STA_PLINK_STATE, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %246

216:                                              ; preds = %208
  %217 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %218 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i64, i64* @NL80211_ATTR_STA_PLINK_STATE, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @nla_get_u8(i64 %222)
  %224 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 9
  store i8* %223, i8** %224, align 8
  %225 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %226 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* @NL80211_ATTR_MESH_PEER_AID, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %216
  %233 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %234 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @NL80211_ATTR_MESH_PEER_AID, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = call i8* @nla_get_u16(i64 %238)
  %240 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 8
  store i8* %239, i8** %240, align 8
  br label %241

241:                                              ; preds = %232, %216
  %242 = load i32, i32* @STATION_PARAM_APPLY_PLINK_STATE, align 4
  %243 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 7
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %242
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %241, %208
  %247 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %248 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = load i64, i64* @NL80211_ATTR_LOCAL_MESH_POWER_MODE, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %246
  %255 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %256 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %255, i32 0, i32 0
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* @NL80211_ATTR_LOCAL_MESH_POWER_MODE, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @nla_get_u32(i64 %260)
  %262 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 6
  store i32 %261, i32* %262, align 8
  br label %263

263:                                              ; preds = %254, %246
  %264 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %265 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %264, i32 0, i32 0
  %266 = load i64*, i64** %265, align 8
  %267 = load i64, i64* @NL80211_ATTR_OPMODE_NOTIF, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 2
  store i32 1, i32* %272, align 8
  %273 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %274 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = load i64, i64* @NL80211_ATTR_OPMODE_NOTIF, align 8
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = call i8* @nla_get_u8(i64 %278)
  %280 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 5
  store i8* %279, i8** %280, align 8
  br label %281

281:                                              ; preds = %271, %263
  %282 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %283 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i64, i64* @NL80211_ATTR_AIRTIME_WEIGHT, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %281
  %290 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %291 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = load i64, i64* @NL80211_ATTR_AIRTIME_WEIGHT, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = call i8* @nla_get_u16(i64 %295)
  %297 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  store i8* %296, i8** %297, align 8
  br label %298

298:                                              ; preds = %289, %281
  %299 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 4
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %311

302:                                              ; preds = %298
  %303 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %304 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %303, i32 0, i32 1
  %305 = load i32, i32* @NL80211_EXT_FEATURE_AIRTIME_FAIRNESS, align 4
  %306 = call i32 @wiphy_ext_feature_isset(i32* %304, i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  %309 = load i32, i32* @EOPNOTSUPP, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %3, align 4
  br label %365

311:                                              ; preds = %302, %298
  %312 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %313 = call i32 @nl80211_parse_sta_txpower_setting(%struct.genl_info* %312, %struct.station_parameters* %8)
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %3, align 4
  br label %365

318:                                              ; preds = %311
  %319 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %320 = call i32 @nl80211_set_station_tdls(%struct.genl_info* %319, %struct.station_parameters* %8)
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = load i32, i32* %10, align 4
  store i32 %324, i32* %3, align 4
  br label %365

325:                                              ; preds = %318
  %326 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %327 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %328 = bitcast %struct.cfg80211_registered_device* %327 to %struct.net_device*
  %329 = call i64 @get_vlan(%struct.genl_info* %326, %struct.net_device* %328)
  %330 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 3
  store i64 %329, i64* %330, align 8
  %331 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @IS_ERR(i64 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %325
  %336 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @PTR_ERR(i64 %337)
  store i32 %338, i32* %3, align 4
  br label %365

339:                                              ; preds = %325
  %340 = load %struct.net_device*, %struct.net_device** %7, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 0
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  switch i32 %344, label %346 [
    i32 133, label %345
    i32 132, label %345
    i32 129, label %345
    i32 130, label %345
    i32 128, label %345
    i32 134, label %345
    i32 131, label %345
  ]

345:                                              ; preds = %339, %339, %339, %339, %339, %339, %339
  br label %349

346:                                              ; preds = %339
  %347 = load i32, i32* @EOPNOTSUPP, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %10, align 4
  br label %355

349:                                              ; preds = %345
  %350 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %351 = bitcast %struct.cfg80211_registered_device* %350 to %struct.net_device*
  %352 = load %struct.net_device*, %struct.net_device** %7, align 8
  %353 = load i32*, i32** %9, align 8
  %354 = call i32 @rdev_change_station(%struct.net_device* %351, %struct.net_device* %352, i32* %353, %struct.station_parameters* %8)
  store i32 %354, i32* %10, align 4
  br label %355

355:                                              ; preds = %349, %346
  %356 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %8, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @dev_put(i64 %361)
  br label %363

363:                                              ; preds = %359, %355
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %3, align 4
  br label %365

365:                                              ; preds = %363, %335, %323, %316, %308, %188, %97, %29
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32 @memset(%struct.station_parameters*, i32, i32) #1

declare dso_local i8* @nla_get_u16(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i64 @parse_station_flags(%struct.genl_info*, i32, %struct.station_parameters*) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

declare dso_local i32 @nl80211_parse_sta_txpower_setting(%struct.genl_info*, %struct.station_parameters*) #1

declare dso_local i32 @nl80211_set_station_tdls(%struct.genl_info*, %struct.station_parameters*) #1

declare dso_local i64 @get_vlan(%struct.genl_info*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @rdev_change_station(%struct.net_device*, %struct.net_device*, i32*, %struct.station_parameters*) #1

declare dso_local i32 @dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

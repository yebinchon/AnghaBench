; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_join_mesh.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_join_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.mesh_config = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i64, i8*, i32, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.mesh_setup = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i64, i8*, i32, i8*, i8* }

@default_mesh_config = common dso_local global i32 0, align 4
@default_mesh_setup = common dso_local global i32 0, align 4
@NL80211_ATTR_MESH_CONFIG = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MCAST_RATE = common dso_local global i64 0, align 8
@NL80211_ATTR_BEACON_INTERVAL = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_ATTR_DTIM_PERIOD = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_SETUP = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_BSS_BASIC_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_TX_RATES = common dso_local global i64 0, align 8
@NL80211_ATTR_HANDLE_DFS = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT_OVER_NL80211 = common dso_local global i64 0, align 8
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_join_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_join_mesh(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mesh_config, align 8
  %9 = alloca %struct.mesh_setup, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
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
  %26 = bitcast %struct.mesh_config* %8 to %struct.mesh_setup*
  %27 = call i32 @memcpy(%struct.mesh_setup* %26, i32* @default_mesh_config, i32 80)
  %28 = call i32 @memcpy(%struct.mesh_setup* %9, i32* @default_mesh_setup, i32 80)
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_MESH_CONFIG, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = bitcast %struct.mesh_config* %8 to %struct.mesh_setup*
  %39 = call i32 @nl80211_parse_mesh_config(%struct.genl_info* %37, %struct.mesh_setup* %38, i32* null)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %361

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @nla_len(i64 %59)
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53, %45
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %361

65:                                               ; preds = %53
  %66 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %67 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @nla_data(i64 %71)
  %73 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 11
  store i8* %72, i8** %73, align 8
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @nla_len(i64 %79)
  %81 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 10
  store i8* %80, i8** %81, align 8
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %65
  %90 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %91 = bitcast %struct.cfg80211_registered_device* %90 to %struct.net_device*
  %92 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @nla_get_u32(i64 %99)
  %101 = call i32 @nl80211_parse_mcast_rate(%struct.net_device* %91, i32 %93, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %361

106:                                              ; preds = %89, %65
  %107 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %108 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %106
  %115 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %116 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @nla_get_u32(i64 %120)
  %122 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 8
  store i8* %121, i8** %122, align 8
  %123 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %124 = bitcast %struct.cfg80211_registered_device* %123 to %struct.net_device*
  %125 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %126 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 8
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @cfg80211_validate_beacon_int(%struct.net_device* %124, i32 %125, i8* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %114
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %361

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %133, %106
  %135 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %136 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %134
  %143 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %144 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @nla_get_u32(i64 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %159, label %155

155:                                              ; preds = %142
  %156 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 100
  br i1 %158, label %159, label %162

159:                                              ; preds = %155, %142
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %361

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %134
  %164 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %165 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* @NL80211_ATTR_MESH_SETUP, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %163
  %172 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %173 = call i32 @nl80211_parse_mesh_setup(%struct.genl_info* %172, %struct.mesh_setup* %9)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %3, align 4
  br label %361

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %163
  %180 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %8, i32 0, i32 1
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %183, %179
  %186 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %187 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %185
  %194 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %195 = bitcast %struct.cfg80211_registered_device* %194 to %struct.net_device*
  %196 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %197 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %198 = call i32 @nl80211_parse_chandef(%struct.net_device* %195, %struct.genl_info* %196, %struct.TYPE_9__* %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %3, align 4
  br label %361

203:                                              ; preds = %193
  br label %207

204:                                              ; preds = %185
  %205 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %206, align 8
  br label %207

207:                                              ; preds = %204, %203
  %208 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %209 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %208, i32 0, i32 1
  %210 = load i64*, i64** %209, align 8
  %211 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %261

215:                                              ; preds = %207
  %216 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %217 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @nla_data(i64 %221)
  %223 = bitcast i8* %222 to i32*
  store i32* %223, i32** %11, align 8
  %224 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %225 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @NL80211_ATTR_BSS_BASIC_RATES, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call i8* @nla_len(i64 %229)
  %231 = ptrtoint i8* %230 to i32
  store i32 %231, i32* %12, align 4
  %232 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = icmp ne %struct.TYPE_7__* %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %215
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %3, align 4
  br label %361

239:                                              ; preds = %215
  %240 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %241 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %242, align 8
  %244 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %243, i64 %248
  %250 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %249, align 8
  store %struct.ieee80211_supported_band* %250, %struct.ieee80211_supported_band** %13, align 8
  %251 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %252 = load i32*, i32** %11, align 8
  %253 = load i32, i32* %12, align 4
  %254 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 6
  %255 = call i32 @ieee80211_get_ratemask(%struct.ieee80211_supported_band* %251, i32* %252, i32 %253, i32* %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %239
  %259 = load i32, i32* %10, align 4
  store i32 %259, i32* %3, align 4
  br label %361

260:                                              ; preds = %239
  br label %261

261:                                              ; preds = %260, %207
  %262 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %263 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* @NL80211_ATTR_TX_RATES, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %300

269:                                              ; preds = %261
  %270 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %271 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 4
  %272 = call i32 @nl80211_parse_tx_bitrate_mask(%struct.genl_info* %270, i32* %271)
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %10, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load i32, i32* %10, align 4
  store i32 %276, i32* %3, align 4
  br label %361

277:                                              ; preds = %269
  %278 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = icmp ne %struct.TYPE_7__* %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %3, align 4
  br label %361

285:                                              ; preds = %277
  %286 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %287 = bitcast %struct.cfg80211_registered_device* %286 to %struct.net_device*
  %288 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 4
  %294 = call i32 @validate_beacon_tx_rate(%struct.net_device* %287, i64 %292, i32* %293)
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %285
  %298 = load i32, i32* %10, align 4
  store i32 %298, i32* %3, align 4
  br label %361

299:                                              ; preds = %285
  br label %300

300:                                              ; preds = %299, %261
  %301 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %302 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %301, i32 0, i32 1
  %303 = load i64*, i64** %302, align 8
  %304 = load i64, i64* @NL80211_ATTR_HANDLE_DFS, align 8
  %305 = getelementptr inbounds i64, i64* %303, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @nla_get_flag(i64 %306)
  %308 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 3
  store i32 %307, i32* %308, align 4
  %309 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %310 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %309, i32 0, i32 1
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_OVER_NL80211, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %327

316:                                              ; preds = %300
  %317 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %318 = bitcast %struct.cfg80211_registered_device* %317 to %struct.net_device*
  %319 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %320 = call i32 @validate_pae_over_nl80211(%struct.net_device* %318, %struct.genl_info* %319)
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* %14, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* %14, align 4
  store i32 %324, i32* %3, align 4
  br label %361

325:                                              ; preds = %316
  %326 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 2
  store i32 1, i32* %326, align 8
  br label %327

327:                                              ; preds = %325, %300
  %328 = load %struct.net_device*, %struct.net_device** %7, align 8
  %329 = getelementptr inbounds %struct.net_device, %struct.net_device* %328, i32 0, i32 0
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = call i32 @wdev_lock(%struct.TYPE_8__* %330)
  %332 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %333 = bitcast %struct.cfg80211_registered_device* %332 to %struct.net_device*
  %334 = load %struct.net_device*, %struct.net_device** %7, align 8
  %335 = bitcast %struct.mesh_config* %8 to %struct.mesh_setup*
  %336 = call i32 @__cfg80211_join_mesh(%struct.net_device* %333, %struct.net_device* %334, %struct.mesh_setup* %9, %struct.mesh_setup* %335)
  store i32 %336, i32* %10, align 4
  %337 = load i32, i32* %10, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %355, label %339

339:                                              ; preds = %327
  %340 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %341 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %340, i32 0, i32 1
  %342 = load i64*, i64** %341, align 8
  %343 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %344 = getelementptr inbounds i64, i64* %342, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %339
  %348 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %349 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.net_device*, %struct.net_device** %7, align 8
  %352 = getelementptr inbounds %struct.net_device, %struct.net_device* %351, i32 0, i32 0
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  store i32 %350, i32* %354, align 4
  br label %355

355:                                              ; preds = %347, %339, %327
  %356 = load %struct.net_device*, %struct.net_device** %7, align 8
  %357 = getelementptr inbounds %struct.net_device, %struct.net_device* %356, i32 0, i32 0
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %357, align 8
  %359 = call i32 @wdev_unlock(%struct.TYPE_8__* %358)
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %355, %323, %297, %282, %275, %258, %236, %201, %176, %159, %131, %103, %62, %42
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32 @memcpy(%struct.mesh_setup*, i32*, i32) #1

declare dso_local i32 @nl80211_parse_mesh_config(%struct.genl_info*, %struct.mesh_setup*, i32*) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @nl80211_parse_mcast_rate(%struct.net_device*, i32, i8*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @cfg80211_validate_beacon_int(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @nl80211_parse_mesh_setup(%struct.genl_info*, %struct.mesh_setup*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.TYPE_9__*) #1

declare dso_local i32 @ieee80211_get_ratemask(%struct.ieee80211_supported_band*, i32*, i32, i32*) #1

declare dso_local i32 @nl80211_parse_tx_bitrate_mask(%struct.genl_info*, i32*) #1

declare dso_local i32 @validate_beacon_tx_rate(%struct.net_device*, i64, i32*) #1

declare dso_local i32 @nla_get_flag(i64) #1

declare dso_local i32 @validate_pae_over_nl80211(%struct.net_device*, %struct.genl_info*) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @__cfg80211_join_mesh(%struct.net_device*, %struct.net_device*, %struct.mesh_setup*, %struct.mesh_setup*) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

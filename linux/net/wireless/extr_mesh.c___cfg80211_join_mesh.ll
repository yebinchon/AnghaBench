; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mesh.c___cfg80211_join_mesh.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mesh.c___cfg80211_join_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32, %struct.TYPE_9__*, %struct.ieee80211_channel* }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_channel = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, %struct.TYPE_11__, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ieee80211_channel*, i32, i32 }
%struct.mesh_setup = type { i32, %struct.TYPE_11__, i64, i32, i32, i32, i64 }
%struct.mesh_config = type { i32 }

@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@IEEE80211_MAX_MESH_ID_LEN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WIPHY_FLAG_MESH_AUTH = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_join_mesh(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.mesh_setup* %2, %struct.mesh_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mesh_setup*, align 8
  %9 = alloca %struct.mesh_config*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_supported_band*, align 8
  %18 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.mesh_setup* %2, %struct.mesh_setup** %8, align 8
  store %struct.mesh_config* %3, %struct.mesh_config** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %10, align 8
  %22 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %23 = load i64, i64* @IEEE80211_MAX_MESH_ID_LEN, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %28 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %27)
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %30, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %317

39:                                               ; preds = %4
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @WIPHY_FLAG_MESH_AUTH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %49 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %317

55:                                               ; preds = %47, %39
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EALREADY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %317

63:                                               ; preds = %55
  %64 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %65 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %317

71:                                               ; preds = %63
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %73 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %317

81:                                               ; preds = %71
  %82 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %83 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %84, align 8
  %86 = icmp ne %struct.ieee80211_channel* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %89 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %88, i32 0, i32 1
  %90 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %91 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %90, i32 0, i32 5
  %92 = bitcast %struct.TYPE_11__* %89 to i8*
  %93 = bitcast %struct.TYPE_11__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  br label %94

94:                                               ; preds = %87, %81
  %95 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %96 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %97, align 8
  %99 = icmp ne %struct.ieee80211_channel* %98, null
  br i1 %99, label %184, label %100

100:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %158, %100
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %161

105:                                              ; preds = %101
  %106 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %107 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %109, i64 %111
  %113 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %112, align 8
  store %struct.ieee80211_supported_band* %113, %struct.ieee80211_supported_band** %13, align 8
  %114 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %115 = icmp ne %struct.ieee80211_supported_band* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  br label %158

117:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %147, %117
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %121 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %150

124:                                              ; preds = %118
  %125 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %126 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %125, i32 0, i32 3
  %127 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %127, i64 %129
  store %struct.ieee80211_channel* %130, %struct.ieee80211_channel** %14, align 8
  %131 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %132 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %135 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %133, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %124
  br label %147

142:                                              ; preds = %124
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %144 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %145 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store %struct.ieee80211_channel* %143, %struct.ieee80211_channel** %146, align 8
  br label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %118

150:                                              ; preds = %142, %118
  %151 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %152 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %153, align 8
  %155 = icmp ne %struct.ieee80211_channel* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %161

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %116
  %159 = load i32, i32* %12, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %101

161:                                              ; preds = %156, %101
  %162 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %163 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %164, align 8
  %166 = icmp ne %struct.ieee80211_channel* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %317

170:                                              ; preds = %161
  %171 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %172 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %173 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 4
  %175 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %176 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %177, align 8
  %179 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %182 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 8
  br label %184

184:                                              ; preds = %170, %94
  %185 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %186 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %247, label %189

189:                                              ; preds = %184
  %190 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %191 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %192, align 8
  %194 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %195 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %196, align 8
  %198 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %193, i64 %199
  %201 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %200, align 8
  store %struct.ieee80211_supported_band* %201, %struct.ieee80211_supported_band** %17, align 8
  %202 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %203 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %204, align 8
  %206 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %237

210:                                              ; preds = %189
  store i32 0, i32* %18, align 4
  br label %211

211:                                              ; preds = %233, %210
  %212 = load i32, i32* %18, align 4
  %213 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %214 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %211
  %218 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %219 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %218, i32 0, i32 2
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 10
  br i1 %226, label %227, label %232

227:                                              ; preds = %217
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @BIT(i32 %228)
  %230 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %231 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %230, i32 0, i32 5
  store i32 %229, i32* %231, align 8
  br label %236

232:                                              ; preds = %217
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %211

236:                                              ; preds = %227, %211
  br label %246

237:                                              ; preds = %189
  %238 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %239 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %238, i32 0, i32 1
  %240 = call i32 @cfg80211_chandef_to_scan_width(%struct.TYPE_11__* %239)
  store i32 %240, i32* %16, align 4
  %241 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %242 = load i32, i32* %16, align 4
  %243 = call i32 @ieee80211_mandatory_rates(%struct.ieee80211_supported_band* %241, i32 %242)
  %244 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %245 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %244, i32 0, i32 5
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %237, %236
  br label %247

247:                                              ; preds = %246, %184
  %248 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %249 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %248, i32 0, i32 0
  %250 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %251 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %250, i32 0, i32 1
  %252 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %253 = call i32 @cfg80211_chandef_dfs_required(%struct.TYPE_10__* %249, %struct.TYPE_11__* %251, i64 %252)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %247
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %5, align 4
  br label %317

258:                                              ; preds = %247
  %259 = load i32, i32* %11, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %263 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %5, align 4
  br label %317

269:                                              ; preds = %261, %258
  %270 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %271 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %270, i32 0, i32 0
  %272 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %273 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %272, i32 0, i32 1
  %274 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %275 = call i32 @cfg80211_reg_can_beacon(%struct.TYPE_10__* %271, %struct.TYPE_11__* %273, i64 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %269
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %5, align 4
  br label %317

280:                                              ; preds = %269
  %281 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = load %struct.mesh_config*, %struct.mesh_config** %9, align 8
  %284 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %285 = call i32 @rdev_join_mesh(%struct.cfg80211_registered_device* %281, %struct.net_device* %282, %struct.mesh_config* %283, %struct.mesh_setup* %284)
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %315, label %288

288:                                              ; preds = %280
  %289 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %290 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %293 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %296 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @memcpy(i32 %291, i32 %294, i64 %297)
  %299 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %300 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %303 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %302, i32 0, i32 3
  store i64 %301, i64* %303, align 8
  %304 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %305 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %304, i32 0, i32 2
  %306 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %307 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %306, i32 0, i32 1
  %308 = bitcast %struct.TYPE_11__* %305 to i8*
  %309 = bitcast %struct.TYPE_11__* %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %308, i8* align 8 %309, i64 16, i1 false)
  %310 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %311 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %314 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 8
  br label %315

315:                                              ; preds = %288, %280
  %316 = load i32, i32* %11, align 4
  store i32 %316, i32* %5, align 4
  br label %317

317:                                              ; preds = %315, %277, %266, %256, %167, %78, %68, %60, %52, %36
  %318 = load i32, i32* %5, align 4
  ret i32 %318
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cfg80211_chandef_to_scan_width(%struct.TYPE_11__*) #1

declare dso_local i32 @ieee80211_mandatory_rates(%struct.ieee80211_supported_band*, i32) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(%struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @cfg80211_reg_can_beacon(%struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @rdev_join_mesh(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.mesh_config*, %struct.mesh_setup*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

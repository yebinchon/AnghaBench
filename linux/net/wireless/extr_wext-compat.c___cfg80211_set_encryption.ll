; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c___cfg80211_set_encryption.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c___cfg80211_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32*, %struct.key_params* }
%struct.TYPE_8__ = type { i32 }
%struct.key_params = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFG80211_MAX_WEP_KEYS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32, %struct.key_params*)* @__cfg80211_set_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cfg80211_set_encryption(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.key_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.key_params*, align 8
  %18 = alloca %struct.wireless_dev*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.key_params* %7, %struct.key_params** %17, align 8
  %22 = load %struct.net_device*, %struct.net_device** %11, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %23, align 8
  store %struct.wireless_dev* %24, %struct.wireless_dev** %18, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %503

33:                                               ; preds = %27, %8
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %83, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_10__* @kzalloc(i32 16, i32 %40)
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %44, align 8
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %503

53:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %54

54:                                               ; preds = %79, %53
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @CFG80211_MAX_WEP_KEYS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.key_params*, %struct.key_params** %73, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.key_params, %struct.key_params* %74, i64 %76
  %78 = getelementptr inbounds %struct.key_params, %struct.key_params* %77, i32 0, i32 1
  store i32 %68, i32* %78, align 8
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %20, align 4
  br label %54

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82, %33
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %91 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %503

98:                                               ; preds = %89, %83
  %99 = load %struct.key_params*, %struct.key_params** %17, align 8
  %100 = getelementptr inbounds %struct.key_params, %struct.key_params* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  %105 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %106 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @ENOLINK, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %503

112:                                              ; preds = %104
  %113 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %114 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* @EOPNOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %503

122:                                              ; preds = %112
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %16, align 4
  %127 = icmp sgt i32 %126, 5
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %122
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %9, align 4
  br label %503

131:                                              ; preds = %125
  br label %142

132:                                              ; preds = %98
  %133 = load i32, i32* %16, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = icmp sgt i32 %136, 3
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %132
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %503

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %131
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %281

145:                                              ; preds = %142
  store i32 0, i32* %19, align 4
  %146 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %147 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %194

150:                                              ; preds = %145
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %153 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %151, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %159 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %165 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %166 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device* %164, i32 %167, i32 1)
  store i32 1, i32* %21, align 4
  br label %169

169:                                              ; preds = %163, %157, %150
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %169
  %173 = load i32*, i32** %13, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %186

175:                                              ; preds = %172
  %176 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %177 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* @ENOENT, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %19, align 4
  br label %193

186:                                              ; preds = %175, %172, %169
  %187 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %188 = load %struct.net_device*, %struct.net_device** %11, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32*, i32** %13, align 8
  %192 = call i32 @rdev_del_key(%struct.cfg80211_registered_device* %187, %struct.net_device* %188, i32 %189, i32 %190, i32* %191)
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %186, %183
  br label %194

194:                                              ; preds = %193, %145
  %195 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %196 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* @ENOENT, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 0, i32* %19, align 4
  br label %204

204:                                              ; preds = %203, %194
  %205 = load i32, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %269, label %207

207:                                              ; preds = %204
  %208 = load i32*, i32** %13, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %245, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %16, align 4
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %213, label %245

213:                                              ; preds = %210
  %214 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %215 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @memset(i32 %223, i32 0, i32 4)
  %225 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %226 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load %struct.key_params*, %struct.key_params** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.key_params, %struct.key_params* %230, i64 %232
  %234 = getelementptr inbounds %struct.key_params, %struct.key_params* %233, i32 0, i32 2
  store i64 0, i64* %234, align 8
  %235 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %236 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load %struct.key_params*, %struct.key_params** %239, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.key_params, %struct.key_params* %240, i64 %242
  %244 = getelementptr inbounds %struct.key_params, %struct.key_params* %243, i32 0, i32 0
  store i64 0, i64* %244, align 8
  br label %245

245:                                              ; preds = %213, %210, %207
  %246 = load i32, i32* %16, align 4
  %247 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %248 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %246, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %254 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  store i32 -1, i32* %255, align 8
  br label %268

256:                                              ; preds = %245
  %257 = load i32, i32* %16, align 4
  %258 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %259 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %257, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %265 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  store i32 -1, i32* %266, align 4
  br label %267

267:                                              ; preds = %263, %256
  br label %268

268:                                              ; preds = %267, %252
  br label %269

269:                                              ; preds = %268, %204
  %270 = load i32, i32* %19, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %279, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %21, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %277 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %278 = call i32 @cfg80211_ibss_wext_join(%struct.cfg80211_registered_device* %276, %struct.wireless_dev* %277)
  store i32 %278, i32* %19, align 4
  br label %279

279:                                              ; preds = %275, %272, %269
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %9, align 4
  br label %503

281:                                              ; preds = %142
  %282 = load i32*, i32** %13, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i32 0, i32* %15, align 4
  br label %285

285:                                              ; preds = %284, %281
  %286 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %287 = load %struct.key_params*, %struct.key_params** %17, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %12, align 4
  %290 = load i32*, i32** %13, align 8
  %291 = call i64 @cfg80211_validate_key_settings(%struct.cfg80211_registered_device* %286, %struct.key_params* %287, i32 %288, i32 %289, i32* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %285
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %9, align 4
  br label %503

296:                                              ; preds = %285
  store i32 0, i32* %19, align 4
  %297 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %298 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %296
  %302 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %303 = load %struct.net_device*, %struct.net_device** %11, align 8
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %12, align 4
  %306 = load i32*, i32** %13, align 8
  %307 = load %struct.key_params*, %struct.key_params** %17, align 8
  %308 = call i32 @rdev_add_key(%struct.cfg80211_registered_device* %302, %struct.net_device* %303, i32 %304, i32 %305, i32* %306, %struct.key_params* %307)
  store i32 %308, i32* %19, align 4
  br label %325

309:                                              ; preds = %296
  %310 = load %struct.key_params*, %struct.key_params** %17, align 8
  %311 = getelementptr inbounds %struct.key_params, %struct.key_params* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %309
  %316 = load %struct.key_params*, %struct.key_params** %17, align 8
  %317 = getelementptr inbounds %struct.key_params, %struct.key_params* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %315
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %9, align 4
  br label %503

324:                                              ; preds = %315, %309
  br label %325

325:                                              ; preds = %324, %301
  %326 = load i32, i32* %19, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = load i32, i32* %19, align 4
  store i32 %329, i32* %9, align 4
  br label %503

330:                                              ; preds = %325
  %331 = load i32*, i32** %13, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %395, label %333

333:                                              ; preds = %330
  %334 = load %struct.key_params*, %struct.key_params** %17, align 8
  %335 = getelementptr inbounds %struct.key_params, %struct.key_params* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %345, label %339

339:                                              ; preds = %333
  %340 = load %struct.key_params*, %struct.key_params** %17, align 8
  %341 = getelementptr inbounds %struct.key_params, %struct.key_params* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %395

345:                                              ; preds = %339, %333
  %346 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %347 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 1
  %351 = load %struct.key_params*, %struct.key_params** %350, align 8
  %352 = load i32, i32* %16, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.key_params, %struct.key_params* %351, i64 %353
  %355 = load %struct.key_params*, %struct.key_params** %17, align 8
  %356 = bitcast %struct.key_params* %354 to i8*
  %357 = bitcast %struct.key_params* %355 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %356, i8* align 8 %357, i64 24, i1 false)
  %358 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %359 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.key_params*, %struct.key_params** %17, align 8
  %369 = getelementptr inbounds %struct.key_params, %struct.key_params* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.key_params*, %struct.key_params** %17, align 8
  %372 = getelementptr inbounds %struct.key_params, %struct.key_params* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @memcpy(i32 %367, i32 %370, i64 %373)
  %375 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %376 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %16, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %386 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 2
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 1
  %390 = load %struct.key_params*, %struct.key_params** %389, align 8
  %391 = load i32, i32* %16, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.key_params, %struct.key_params* %390, i64 %392
  %394 = getelementptr inbounds %struct.key_params, %struct.key_params* %393, i32 0, i32 1
  store i32 %384, i32* %394, align 8
  br label %395

395:                                              ; preds = %345, %339, %330
  %396 = load %struct.key_params*, %struct.key_params** %17, align 8
  %397 = getelementptr inbounds %struct.key_params, %struct.key_params* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %407, label %401

401:                                              ; preds = %395
  %402 = load %struct.key_params*, %struct.key_params** %17, align 8
  %403 = getelementptr inbounds %struct.key_params, %struct.key_params* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %464

407:                                              ; preds = %401, %395
  %408 = load i32, i32* %15, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %419, label %410

410:                                              ; preds = %407
  %411 = load i32*, i32** %13, align 8
  %412 = icmp ne i32* %411, null
  br i1 %412, label %464, label %413

413:                                              ; preds = %410
  %414 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %415 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = icmp eq i32 %417, -1
  br i1 %418, label %419, label %464

419:                                              ; preds = %413, %407
  %420 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %421 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %447

424:                                              ; preds = %419
  %425 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %426 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %442

430:                                              ; preds = %424
  %431 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %432 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp eq i32 %434, -1
  br i1 %435, label %436, label %442

436:                                              ; preds = %430
  %437 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %438 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %439 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device* %437, i32 %440, i32 1)
  store i32 1, i32* %21, align 4
  br label %442

442:                                              ; preds = %436, %430, %424
  %443 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %444 = load %struct.net_device*, %struct.net_device** %11, align 8
  %445 = load i32, i32* %16, align 4
  %446 = call i32 @rdev_set_default_key(%struct.cfg80211_registered_device* %443, %struct.net_device* %444, i32 %445, i32 1, i32 1)
  store i32 %446, i32* %19, align 4
  br label %447

447:                                              ; preds = %442, %419
  %448 = load i32, i32* %19, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %462, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %16, align 4
  %452 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %453 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 0
  store i32 %451, i32* %454, align 8
  %455 = load i32, i32* %21, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %450
  %458 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %459 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %460 = call i32 @cfg80211_ibss_wext_join(%struct.cfg80211_registered_device* %458, %struct.wireless_dev* %459)
  store i32 %460, i32* %19, align 4
  br label %461

461:                                              ; preds = %457, %450
  br label %462

462:                                              ; preds = %461, %447
  %463 = load i32, i32* %19, align 4
  store i32 %463, i32* %9, align 4
  br label %503

464:                                              ; preds = %413, %410, %401
  %465 = load %struct.key_params*, %struct.key_params** %17, align 8
  %466 = getelementptr inbounds %struct.key_params, %struct.key_params* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %502

470:                                              ; preds = %464
  %471 = load i32, i32* %15, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %482, label %473

473:                                              ; preds = %470
  %474 = load i32*, i32** %13, align 8
  %475 = icmp ne i32* %474, null
  br i1 %475, label %502, label %476

476:                                              ; preds = %473
  %477 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %478 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %482, label %502

482:                                              ; preds = %476, %470
  %483 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %484 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %482
  %488 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %489 = load %struct.net_device*, %struct.net_device** %11, align 8
  %490 = load i32, i32* %16, align 4
  %491 = call i32 @rdev_set_default_mgmt_key(%struct.cfg80211_registered_device* %488, %struct.net_device* %489, i32 %490)
  store i32 %491, i32* %19, align 4
  br label %492

492:                                              ; preds = %487, %482
  %493 = load i32, i32* %19, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %500, label %495

495:                                              ; preds = %492
  %496 = load i32, i32* %16, align 4
  %497 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %498 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 1
  store i32 %496, i32* %499, align 4
  br label %500

500:                                              ; preds = %495, %492
  %501 = load i32, i32* %19, align 4
  store i32 %501, i32* %9, align 4
  br label %503

502:                                              ; preds = %476, %473, %464
  store i32 0, i32* %9, align 4
  br label %503

503:                                              ; preds = %502, %500, %462, %328, %321, %293, %279, %138, %128, %119, %109, %95, %50, %30
  %504 = load i32, i32* %9, align 4
  ret i32 %504
}

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device*, i32, i32) #1

declare dso_local i32 @rdev_del_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cfg80211_ibss_wext_join(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i64 @cfg80211_validate_key_settings(%struct.cfg80211_registered_device*, %struct.key_params*, i32, i32, i32*) #1

declare dso_local i32 @rdev_add_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*, %struct.key_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @rdev_set_default_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rdev_set_default_mgmt_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cmp_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cmp_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i64*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_bss_ies = type { i32, i32 }

@WLAN_EID_MESH_ID = common dso_local global i32 0, align 4
@WLAN_EID_MESH_CONFIG = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_bss*, %struct.cfg80211_bss*, i32)* @cmp_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_bss(%struct.cfg80211_bss* %0, %struct.cfg80211_bss* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_bss_ies*, align 8
  %9 = alloca %struct.cfg80211_bss_ies*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cfg80211_bss* %0, %struct.cfg80211_bss** %5, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* null, i64** %10, align 8
  store i64* null, i64** %11, align 8
  %15 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %19 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %27, %32
  store i32 %33, i32* %4, align 4
  br label %282

34:                                               ; preds = %3
  %35 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %36 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.cfg80211_bss_ies* @rcu_access_pointer(i32 %37)
  store %struct.cfg80211_bss_ies* %38, %struct.cfg80211_bss_ies** %8, align 8
  %39 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %40 = icmp ne %struct.cfg80211_bss_ies* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %282

42:                                               ; preds = %34
  %43 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %44 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.cfg80211_bss_ies* @rcu_access_pointer(i32 %45)
  store %struct.cfg80211_bss_ies* %46, %struct.cfg80211_bss_ies** %9, align 8
  %47 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %48 = icmp ne %struct.cfg80211_bss_ies* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %282

50:                                               ; preds = %42
  %51 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @WLAN_CAPABILITY_IS_STA_BSS(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* @WLAN_EID_MESH_ID, align 4
  %58 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %59 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %62 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64* @cfg80211_find_ie(i32 %57, i32 %60, i32 %63)
  store i64* %64, i64** %10, align 8
  br label %65

65:                                               ; preds = %56, %50
  %66 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %67 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @WLAN_CAPABILITY_IS_STA_BSS(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* @WLAN_EID_MESH_ID, align 4
  %73 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %74 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %77 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64* @cfg80211_find_ie(i32 %72, i32 %75, i32 %78)
  store i64* %79, i64** %11, align 8
  br label %80

80:                                               ; preds = %71, %65
  %81 = load i64*, i64** %10, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %166

83:                                               ; preds = %80
  %84 = load i64*, i64** %11, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %166

86:                                               ; preds = %83
  %87 = load i64*, i64** %10, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i64*, i64** %10, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 2
  %97 = load i64*, i64** %11, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64*, i64** %10, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @memcmp(i64* %96, i64* %98, i64 %101)
  store i32 %102, i32* %14, align 4
  br label %112

103:                                              ; preds = %86
  %104 = load i64*, i64** %11, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %10, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %103, %94
  %113 = load i32, i32* @WLAN_EID_MESH_CONFIG, align 4
  %114 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %115 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %118 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64* @cfg80211_find_ie(i32 %113, i32 %116, i32 %119)
  store i64* %120, i64** %10, align 8
  %121 = load i32, i32* @WLAN_EID_MESH_CONFIG, align 4
  %122 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %123 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %126 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64* @cfg80211_find_ie(i32 %121, i32 %124, i32 %127)
  store i64* %128, i64** %11, align 8
  %129 = load i64*, i64** %10, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %165

131:                                              ; preds = %112
  %132 = load i64*, i64** %11, align 8
  %133 = icmp ne i64* %132, null
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %4, align 4
  br label %282

139:                                              ; preds = %134
  %140 = load i64*, i64** %10, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %11, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load i64*, i64** %11, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %10, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %4, align 4
  br label %282

156:                                              ; preds = %139
  %157 = load i64*, i64** %10, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 2
  %159 = load i64*, i64** %11, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 2
  %161 = load i64*, i64** %10, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @memcmp(i64* %158, i64* %160, i64 %163)
  store i32 %164, i32* %4, align 4
  br label %282

165:                                              ; preds = %131, %112
  br label %166

166:                                              ; preds = %165, %83, %80
  %167 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %168 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %171 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = call i32 @memcmp(i64* %169, i64* %172, i64 8)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %4, align 4
  br label %282

178:                                              ; preds = %166
  %179 = load i32, i32* @WLAN_EID_SSID, align 4
  %180 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %181 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %8, align 8
  %184 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64* @cfg80211_find_ie(i32 %179, i32 %182, i32 %185)
  store i64* %186, i64** %10, align 8
  %187 = load i32, i32* @WLAN_EID_SSID, align 4
  %188 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %189 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %9, align 8
  %192 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i64* @cfg80211_find_ie(i32 %187, i32 %190, i32 %193)
  store i64* %194, i64** %11, align 8
  %195 = load i64*, i64** %10, align 8
  %196 = icmp ne i64* %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %178
  %198 = load i64*, i64** %11, align 8
  %199 = icmp ne i64* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %282

201:                                              ; preds = %197, %178
  %202 = load i64*, i64** %10, align 8
  %203 = icmp ne i64* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  store i32 -1, i32* %4, align 4
  br label %282

205:                                              ; preds = %201
  %206 = load i64*, i64** %11, align 8
  %207 = icmp ne i64* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  store i32 1, i32* %4, align 4
  br label %282

209:                                              ; preds = %205
  %210 = load i32, i32* %7, align 4
  switch i32 %210, label %217 [
    i32 129, label %211
    i32 128, label %216
    i32 130, label %243
  ]

211:                                              ; preds = %209
  %212 = load i64*, i64** %11, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 1
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %4, align 4
  br label %282

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %209, %216
  %218 = load i64*, i64** %10, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %11, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %220, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %217
  %226 = load i64*, i64** %11, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %10, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 1
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %228, %231
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %4, align 4
  br label %282

234:                                              ; preds = %217
  %235 = load i64*, i64** %10, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 2
  %237 = load i64*, i64** %11, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 2
  %239 = load i64*, i64** %10, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @memcmp(i64* %236, i64* %238, i64 %241)
  store i32 %242, i32* %4, align 4
  br label %282

243:                                              ; preds = %209
  %244 = load i64*, i64** %10, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64*, i64** %11, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %246, %249
  br i1 %250, label %251, label %260

251:                                              ; preds = %243
  %252 = load i64*, i64** %11, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64*, i64** %10, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 1
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %254, %257
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %4, align 4
  br label %282

260:                                              ; preds = %243
  store i32 0, i32* %12, align 4
  br label %261

261:                                              ; preds = %278, %260
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64*, i64** %11, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp slt i64 %263, %266
  br i1 %267, label %268, label %281

268:                                              ; preds = %261
  %269 = load i64*, i64** %11, align 8
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, 2
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %269, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  store i32 -1, i32* %4, align 4
  br label %282

277:                                              ; preds = %268
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %261

281:                                              ; preds = %261
  store i32 0, i32* %4, align 4
  br label %282

282:                                              ; preds = %281, %276, %251, %234, %225, %211, %208, %204, %200, %176, %156, %147, %137, %49, %41, %22
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local %struct.cfg80211_bss_ies* @rcu_access_pointer(i32) #1

declare dso_local i64 @WLAN_CAPABILITY_IS_STA_BSS(i32) #1

declare dso_local i64* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @memcmp(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

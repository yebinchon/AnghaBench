; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_gen_new_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_gen_new_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@WLAN_EID_EXT_NON_INHERITANCE = common dso_local global i32 0, align 4
@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WLAN_EID_NON_TX_BSSID_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i64, i32*, i32)* @cfg80211_gen_new_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cfg80211_gen_new_ie(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.element*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.element*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32* @kmemdup(i32* %21, i64 %22, i32 %23)
  store i32* %24, i32** %19, align 8
  %25 = load i32*, i32** %19, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %313

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %14, align 8
  %31 = load i32, i32* @WLAN_EID_SSID, align 4
  %32 = load i32*, i32** %19, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32* @cfg80211_find_ie(i32 %31, i32* %32, i64 %33)
  store i32* %34, i32** %17, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 2
  %44 = call i32 @memcpy(i32* %38, i32* %39, i32 %43)
  %45 = load i32*, i32** %17, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2
  %49 = load i32*, i32** %14, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %14, align 8
  br label %52

52:                                               ; preds = %37, %28
  %53 = load i32, i32* @WLAN_EID_EXT_NON_INHERITANCE, align 4
  %54 = load i32*, i32** %19, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call %struct.element* @cfg80211_find_ext_elem(i32 %53, i32* %54, i64 %55)
  store %struct.element* %56, %struct.element** %18, align 8
  %57 = load i32, i32* @WLAN_EID_SSID, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32* @cfg80211_find_ie(i32 %57, i32* %58, i64 %59)
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  br label %73

71:                                               ; preds = %52
  %72 = load i32*, i32** %8, align 8
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi i32* [ %70, %63 ], [ %72, %71 ]
  store i32* %74, i32** %16, align 8
  br label %75

75:                                               ; preds = %228, %95, %73
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32*, i32** %8, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = load i64, i64* %9, align 8
  %89 = icmp ule i64 %87, %88
  br i1 %89, label %90, label %236

90:                                               ; preds = %75
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32*, i32** %16, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %16, align 8
  br label %75

98:                                               ; preds = %90
  %99 = load i32*, i32** %16, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %19, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @cfg80211_find_ext_ie(i32 %107, i32* %108, i64 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %15, align 8
  br label %119

112:                                              ; preds = %98
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32* @cfg80211_find_ie(i32 %115, i32* %116, i64 %117)
  store i32* %118, i32** %15, align 8
  br label %119

119:                                              ; preds = %112, %104
  %120 = load i32*, i32** %15, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %146, label %122

122:                                              ; preds = %119
  %123 = load i32*, i32** %16, align 8
  %124 = bitcast i32* %123 to i8*
  %125 = bitcast i8* %124 to %struct.element*
  store %struct.element* %125, %struct.element** %20, align 8
  %126 = load %struct.element*, %struct.element** %20, align 8
  %127 = load %struct.element*, %struct.element** %18, align 8
  %128 = call i64 @cfg80211_is_element_inherited(%struct.element* %126, %struct.element* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load i32*, i32** %14, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 2
  %137 = call i32 @memcpy(i32* %131, i32* %132, i32 %136)
  %138 = load i32*, i32** %16, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 2
  %142 = load i32*, i32** %14, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %14, align 8
  br label %145

145:                                              ; preds = %130, %122
  br label %212

146:                                              ; preds = %119
  %147 = load i32*, i32** %16, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %193

152:                                              ; preds = %146
  %153 = load i32*, i32** %16, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = call i32 @memcmp(i32* %154, i32* %156, i32 5)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %177, label %159

159:                                              ; preds = %152
  %160 = load i32*, i32** %14, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 2
  %166 = call i32 @memcpy(i32* %160, i32* %161, i32 %165)
  %167 = load i32*, i32** %15, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 2
  %171 = load i32*, i32** %14, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %14, align 8
  %174 = load i32, i32* @WLAN_EID_SSID, align 4
  %175 = load i32*, i32** %15, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %174, i32* %176, align 4
  br label %192

177:                                              ; preds = %152
  %178 = load i32*, i32** %14, align 8
  %179 = load i32*, i32** %16, align 8
  %180 = load i32*, i32** %16, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 2
  %184 = call i32 @memcpy(i32* %178, i32* %179, i32 %183)
  %185 = load i32*, i32** %16, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 2
  %189 = load i32*, i32** %14, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %14, align 8
  br label %192

192:                                              ; preds = %177, %159
  br label %211

193:                                              ; preds = %146
  %194 = load i32*, i32** %14, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 2
  %200 = call i32 @memcpy(i32* %194, i32* %195, i32 %199)
  %201 = load i32*, i32** %15, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 2
  %205 = load i32*, i32** %14, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %14, align 8
  %208 = load i32, i32* @WLAN_EID_SSID, align 4
  %209 = load i32*, i32** %15, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %193, %192
  br label %212

212:                                              ; preds = %211, %145
  %213 = load i32*, i32** %16, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = load i32*, i32** %8, align 8
  %221 = ptrtoint i32* %219 to i64
  %222 = ptrtoint i32* %220 to i64
  %223 = sub i64 %221, %222
  %224 = sdiv exact i64 %223, 4
  %225 = load i64, i64* %9, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %212
  br label %236

228:                                              ; preds = %212
  %229 = load i32*, i32** %16, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 2
  %233 = load i32*, i32** %16, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %16, align 8
  br label %75

236:                                              ; preds = %227, %75
  %237 = load i32*, i32** %19, align 8
  store i32* %237, i32** %17, align 8
  br label %238

238:                                              ; preds = %296, %236
  %239 = load i32*, i32** %17, align 8
  %240 = load i32*, i32** %17, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %239, i64 %243
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  %246 = load i32*, i32** %19, align 8
  %247 = ptrtoint i32* %245 to i64
  %248 = ptrtoint i32* %246 to i64
  %249 = sub i64 %247, %248
  %250 = sdiv exact i64 %249, 4
  %251 = load i64, i64* %11, align 8
  %252 = icmp ule i64 %250, %251
  br i1 %252, label %253, label %304

253:                                              ; preds = %238
  %254 = load i32*, i32** %17, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @WLAN_EID_NON_TX_BSSID_CAP, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %280, label %259

259:                                              ; preds = %253
  %260 = load i32*, i32** %17, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @WLAN_EID_SSID, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %280, label %265

265:                                              ; preds = %259
  %266 = load i32*, i32** %14, align 8
  %267 = load i32*, i32** %17, align 8
  %268 = load i32*, i32** %17, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 2
  %272 = call i32 @memcpy(i32* %266, i32* %267, i32 %271)
  %273 = load i32*, i32** %17, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 2
  %277 = load i32*, i32** %14, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %14, align 8
  br label %280

280:                                              ; preds = %265, %259, %253
  %281 = load i32*, i32** %17, align 8
  %282 = load i32*, i32** %17, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32*, i32** %19, align 8
  %289 = ptrtoint i32* %287 to i64
  %290 = ptrtoint i32* %288 to i64
  %291 = sub i64 %289, %290
  %292 = sdiv exact i64 %291, 4
  %293 = load i64, i64* %11, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %280
  br label %304

296:                                              ; preds = %280
  %297 = load i32*, i32** %17, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 2
  %301 = load i32*, i32** %17, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %17, align 8
  br label %238

304:                                              ; preds = %295, %238
  %305 = load i32*, i32** %19, align 8
  %306 = call i32 @kfree(i32* %305)
  %307 = load i32*, i32** %14, align 8
  %308 = load i32*, i32** %12, align 8
  %309 = ptrtoint i32* %307 to i64
  %310 = ptrtoint i32* %308 to i64
  %311 = sub i64 %309, %310
  %312 = sdiv exact i64 %311, 4
  store i64 %312, i64* %7, align 8
  br label %313

313:                                              ; preds = %304, %27
  %314 = load i64, i64* %7, align 8
  ret i64 %314
}

declare dso_local i32* @kmemdup(i32*, i64, i32) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.element* @cfg80211_find_ext_elem(i32, i32*, i64) #1

declare dso_local i64 @cfg80211_find_ext_ie(i32, i32*, i64) #1

declare dso_local i64 @cfg80211_is_element_inherited(%struct.element*, %struct.element*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

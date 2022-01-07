; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_format_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_format_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_mount_options = type { i8, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@bad_chars = common dso_local global i32 0, align 4
@bad_if_strict = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.fat_mount_options*)* @msdos_format_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_format_name(i8* %0, i32 %1, i8* %2, %struct.fat_mount_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fat_mount_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.fat_mount_options* %3, %struct.fat_mount_options** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 46
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %20 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %374

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %4
  store i32 1, i32* %12, align 4
  store i8 0, i8* %11, align 1
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %153, %32
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = icmp slt i64 %42, 8
  br label %44

44:                                               ; preds = %37, %34
  %45 = phi i1 [ false, %34 ], [ %43, %37 ]
  br i1 %45, label %46, label %156

46:                                               ; preds = %44
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %11, align 1
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  %52 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %53 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 114
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32, i32* @bad_chars, align 4
  %59 = load i8, i8* %11, align 1
  %60 = call i64 @strchr(i32 %58, i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %374

65:                                               ; preds = %57, %46
  %66 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %67 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 8
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 115
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* @bad_if_strict, align 4
  %73 = load i8, i8* %11, align 1
  %74 = call i64 @strchr(i32 %72, i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %374

79:                                               ; preds = %71, %65
  %80 = load i8, i8* %11, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sge i32 %81, 65
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sle i32 %85, 90
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %89 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 8
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 115
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %374

96:                                               ; preds = %87, %83, %79
  %97 = load i8, i8* %11, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load i8, i8* %11, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 58
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i8, i8* %11, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 92
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %100, %96
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %374

111:                                              ; preds = %104
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i8, i8* %11, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 229
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i8 5, i8* %11, align 1
  br label %120

120:                                              ; preds = %119, %115, %111
  %121 = load i8, i8* %11, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %156

125:                                              ; preds = %120
  %126 = load i8, i8* %11, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 32
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %12, align 4
  %130 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %131 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %125
  %135 = load i8, i8* %11, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sge i32 %136, 97
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i8, i8* %11, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sle i32 %140, 122
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8, i8* %11, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 32
  br label %149

146:                                              ; preds = %138, %134, %125
  %147 = load i8, i8* %11, align 1
  %148 = zext i8 %147 to i32
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi i32 [ %145, %142 ], [ %148, %146 ]
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %10, align 8
  store i8 %151, i8* %152, align 1
  br label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %10, align 8
  br label %34

156:                                              ; preds = %124, %44
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %374

162:                                              ; preds = %156
  %163 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %164 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %163, i32 0, i32 0
  %165 = load i8, i8* %164, align 8
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 115
  br i1 %167, label %168, label %188

168:                                              ; preds = %162
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = load i8, i8* %11, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp ne i32 %173, 46
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %6, align 8
  %178 = load i8, i8* %176, align 1
  store i8 %178, i8* %11, align 1
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %7, align 4
  %181 = load i8, i8* %11, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 46
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %374

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %171, %168, %162
  br label %189

189:                                              ; preds = %199, %188
  %190 = load i8, i8* %11, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %191, 46
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %7, align 4
  %196 = icmp ne i32 %194, 0
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i1 [ false, %189 ], [ %196, %193 ]
  br i1 %198, label %199, label %203

199:                                              ; preds = %197
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %6, align 8
  %202 = load i8, i8* %200, align 1
  store i8 %202, i8* %11, align 1
  br label %189

203:                                              ; preds = %197
  %204 = load i8, i8* %11, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 46
  br i1 %206, label %207, label %360

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %215, %207
  %209 = load i8*, i8** %10, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = icmp slt i64 %213, 8
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load i8*, i8** %10, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %10, align 8
  store i8 32, i8* %216, align 1
  br label %208

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %340, %218
  %220 = load i32, i32* %7, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = load i32, i32* @MSDOS_NAME, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp slt i64 %227, %229
  br label %231

231:                                              ; preds = %222, %219
  %232 = phi i1 [ false, %219 ], [ %230, %222 ]
  br i1 %232, label %233, label %341

233:                                              ; preds = %231
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %6, align 8
  %236 = load i8, i8* %234, align 1
  store i8 %236, i8* %11, align 1
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %7, align 4
  %239 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %240 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %239, i32 0, i32 0
  %241 = load i8, i8* %240, align 8
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 114
  br i1 %243, label %244, label %252

244:                                              ; preds = %233
  %245 = load i32, i32* @bad_chars, align 4
  %246 = load i8, i8* %11, align 1
  %247 = call i64 @strchr(i32 %245, i8 zeroext %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %5, align 4
  br label %374

252:                                              ; preds = %244, %233
  %253 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %254 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %253, i32 0, i32 0
  %255 = load i8, i8* %254, align 8
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 115
  br i1 %257, label %258, label %266

258:                                              ; preds = %252
  %259 = load i32, i32* @bad_if_strict, align 4
  %260 = load i8, i8* %11, align 1
  %261 = call i64 @strchr(i32 %259, i8 zeroext %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %5, align 4
  br label %374

266:                                              ; preds = %258, %252
  %267 = load i8, i8* %11, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp slt i32 %268, 32
  br i1 %269, label %278, label %270

270:                                              ; preds = %266
  %271 = load i8, i8* %11, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp eq i32 %272, 58
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i8, i8* %11, align 1
  %276 = zext i8 %275 to i32
  %277 = icmp eq i32 %276, 92
  br i1 %277, label %278, label %281

278:                                              ; preds = %274, %270, %266
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %5, align 4
  br label %374

281:                                              ; preds = %274
  %282 = load i8, i8* %11, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %283, 46
  br i1 %284, label %285, label %295

285:                                              ; preds = %281
  %286 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %287 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %286, i32 0, i32 0
  %288 = load i8, i8* %287, align 8
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 115
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %5, align 4
  br label %374

294:                                              ; preds = %285
  br label %341

295:                                              ; preds = %281
  %296 = load i8, i8* %11, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp sge i32 %297, 65
  br i1 %298, label %299, label %312

299:                                              ; preds = %295
  %300 = load i8, i8* %11, align 1
  %301 = zext i8 %300 to i32
  %302 = icmp sle i32 %301, 90
  br i1 %302, label %303, label %312

303:                                              ; preds = %299
  %304 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %305 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %304, i32 0, i32 0
  %306 = load i8, i8* %305, align 8
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 115
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load i32, i32* @EINVAL, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %5, align 4
  br label %374

312:                                              ; preds = %303, %299, %295
  %313 = load i8, i8* %11, align 1
  %314 = zext i8 %313 to i32
  %315 = icmp eq i32 %314, 32
  %316 = zext i1 %315 to i32
  store i32 %316, i32* %12, align 4
  %317 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %318 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %336, label %321

321:                                              ; preds = %312
  %322 = load i8, i8* %11, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp sge i32 %323, 97
  br i1 %324, label %325, label %336

325:                                              ; preds = %321
  %326 = load i8, i8* %11, align 1
  %327 = zext i8 %326 to i32
  %328 = icmp sle i32 %327, 122
  br i1 %328, label %329, label %336

329:                                              ; preds = %325
  %330 = load i8, i8* %11, align 1
  %331 = zext i8 %330 to i32
  %332 = sub nsw i32 %331, 32
  %333 = trunc i32 %332 to i8
  %334 = load i8*, i8** %10, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %10, align 8
  store i8 %333, i8* %334, align 1
  br label %340

336:                                              ; preds = %325, %321, %312
  %337 = load i8, i8* %11, align 1
  %338 = load i8*, i8** %10, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %10, align 8
  store i8 %337, i8* %338, align 1
  br label %340

340:                                              ; preds = %336, %329
  br label %219

341:                                              ; preds = %294, %231
  %342 = load i32, i32* %12, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i32, i32* @EINVAL, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %5, align 4
  br label %374

347:                                              ; preds = %341
  %348 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %349 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %348, i32 0, i32 0
  %350 = load i8, i8* %349, align 8
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 115
  br i1 %352, label %353, label %359

353:                                              ; preds = %347
  %354 = load i32, i32* %7, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %5, align 4
  br label %374

359:                                              ; preds = %353, %347
  br label %360

360:                                              ; preds = %359, %203
  br label %361

361:                                              ; preds = %370, %360
  %362 = load i8*, i8** %10, align 8
  %363 = load i8*, i8** %8, align 8
  %364 = ptrtoint i8* %362 to i64
  %365 = ptrtoint i8* %363 to i64
  %366 = sub i64 %364, %365
  %367 = load i32, i32* @MSDOS_NAME, align 4
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %366, %368
  br i1 %369, label %370, label %373

370:                                              ; preds = %361
  %371 = load i8*, i8** %10, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %10, align 8
  store i8 32, i8* %371, align 1
  br label %361

373:                                              ; preds = %361
  store i32 0, i32* %5, align 4
  br label %374

374:                                              ; preds = %373, %356, %344, %309, %291, %278, %263, %249, %184, %159, %108, %93, %76, %62, %28
  %375 = load i32, i32* %5, align 4
  ret i32 %375
}

declare dso_local i64 @strchr(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

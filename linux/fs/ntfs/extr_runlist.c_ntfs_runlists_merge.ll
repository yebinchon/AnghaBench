; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_runlists_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_runlists_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@LCN_RL_NOT_MAPPED = common dso_local global i64 0, align 8
@LCN_HOLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Run lists overlap. Cannot merge!\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@LCN_ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Merge failed.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Triggering marker code.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Old marker = 0x%llx, replacing with LCN_ENOENT.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Merged runlist:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @ntfs_runlists_merge(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %22 = icmp ne %struct.TYPE_26__* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %3, align 8
  br label %637

29:                                               ; preds = %2
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = call i64 @IS_ERR(%struct.TYPE_26__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %35 = call i64 @IS_ERR(%struct.TYPE_26__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.TYPE_26__* @ERR_PTR(i32 %39)
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %3, align 8
  br label %637

41:                                               ; preds = %33
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %43 = icmp ne %struct.TYPE_26__* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %41
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %49, %struct.TYPE_26__** %4, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %67, %56
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %57

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  %77 = call %struct.TYPE_26__* @ntfs_rl_realloc(%struct.TYPE_26__* %73, i32 %74, i32 %76)
  store %struct.TYPE_26__* %77, %struct.TYPE_26__** %4, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %79 = call i64 @IS_ERR(%struct.TYPE_26__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %82, %struct.TYPE_26__** %3, align 8
  br label %637

83:                                               ; preds = %70
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ntfs_rl_mm(%struct.TYPE_26__* %84, i32 1, i32 0, i32 %85)
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 2
  store i64 %90, i64* %93, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %83, %48
  br label %632

102:                                              ; preds = %41
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %122, %102
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @LCN_HOLE, align 8
  %119 = icmp slt i64 %117, %118
  br label %120

120:                                              ; preds = %111, %103
  %121 = phi i1 [ false, %103 ], [ %119, %111 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %103

125:                                              ; preds = %120
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUG_ON(i32 %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %168, %125
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %137
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %151, %157
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %158, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %145
  br label %171

167:                                              ; preds = %145
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %137

171:                                              ; preds = %166, %137
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %9, align 4
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %178, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %171
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp sge i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %186
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp sge i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %194
  %203 = call i32 @ntfs_error(i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %204 = load i32, i32* @ERANGE, align 4
  %205 = sub nsw i32 0, %204
  %206 = call %struct.TYPE_26__* @ERR_PTR(i32 %205)
  store %struct.TYPE_26__* %206, %struct.TYPE_26__** %3, align 8
  br label %637

207:                                              ; preds = %194, %186, %171
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %218, %207
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %209

221:                                              ; preds = %209
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %10, align 4
  br label %223

223:                                              ; preds = %232, %221
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %223

235:                                              ; preds = %223
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @LCN_ENOENT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %235
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %246 = load i32, i32* %11, align 4
  store i32 %246, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = inttoptr i64 %251 to i8*
  store i8* %252, i8** %15, align 8
  br label %253

253:                                              ; preds = %244, %235
  %254 = load i32, i32* %11, align 4
  store i32 %254, i32* %13, align 4
  br label %255

255:                                              ; preds = %270, %253
  %256 = load i32, i32* %13, align 4
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @LCN_HOLE, align 8
  %266 = icmp slt i64 %264, %265
  br label %267

267:                                              ; preds = %258, %255
  %268 = phi i1 [ false, %255 ], [ %266, %258 ]
  br i1 %268, label %269, label %273

269:                                              ; preds = %267
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %13, align 4
  br label %255

273:                                              ; preds = %267
  %274 = load i32, i32* %10, align 4
  store i32 %274, i32* %12, align 4
  br label %275

275:                                              ; preds = %290, %273
  %276 = load i32, i32* %12, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %275
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @LCN_HOLE, align 8
  %286 = icmp slt i64 %284, %285
  br label %287

287:                                              ; preds = %278, %275
  %288 = phi i1 [ false, %275 ], [ %286, %278 ]
  br i1 %288, label %289, label %293

289:                                              ; preds = %287
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %12, align 4
  br label %275

293:                                              ; preds = %287
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %8, align 4
  %298 = sub nsw i32 %296, %297
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %19, align 4
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %307 = icmp slt i64 %305, %306
  br i1 %307, label %322, label %308

308:                                              ; preds = %293
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %310 = load i32, i32* %9, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %314, %320
  br label %322

322:                                              ; preds = %308, %293
  %323 = phi i1 [ true, %293 ], [ %321, %308 ]
  %324 = zext i1 %323 to i32
  store i32 %324, i32* %16, align 4
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %332 = icmp sge i64 %330, %331
  br i1 %332, label %333, label %363

333:                                              ; preds = %322
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %339, %345
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %353, %360
  %362 = icmp sle i32 %346, %361
  br label %363

363:                                              ; preds = %333, %322
  %364 = phi i1 [ false, %322 ], [ %362, %333 ]
  %365 = zext i1 %364 to i32
  store i32 %365, i32* %17, align 4
  %366 = load i32, i32* %17, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %363
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %368
  %377 = load i32, i32* %19, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %19, align 4
  br label %379

379:                                              ; preds = %376, %368, %363
  %380 = load i32, i32* %14, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %405

382:                                              ; preds = %379
  %383 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %390 = load i32, i32* %9, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %388, %394
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %397 = load i32, i32* %11, align 4
  %398 = sub nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = icmp sgt i32 %395, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %382
  store i32 0, i32* %17, align 4
  br label %405

405:                                              ; preds = %404, %382, %379
  %406 = load i32, i32* %16, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %432

408:                                              ; preds = %405
  %409 = load i32, i32* %17, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %421

411:                                              ; preds = %408
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %413 = load i32, i32* %18, align 4
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %415 = load i32, i32* %8, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i64 %416
  %418 = load i32, i32* %19, align 4
  %419 = load i32, i32* %9, align 4
  %420 = call %struct.TYPE_26__* @ntfs_rl_replace(%struct.TYPE_26__* %412, i32 %413, %struct.TYPE_26__* %417, i32 %418, i32 %419)
  store %struct.TYPE_26__* %420, %struct.TYPE_26__** %4, align 8
  br label %431

421:                                              ; preds = %408
  %422 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %423 = load i32, i32* %18, align 4
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i64 %426
  %428 = load i32, i32* %19, align 4
  %429 = load i32, i32* %9, align 4
  %430 = call %struct.TYPE_26__* @ntfs_rl_insert(%struct.TYPE_26__* %422, i32 %423, %struct.TYPE_26__* %427, i32 %428, i32 %429)
  store %struct.TYPE_26__* %430, %struct.TYPE_26__** %4, align 8
  br label %431

431:                                              ; preds = %421, %411
  br label %456

432:                                              ; preds = %405
  %433 = load i32, i32* %17, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %445

435:                                              ; preds = %432
  %436 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %437 = load i32, i32* %18, align 4
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i64 %440
  %442 = load i32, i32* %19, align 4
  %443 = load i32, i32* %9, align 4
  %444 = call %struct.TYPE_26__* @ntfs_rl_append(%struct.TYPE_26__* %436, i32 %437, %struct.TYPE_26__* %441, i32 %442, i32 %443)
  store %struct.TYPE_26__* %444, %struct.TYPE_26__** %4, align 8
  br label %455

445:                                              ; preds = %432
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %447 = load i32, i32* %18, align 4
  %448 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i64 %450
  %452 = load i32, i32* %19, align 4
  %453 = load i32, i32* %9, align 4
  %454 = call %struct.TYPE_26__* @ntfs_rl_split(%struct.TYPE_26__* %446, i32 %447, %struct.TYPE_26__* %451, i32 %452, i32 %453)
  store %struct.TYPE_26__* %454, %struct.TYPE_26__** %4, align 8
  br label %455

455:                                              ; preds = %445, %435
  br label %456

456:                                              ; preds = %455, %431
  %457 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %458 = call i64 @IS_ERR(%struct.TYPE_26__* %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %456
  %461 = call i32 @ntfs_error(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %462, %struct.TYPE_26__** %3, align 8
  br label %637

463:                                              ; preds = %456
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %465 = call i32 @ntfs_free(%struct.TYPE_26__* %464)
  %466 = load i32, i32* %14, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %631

468:                                              ; preds = %463
  %469 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %470 = load i32, i32* %10, align 4
  store i32 %470, i32* %18, align 4
  br label %471

471:                                              ; preds = %480, %468
  %472 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %473 = load i32, i32* %18, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %471
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %18, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %18, align 4
  br label %471

483:                                              ; preds = %471
  %484 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %485 = load i32, i32* %18, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = sext i32 %489 to i64
  %491 = inttoptr i64 %490 to i8*
  %492 = load i8*, i8** %15, align 8
  %493 = icmp ule i8* %491, %492
  br i1 %493, label %494, label %630

494:                                              ; preds = %483
  store i32 0, i32* %20, align 4
  %495 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %496 = load i32, i32* %18, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = sext i32 %500 to i64
  %502 = inttoptr i64 %501 to i8*
  %503 = load i8*, i8** %15, align 8
  %504 = icmp eq i8* %502, %503
  br i1 %504, label %505, label %519

505:                                              ; preds = %494
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %507 = load i32, i32* %18, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %509, i32 0, i32 2
  %511 = load i64, i64* %510, align 8
  %512 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %511)
  %513 = load i64, i64* @LCN_ENOENT, align 8
  %514 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %515 = load i32, i32* %18, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %514, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %517, i32 0, i32 2
  store i64 %513, i64* %518, align 8
  br label %632

519:                                              ; preds = %494
  %520 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %521 = load i32, i32* %18, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %523, i32 0, i32 2
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @LCN_ENOENT, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %519
  %529 = load i32, i32* %18, align 4
  %530 = add nsw i32 %529, -1
  store i32 %530, i32* %18, align 4
  store i32 1, i32* %20, align 4
  br label %531

531:                                              ; preds = %528, %519
  %532 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %533 = load i32, i32* %18, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %532, i64 %534
  %536 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %539 = icmp ne i64 %537, %538
  br i1 %539, label %540, label %584

540:                                              ; preds = %531
  %541 = load i32, i32* %20, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %549, label %543

543:                                              ; preds = %540
  %544 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %545 = load i32, i32* %18, align 4
  %546 = load i32, i32* %18, align 4
  %547 = add nsw i32 %546, 2
  %548 = call %struct.TYPE_26__* @ntfs_rl_realloc_nofail(%struct.TYPE_26__* %544, i32 %545, i32 %547)
  store %struct.TYPE_26__* %548, %struct.TYPE_26__** %4, align 8
  store i32 2, i32* %20, align 4
  br label %549

549:                                              ; preds = %543, %540
  %550 = load i32, i32* %18, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %18, align 4
  %552 = load i32, i32* %20, align 4
  %553 = icmp ne i32 %552, 1
  br i1 %553, label %554, label %575

554:                                              ; preds = %549
  %555 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %556 = load i32, i32* %18, align 4
  %557 = sub nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %555, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %563 = load i32, i32* %18, align 4
  %564 = sub nsw i32 %563, 1
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %562, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %561, %568
  %570 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %571 = load i32, i32* %18, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %573, i32 0, i32 0
  store i32 %569, i32* %574, align 8
  br label %575

575:                                              ; preds = %554, %549
  %576 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %577 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %578 = load i32, i32* %18, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %580, i32 0, i32 2
  store i64 %576, i64* %581, align 8
  %582 = load i32, i32* %20, align 4
  %583 = add nsw i32 %582, -1
  store i32 %583, i32* %20, align 4
  br label %584

584:                                              ; preds = %575, %531
  %585 = load i8*, i8** %15, align 8
  %586 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %587 = load i32, i32* %18, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %586, i64 %588
  %590 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = sext i32 %591 to i64
  %593 = sub i64 0, %592
  %594 = getelementptr i8, i8* %585, i64 %593
  %595 = ptrtoint i8* %594 to i32
  %596 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %597 = load i32, i32* %18, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %596, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %599, i32 0, i32 1
  store i32 %595, i32* %600, align 4
  %601 = load i32, i32* %18, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %18, align 4
  %603 = load i32, i32* %20, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %611, label %605

605:                                              ; preds = %584
  %606 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %607 = load i32, i32* %18, align 4
  %608 = load i32, i32* %18, align 4
  %609 = add nsw i32 %608, 1
  %610 = call %struct.TYPE_26__* @ntfs_rl_realloc_nofail(%struct.TYPE_26__* %606, i32 %607, i32 %609)
  store %struct.TYPE_26__* %610, %struct.TYPE_26__** %4, align 8
  br label %611

611:                                              ; preds = %605, %584
  %612 = load i8*, i8** %15, align 8
  %613 = ptrtoint i8* %612 to i32
  %614 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %615 = load i32, i32* %18, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %614, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %617, i32 0, i32 0
  store i32 %613, i32* %618, align 8
  %619 = load i64, i64* @LCN_ENOENT, align 8
  %620 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %621 = load i32, i32* %18, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %623, i32 0, i32 2
  store i64 %619, i64* %624, align 8
  %625 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %626 = load i32, i32* %18, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %625, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %628, i32 0, i32 1
  store i32 0, i32* %629, align 4
  br label %630

630:                                              ; preds = %611, %483
  br label %631

631:                                              ; preds = %630, %463
  br label %632

632:                                              ; preds = %631, %505, %101
  %633 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %634 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %635 = call i32 @ntfs_debug_dump_runlist(%struct.TYPE_26__* %634)
  %636 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %636, %struct.TYPE_26__** %3, align 8
  br label %637

637:                                              ; preds = %632, %460, %202, %81, %37, %27
  %638 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %638
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @ERR_PTR(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_26__* @ntfs_rl_realloc(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ntfs_rl_mm(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ntfs_error(i32*, i8*) #1

declare dso_local %struct.TYPE_26__* @ntfs_rl_replace(%struct.TYPE_26__*, i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local %struct.TYPE_26__* @ntfs_rl_insert(%struct.TYPE_26__*, i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local %struct.TYPE_26__* @ntfs_rl_append(%struct.TYPE_26__*, i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local %struct.TYPE_26__* @ntfs_rl_split(%struct.TYPE_26__*, i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ntfs_free(%struct.TYPE_26__*) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local %struct.TYPE_26__* @ntfs_rl_realloc_nofail(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ntfs_debug_dump_runlist(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

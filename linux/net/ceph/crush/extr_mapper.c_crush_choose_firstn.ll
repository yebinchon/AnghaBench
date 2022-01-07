; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_choose_firstn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_choose_firstn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i32, i32, i32, i32*, %struct.crush_bucket** }
%struct.crush_work = type { i32* }
%struct.crush_bucket = type { i32, i32, i32 }
%struct.crush_choose_arg = type { i32 }

@.str = private unnamed_addr constant [136 x i8] c"CHOOSE%s bucket %d x %d outpos %d numrep %d tries %d recurse_tries %d local_retries %d local_fallback_retries %d parent_r %d stable %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_LEAF\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"   bad item %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  item %d type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"   bad item type %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"  reject %d  collide %d  ftotal %u  flocal %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"skip rep\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"CHOOSE got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"CHOOSE returns %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crush_map*, %struct.crush_work*, %struct.crush_bucket*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.crush_choose_arg*)* @crush_choose_firstn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crush_choose_firstn(%struct.crush_map* %0, %struct.crush_work* %1, %struct.crush_bucket* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32* %18, i32 %19, %struct.crush_choose_arg* %20) #0 {
  %22 = alloca %struct.crush_map*, align 8
  %23 = alloca %struct.crush_work*, align 8
  %24 = alloca %struct.crush_bucket*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca %struct.crush_choose_arg*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.crush_bucket*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store %struct.crush_map* %0, %struct.crush_map** %22, align 8
  store %struct.crush_work* %1, %struct.crush_work** %23, align 8
  store %struct.crush_bucket* %2, %struct.crush_bucket** %24, align 8
  store i32* %3, i32** %25, align 8
  store i32 %4, i32* %26, align 4
  store i32 %5, i32* %27, align 4
  store i32 %6, i32* %28, align 4
  store i32 %7, i32* %29, align 4
  store i32* %8, i32** %30, align 8
  store i32 %9, i32* %31, align 4
  store i32 %10, i32* %32, align 4
  store i32 %11, i32* %33, align 4
  store i32 %12, i32* %34, align 4
  store i32 %13, i32* %35, align 4
  store i32 %14, i32* %36, align 4
  store i32 %15, i32* %37, align 4
  store i32 %16, i32* %38, align 4
  store i32 %17, i32* %39, align 4
  store i32* %18, i32** %40, align 8
  store i32 %19, i32* %41, align 4
  store %struct.crush_choose_arg* %20, %struct.crush_choose_arg** %42, align 8
  %58 = load %struct.crush_bucket*, %struct.crush_bucket** %24, align 8
  store %struct.crush_bucket* %58, %struct.crush_bucket** %49, align 8
  store i32 0, i32* %52, align 4
  %59 = load i32, i32* %32, align 4
  store i32 %59, i32* %56, align 4
  %60 = load i32, i32* %37, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = load %struct.crush_bucket*, %struct.crush_bucket** %24, align 8
  %65 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %27, align 4
  %68 = load i32, i32* %31, align 4
  %69 = load i32, i32* %28, align 4
  %70 = load i32, i32* %33, align 4
  %71 = load i32, i32* %34, align 4
  %72 = load i32, i32* %35, align 4
  %73 = load i32, i32* %36, align 4
  %74 = load i32, i32* %41, align 4
  %75 = load i32, i32* %39, align 4
  %76 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %39, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %21
  br label %82

80:                                               ; preds = %21
  %81 = load i32, i32* %31, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 0, %79 ], [ %81, %80 ]
  store i32 %83, i32* %43, align 4
  br label %84

84:                                               ; preds = %406, %82
  %85 = load i32, i32* %43, align 4
  %86 = load i32, i32* %28, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %56, align 4
  %90 = icmp sgt i32 %89, 0
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i1 [ false, %84 ], [ %90, %88 ]
  br i1 %92, label %93, label %409

93:                                               ; preds = %91
  store i32 0, i32* %44, align 4
  store i32 0, i32* %48, align 4
  br label %94

94:                                               ; preds = %366, %93
  store i32 0, i32* %46, align 4
  %95 = load %struct.crush_bucket*, %struct.crush_bucket** %24, align 8
  store %struct.crush_bucket* %95, %struct.crush_bucket** %49, align 8
  store i32 0, i32* %45, align 4
  br label %96

96:                                               ; preds = %362, %94
  store i32 0, i32* %54, align 4
  store i32 0, i32* %47, align 4
  %97 = load i32, i32* %43, align 4
  %98 = load i32, i32* %41, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %50, align 4
  %100 = load i32, i32* %44, align 4
  %101 = load i32, i32* %50, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %50, align 4
  %103 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %104 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 1, i32* %55, align 4
  br label %317

108:                                              ; preds = %96
  %109 = load i32, i32* %36, align 4
  %110 = icmp ugt i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load i32, i32* %45, align 4
  %113 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %114 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 1
  %117 = icmp uge i32 %112, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %111
  %119 = load i32, i32* %45, align 4
  %120 = load i32, i32* %36, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %124 = load %struct.crush_work*, %struct.crush_work** %23, align 8
  %125 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %128 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 -1, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %50, align 4
  %136 = call i32 @bucket_perm_choose(%struct.crush_bucket* %123, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %52, align 4
  br label %166

137:                                              ; preds = %118, %111, %108
  %138 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %139 = load %struct.crush_work*, %struct.crush_work** %23, align 8
  %140 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %143 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 -1, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %141, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* %50, align 4
  %151 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %42, align 8
  %152 = icmp ne %struct.crush_choose_arg* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %137
  %154 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %42, align 8
  %155 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %156 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 -1, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %154, i64 %159
  br label %162

161:                                              ; preds = %137
  br label %162

162:                                              ; preds = %161, %153
  %163 = phi %struct.crush_choose_arg* [ %160, %153 ], [ null, %161 ]
  %164 = load i32, i32* %31, align 4
  %165 = call i32 @crush_bucket_choose(%struct.crush_bucket* %138, i32 %148, i32 %149, i32 %150, %struct.crush_choose_arg* %163, i32 %164)
  store i32 %165, i32* %52, align 4
  br label %166

166:                                              ; preds = %162, %122
  %167 = load i32, i32* %52, align 4
  %168 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %169 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sge i32 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %52, align 4
  %174 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  store i32 1, i32* %48, align 4
  br label %365

175:                                              ; preds = %166
  %176 = load i32, i32* %52, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %180 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %179, i32 0, i32 4
  %181 = load %struct.crush_bucket**, %struct.crush_bucket*** %180, align 8
  %182 = load i32, i32* %52, align 4
  %183 = sub nsw i32 -1, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.crush_bucket*, %struct.crush_bucket** %181, i64 %184
  %186 = load %struct.crush_bucket*, %struct.crush_bucket** %185, align 8
  %187 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %53, align 4
  br label %190

189:                                              ; preds = %175
  store i32 0, i32* %53, align 4
  br label %190

190:                                              ; preds = %189, %178
  %191 = load i32, i32* %52, align 4
  %192 = load i32, i32* %53, align 4
  %193 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i32, i32* %53, align 4
  %195 = load i32, i32* %29, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %190
  %198 = load i32, i32* %52, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %52, align 4
  %202 = sub nsw i32 -1, %201
  %203 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %204 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp sge i32 %202, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %200, %197
  %208 = load i32, i32* %29, align 4
  %209 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  store i32 1, i32* %48, align 4
  br label %365

210:                                              ; preds = %200
  %211 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %212 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %211, i32 0, i32 4
  %213 = load %struct.crush_bucket**, %struct.crush_bucket*** %212, align 8
  %214 = load i32, i32* %52, align 4
  %215 = sub nsw i32 -1, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.crush_bucket*, %struct.crush_bucket** %213, i64 %216
  %218 = load %struct.crush_bucket*, %struct.crush_bucket** %217, align 8
  store %struct.crush_bucket* %218, %struct.crush_bucket** %49, align 8
  store i32 1, i32* %47, align 4
  br label %362

219:                                              ; preds = %190
  store i32 0, i32* %51, align 4
  br label %220

220:                                              ; preds = %234, %219
  %221 = load i32, i32* %51, align 4
  %222 = load i32, i32* %31, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  %225 = load i32*, i32** %30, align 8
  %226 = load i32, i32* %51, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %52, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  store i32 1, i32* %54, align 4
  br label %237

233:                                              ; preds = %224
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %51, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %51, align 4
  br label %220

237:                                              ; preds = %232, %220
  store i32 0, i32* %55, align 4
  %238 = load i32, i32* %54, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %299, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %37, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %299

243:                                              ; preds = %240
  %244 = load i32, i32* %52, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %292

246:                                              ; preds = %243
  %247 = load i32, i32* %38, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i32, i32* %50, align 4
  %251 = load i32, i32* %38, align 4
  %252 = sub i32 %251, 1
  %253 = ashr i32 %250, %252
  store i32 %253, i32* %57, align 4
  br label %255

254:                                              ; preds = %246
  store i32 0, i32* %57, align 4
  br label %255

255:                                              ; preds = %254, %249
  %256 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %257 = load %struct.crush_work*, %struct.crush_work** %23, align 8
  %258 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %259 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %258, i32 0, i32 4
  %260 = load %struct.crush_bucket**, %struct.crush_bucket*** %259, align 8
  %261 = load i32, i32* %52, align 4
  %262 = sub nsw i32 -1, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.crush_bucket*, %struct.crush_bucket** %260, i64 %263
  %265 = load %struct.crush_bucket*, %struct.crush_bucket** %264, align 8
  %266 = load i32*, i32** %25, align 8
  %267 = load i32, i32* %26, align 4
  %268 = load i32, i32* %27, align 4
  %269 = load i32, i32* %39, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %255
  br label %275

272:                                              ; preds = %255
  %273 = load i32, i32* %31, align 4
  %274 = add nsw i32 %273, 1
  br label %275

275:                                              ; preds = %272, %271
  %276 = phi i32 [ 1, %271 ], [ %274, %272 ]
  %277 = load i32*, i32** %40, align 8
  %278 = load i32, i32* %31, align 4
  %279 = load i32, i32* %56, align 4
  %280 = load i32, i32* %34, align 4
  %281 = load i32, i32* %35, align 4
  %282 = load i32, i32* %36, align 4
  %283 = load i32, i32* %38, align 4
  %284 = load i32, i32* %39, align 4
  %285 = load i32, i32* %57, align 4
  %286 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %42, align 8
  %287 = call i32 @crush_choose_firstn(%struct.crush_map* %256, %struct.crush_work* %257, %struct.crush_bucket* %265, i32* %266, i32 %267, i32 %268, i32 %276, i32 0, i32* %277, i32 %278, i32 %279, i32 %280, i32 0, i32 %281, i32 %282, i32 0, i32 %283, i32 %284, i32* null, i32 %285, %struct.crush_choose_arg* %286)
  %288 = load i32, i32* %31, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %275
  store i32 1, i32* %55, align 4
  br label %291

291:                                              ; preds = %290, %275
  br label %298

292:                                              ; preds = %243
  %293 = load i32, i32* %52, align 4
  %294 = load i32*, i32** %40, align 8
  %295 = load i32, i32* %31, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %293, i32* %297, align 4
  br label %298

298:                                              ; preds = %292, %291
  br label %299

299:                                              ; preds = %298, %240, %237
  %300 = load i32, i32* %55, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %54, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %316, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %53, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %305
  %309 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %310 = load i32*, i32** %25, align 8
  %311 = load i32, i32* %26, align 4
  %312 = load i32, i32* %52, align 4
  %313 = load i32, i32* %27, align 4
  %314 = call i32 @is_out(%struct.crush_map* %309, i32* %310, i32 %311, i32 %312, i32 %313)
  store i32 %314, i32* %55, align 4
  br label %315

315:                                              ; preds = %308, %305
  br label %316

316:                                              ; preds = %315, %302, %299
  br label %317

317:                                              ; preds = %316, %107
  %318 = load i32, i32* %55, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %54, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %361

323:                                              ; preds = %320, %317
  %324 = load i32, i32* %44, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %44, align 4
  %326 = load i32, i32* %45, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %45, align 4
  %328 = load i32, i32* %54, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %323
  %331 = load i32, i32* %45, align 4
  %332 = load i32, i32* %35, align 4
  %333 = icmp ule i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  store i32 1, i32* %47, align 4
  br label %355

335:                                              ; preds = %330, %323
  %336 = load i32, i32* %36, align 4
  %337 = icmp ugt i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %335
  %339 = load i32, i32* %45, align 4
  %340 = load %struct.crush_bucket*, %struct.crush_bucket** %49, align 8
  %341 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %36, align 4
  %344 = add i32 %342, %343
  %345 = icmp ule i32 %339, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %338
  store i32 1, i32* %47, align 4
  br label %354

347:                                              ; preds = %338, %335
  %348 = load i32, i32* %44, align 4
  %349 = load i32, i32* %33, align 4
  %350 = icmp ult i32 %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %347
  store i32 1, i32* %46, align 4
  br label %353

352:                                              ; preds = %347
  store i32 1, i32* %48, align 4
  br label %353

353:                                              ; preds = %352, %351
  br label %354

354:                                              ; preds = %353, %346
  br label %355

355:                                              ; preds = %354, %334
  %356 = load i32, i32* %55, align 4
  %357 = load i32, i32* %54, align 4
  %358 = load i32, i32* %44, align 4
  %359 = load i32, i32* %45, align 4
  %360 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %356, i32 %357, i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %355, %320
  br label %362

362:                                              ; preds = %361, %210
  %363 = load i32, i32* %47, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %96, label %365

365:                                              ; preds = %362, %207, %172
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %46, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %94, label %369

369:                                              ; preds = %366
  %370 = load i32, i32* %48, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %406

374:                                              ; preds = %369
  %375 = load i32, i32* %52, align 4
  %376 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %375)
  %377 = load i32, i32* %52, align 4
  %378 = load i32*, i32** %30, align 8
  %379 = load i32, i32* %31, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %377, i32* %381, align 4
  %382 = load i32, i32* %31, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %31, align 4
  %384 = load i32, i32* %56, align 4
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* %56, align 4
  %386 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %387 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %386, i32 0, i32 3
  %388 = load i32*, i32** %387, align 8
  %389 = icmp ne i32* %388, null
  br i1 %389, label %390, label %405

390:                                              ; preds = %374
  %391 = load i32, i32* %44, align 4
  %392 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %393 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = icmp ule i32 %391, %394
  br i1 %395, label %396, label %405

396:                                              ; preds = %390
  %397 = load %struct.crush_map*, %struct.crush_map** %22, align 8
  %398 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %397, i32 0, i32 3
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %44, align 4
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %396, %390, %374
  br label %406

406:                                              ; preds = %405, %372
  %407 = load i32, i32* %43, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %43, align 4
  br label %84

409:                                              ; preds = %91
  %410 = load i32, i32* %31, align 4
  %411 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %410)
  %412 = load i32, i32* %31, align 4
  ret i32 %412
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @bucket_perm_choose(%struct.crush_bucket*, i32, i32, i32) #1

declare dso_local i32 @crush_bucket_choose(%struct.crush_bucket*, i32, i32, i32, %struct.crush_choose_arg*, i32) #1

declare dso_local i32 @is_out(%struct.crush_map*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

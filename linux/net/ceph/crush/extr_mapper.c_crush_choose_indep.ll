; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_choose_indep.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_choose_indep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i32, i32, i32, i32*, %struct.crush_bucket** }
%struct.crush_work = type { i32* }
%struct.crush_bucket = type { i32, i64, i32, i32 }
%struct.crush_choose_arg = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"CHOOSE%s INDEP bucket %d x %d outpos %d numrep %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_LEAF\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CRUSH_ITEM_UNDEF = common dso_local global i32 0, align 4
@CRUSH_BUCKET_UNIFORM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"   empty bucket\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"   bad item %d\0A\00", align 1
@CRUSH_ITEM_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"  item %d type %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"   bad item type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crush_map*, %struct.crush_work*, %struct.crush_bucket*, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, %struct.crush_choose_arg*)* @crush_choose_indep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crush_choose_indep(%struct.crush_map* %0, %struct.crush_work* %1, %struct.crush_bucket* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32* %14, i32 %15, %struct.crush_choose_arg* %16) #0 {
  %18 = alloca %struct.crush_map*, align 8
  %19 = alloca %struct.crush_work*, align 8
  %20 = alloca %struct.crush_bucket*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.crush_choose_arg*, align 8
  %35 = alloca %struct.crush_bucket*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store %struct.crush_map* %0, %struct.crush_map** %18, align 8
  store %struct.crush_work* %1, %struct.crush_work** %19, align 8
  store %struct.crush_bucket* %2, %struct.crush_bucket** %20, align 8
  store i32* %3, i32** %21, align 8
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32* %9, i32** %27, align 8
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32* %14, i32** %32, align 8
  store i32 %15, i32* %33, align 4
  store %struct.crush_choose_arg* %16, %struct.crush_choose_arg** %34, align 8
  %44 = load %struct.crush_bucket*, %struct.crush_bucket** %20, align 8
  store %struct.crush_bucket* %44, %struct.crush_bucket** %35, align 8
  %45 = load i32, i32* %28, align 4
  %46 = load i32, i32* %24, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %36, align 4
  store i32 0, i32* %41, align 4
  %48 = load i32, i32* %31, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = load %struct.crush_bucket*, %struct.crush_bucket** %20, align 8
  %53 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %28, align 4
  %57 = load i32, i32* %25, align 4
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %28, align 4
  store i32 %59, i32* %37, align 4
  br label %60

60:                                               ; preds = %79, %17
  %61 = load i32, i32* %37, align 4
  %62 = load i32, i32* %36, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load i32, i32* @CRUSH_ITEM_UNDEF, align 4
  %66 = load i32*, i32** %27, align 8
  %67 = load i32, i32* %37, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** %32, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @CRUSH_ITEM_UNDEF, align 4
  %74 = load i32*, i32** %32, align 8
  %75 = load i32, i32* %37, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %37, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %37, align 4
  br label %60

82:                                               ; preds = %60
  store i32 0, i32* %38, align 4
  br label %83

83:                                               ; preds = %348, %82
  %84 = load i32, i32* %24, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %38, align 4
  %88 = load i32, i32* %29, align 4
  %89 = icmp ult i32 %87, %88
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %351

92:                                               ; preds = %90
  %93 = load i32, i32* %28, align 4
  store i32 %93, i32* %37, align 4
  br label %94

94:                                               ; preds = %344, %92
  %95 = load i32, i32* %37, align 4
  %96 = load i32, i32* %36, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %347

98:                                               ; preds = %94
  %99 = load i32*, i32** %27, align 8
  %100 = load i32, i32* %37, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CRUSH_ITEM_UNDEF, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %344

107:                                              ; preds = %98
  %108 = load %struct.crush_bucket*, %struct.crush_bucket** %20, align 8
  store %struct.crush_bucket* %108, %struct.crush_bucket** %35, align 8
  br label %109

109:                                              ; preds = %249, %107
  %110 = load i32, i32* %37, align 4
  %111 = load i32, i32* %33, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %39, align 4
  %113 = load %struct.crush_bucket*, %struct.crush_bucket** %35, align 8
  %114 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CRUSH_BUCKET_UNIFORM, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %109
  %119 = load %struct.crush_bucket*, %struct.crush_bucket** %35, align 8
  %120 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %25, align 4
  %123 = srem i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load i32, i32* %25, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %38, align 4
  %129 = mul i32 %127, %128
  %130 = load i32, i32* %39, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %39, align 4
  br label %138

132:                                              ; preds = %118, %109
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %38, align 4
  %135 = mul i32 %133, %134
  %136 = load i32, i32* %39, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %39, align 4
  br label %138

138:                                              ; preds = %132, %125
  %139 = load %struct.crush_bucket*, %struct.crush_bucket** %35, align 8
  %140 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %343

145:                                              ; preds = %138
  %146 = load %struct.crush_bucket*, %struct.crush_bucket** %35, align 8
  %147 = load %struct.crush_work*, %struct.crush_work** %19, align 8
  %148 = getelementptr inbounds %struct.crush_work, %struct.crush_work* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.crush_bucket*, %struct.crush_bucket** %35, align 8
  %151 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 -1, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %39, align 4
  %159 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %34, align 8
  %160 = icmp ne %struct.crush_choose_arg* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %145
  %162 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %34, align 8
  %163 = load %struct.crush_bucket*, %struct.crush_bucket** %35, align 8
  %164 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 -1, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %162, i64 %167
  br label %170

169:                                              ; preds = %145
  br label %170

170:                                              ; preds = %169, %161
  %171 = phi %struct.crush_choose_arg* [ %168, %161 ], [ null, %169 ]
  %172 = load i32, i32* %28, align 4
  %173 = call i32 @crush_bucket_choose(%struct.crush_bucket* %146, i32 %156, i32 %157, i32 %158, %struct.crush_choose_arg* %171, i32 %172)
  store i32 %173, i32* %41, align 4
  %174 = load i32, i32* %41, align 4
  %175 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %176 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sge i32 %174, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %170
  %180 = load i32, i32* %41, align 4
  %181 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %183 = load i32*, i32** %27, align 8
  %184 = load i32, i32* %37, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  %187 = load i32*, i32** %32, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %179
  %190 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %191 = load i32*, i32** %32, align 8
  %192 = load i32, i32* %37, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %189, %179
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %24, align 4
  br label %343

198:                                              ; preds = %170
  %199 = load i32, i32* %41, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %203 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %202, i32 0, i32 4
  %204 = load %struct.crush_bucket**, %struct.crush_bucket*** %203, align 8
  %205 = load i32, i32* %41, align 4
  %206 = sub nsw i32 -1, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.crush_bucket*, %struct.crush_bucket** %204, i64 %207
  %209 = load %struct.crush_bucket*, %struct.crush_bucket** %208, align 8
  %210 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %42, align 4
  br label %213

212:                                              ; preds = %198
  store i32 0, i32* %42, align 4
  br label %213

213:                                              ; preds = %212, %201
  %214 = load i32, i32* %41, align 4
  %215 = load i32, i32* %42, align 4
  %216 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %214, i32 %215)
  %217 = load i32, i32* %42, align 4
  %218 = load i32, i32* %26, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %258

220:                                              ; preds = %213
  %221 = load i32, i32* %41, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %41, align 4
  %225 = sub nsw i32 -1, %224
  %226 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %227 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %225, %228
  br i1 %229, label %230, label %249

230:                                              ; preds = %223, %220
  %231 = load i32, i32* %26, align 4
  %232 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %234 = load i32*, i32** %27, align 8
  %235 = load i32, i32* %37, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i32*, i32** %32, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %230
  %241 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %242 = load i32*, i32** %32, align 8
  %243 = load i32, i32* %37, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %240, %230
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %24, align 4
  br label %343

249:                                              ; preds = %223
  %250 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %251 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %250, i32 0, i32 4
  %252 = load %struct.crush_bucket**, %struct.crush_bucket*** %251, align 8
  %253 = load i32, i32* %41, align 4
  %254 = sub nsw i32 -1, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.crush_bucket*, %struct.crush_bucket** %252, i64 %255
  %257 = load %struct.crush_bucket*, %struct.crush_bucket** %256, align 8
  store %struct.crush_bucket* %257, %struct.crush_bucket** %35, align 8
  br label %109

258:                                              ; preds = %213
  store i32 0, i32* %43, align 4
  %259 = load i32, i32* %28, align 4
  store i32 %259, i32* %40, align 4
  br label %260

260:                                              ; preds = %274, %258
  %261 = load i32, i32* %40, align 4
  %262 = load i32, i32* %36, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %277

264:                                              ; preds = %260
  %265 = load i32*, i32** %27, align 8
  %266 = load i32, i32* %40, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %41, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  store i32 1, i32* %43, align 4
  br label %277

273:                                              ; preds = %264
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %40, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %40, align 4
  br label %260

277:                                              ; preds = %272, %260
  %278 = load i32, i32* %43, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  br label %343

281:                                              ; preds = %277
  %282 = load i32, i32* %31, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %323

284:                                              ; preds = %281
  %285 = load i32, i32* %41, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %316

287:                                              ; preds = %284
  %288 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %289 = load %struct.crush_work*, %struct.crush_work** %19, align 8
  %290 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %291 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %290, i32 0, i32 4
  %292 = load %struct.crush_bucket**, %struct.crush_bucket*** %291, align 8
  %293 = load i32, i32* %41, align 4
  %294 = sub nsw i32 -1, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.crush_bucket*, %struct.crush_bucket** %292, i64 %295
  %297 = load %struct.crush_bucket*, %struct.crush_bucket** %296, align 8
  %298 = load i32*, i32** %21, align 8
  %299 = load i32, i32* %22, align 4
  %300 = load i32, i32* %23, align 4
  %301 = load i32, i32* %25, align 4
  %302 = load i32*, i32** %32, align 8
  %303 = load i32, i32* %37, align 4
  %304 = load i32, i32* %30, align 4
  %305 = load i32, i32* %39, align 4
  %306 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %34, align 8
  call void @crush_choose_indep(%struct.crush_map* %288, %struct.crush_work* %289, %struct.crush_bucket* %297, i32* %298, i32 %299, i32 %300, i32 1, i32 %301, i32 0, i32* %302, i32 %303, i32 %304, i32 0, i32 0, i32* null, i32 %305, %struct.crush_choose_arg* %306)
  %307 = load i32*, i32** %32, align 8
  %308 = load i32, i32* %37, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %287
  br label %343

315:                                              ; preds = %287
  br label %322

316:                                              ; preds = %284
  %317 = load i32, i32* %41, align 4
  %318 = load i32*, i32** %32, align 8
  %319 = load i32, i32* %37, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %317, i32* %321, align 4
  br label %322

322:                                              ; preds = %316, %315
  br label %323

323:                                              ; preds = %322, %281
  %324 = load i32, i32* %42, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %323
  %327 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %328 = load i32*, i32** %21, align 8
  %329 = load i32, i32* %22, align 4
  %330 = load i32, i32* %41, align 4
  %331 = load i32, i32* %23, align 4
  %332 = call i64 @is_out(%struct.crush_map* %327, i32* %328, i32 %329, i32 %330, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %326
  br label %343

335:                                              ; preds = %326, %323
  %336 = load i32, i32* %41, align 4
  %337 = load i32*, i32** %27, align 8
  %338 = load i32, i32* %37, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  store i32 %336, i32* %340, align 4
  %341 = load i32, i32* %24, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %24, align 4
  br label %343

343:                                              ; preds = %335, %334, %314, %280, %246, %195, %143
  br label %344

344:                                              ; preds = %343, %106
  %345 = load i32, i32* %37, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %37, align 4
  br label %94

347:                                              ; preds = %94
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %38, align 4
  %350 = add i32 %349, 1
  store i32 %350, i32* %38, align 4
  br label %83

351:                                              ; preds = %90
  %352 = load i32, i32* %28, align 4
  store i32 %352, i32* %37, align 4
  br label %353

353:                                              ; preds = %389, %351
  %354 = load i32, i32* %37, align 4
  %355 = load i32, i32* %36, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %392

357:                                              ; preds = %353
  %358 = load i32*, i32** %27, align 8
  %359 = load i32, i32* %37, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @CRUSH_ITEM_UNDEF, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %371

365:                                              ; preds = %357
  %366 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %367 = load i32*, i32** %27, align 8
  %368 = load i32, i32* %37, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  store i32 %366, i32* %370, align 4
  br label %371

371:                                              ; preds = %365, %357
  %372 = load i32*, i32** %32, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %388

374:                                              ; preds = %371
  %375 = load i32*, i32** %32, align 8
  %376 = load i32, i32* %37, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @CRUSH_ITEM_UNDEF, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %374
  %383 = load i32, i32* @CRUSH_ITEM_NONE, align 4
  %384 = load i32*, i32** %32, align 8
  %385 = load i32, i32* %37, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %383, i32* %387, align 4
  br label %388

388:                                              ; preds = %382, %374, %371
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %37, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %37, align 4
  br label %353

392:                                              ; preds = %353
  %393 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %394 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = icmp ne i32* %395, null
  br i1 %396, label %397, label %412

397:                                              ; preds = %392
  %398 = load i32, i32* %38, align 4
  %399 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %400 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = icmp ule i32 %398, %401
  br i1 %402, label %403, label %412

403:                                              ; preds = %397
  %404 = load %struct.crush_map*, %struct.crush_map** %18, align 8
  %405 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %404, i32 0, i32 3
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %38, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %403, %397, %392
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @crush_bucket_choose(%struct.crush_bucket*, i32, i32, i32, %struct.crush_choose_arg*, i32) #1

declare dso_local i64 @is_out(%struct.crush_map*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

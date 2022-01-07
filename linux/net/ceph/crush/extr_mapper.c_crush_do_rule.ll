; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_do_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_do_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32, %struct.crush_rule** }
%struct.crush_rule = type { i64, %struct.crush_rule_step* }
%struct.crush_rule_step = type { i32, i32, i32 }
%struct.crush_choose_arg = type { i32 }
%struct.crush_work = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c" bad ruleno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" bad take value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  bad w[i] %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" unknown op %d at step %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crush_do_rule(%struct.crush_map* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64* %5, i32 %6, i8* %7, %struct.crush_choose_arg* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.crush_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.crush_choose_arg*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.crush_work*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca %struct.crush_rule*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.crush_rule_step*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store %struct.crush_map* %0, %struct.crush_map** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64* %5, i64** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store %struct.crush_choose_arg* %8, %struct.crush_choose_arg** %19, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = bitcast i8* %47 to %struct.crush_work*
  store %struct.crush_work* %48, %struct.crush_work** %21, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %51 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %49, i64 %53
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %22, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %23, align 8
  %60 = load i32*, i32** %23, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %24, align 8
  %64 = load i32*, i32** %22, align 8
  store i32* %64, i32** %25, align 8
  %65 = load i32*, i32** %23, align 8
  store i32* %65, i32** %26, align 8
  store i32 0, i32* %28, align 4
  %66 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %67 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %70 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %71 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %39, align 4
  %73 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %74 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %40, align 4
  %76 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %77 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %41, align 4
  %79 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %80 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %42, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %85 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %9
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 0, i32* %10, align 4
  br label %454

91:                                               ; preds = %9
  %92 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %93 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %92, i32 0, i32 11
  %94 = load %struct.crush_rule**, %struct.crush_rule*** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.crush_rule*, %struct.crush_rule** %94, i64 %96
  %98 = load %struct.crush_rule*, %struct.crush_rule** %97, align 8
  store %struct.crush_rule* %98, %struct.crush_rule** %31, align 8
  store i32 0, i32* %20, align 4
  store i64 0, i64* %32, align 8
  br label %99

99:                                               ; preds = %449, %91
  %100 = load i64, i64* %32, align 8
  %101 = load %struct.crush_rule*, %struct.crush_rule** %31, align 8
  %102 = getelementptr inbounds %struct.crush_rule, %struct.crush_rule* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %452

105:                                              ; preds = %99
  store i32 0, i32* %43, align 4
  %106 = load %struct.crush_rule*, %struct.crush_rule** %31, align 8
  %107 = getelementptr inbounds %struct.crush_rule, %struct.crush_rule* %106, i32 0, i32 1
  %108 = load %struct.crush_rule_step*, %struct.crush_rule_step** %107, align 8
  %109 = load i64, i64* %32, align 8
  %110 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %108, i64 %109
  store %struct.crush_rule_step* %110, %struct.crush_rule_step** %44, align 8
  %111 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %112 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %442 [
    i32 128, label %114
    i32 129, label %166
    i32 133, label %176
    i32 130, label %186
    i32 131, label %196
    i32 132, label %206
    i32 134, label %216
    i32 139, label %226
    i32 137, label %226
    i32 138, label %227
    i32 136, label %227
    i32 135, label %415
  ]

114:                                              ; preds = %105
  %115 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %116 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %121 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %124 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %154, label %127

127:                                              ; preds = %119, %114
  %128 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %129 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 -1, %130
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %127
  %134 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %135 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 -1, %136
  %138 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %139 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %133
  %143 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %144 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %147 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 -1, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %142, %119
  %155 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %156 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %25, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %157, i32* %159, align 4
  store i32 1, i32* %28, align 4
  br label %165

160:                                              ; preds = %142, %133, %127
  %161 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %162 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %160, %154
  br label %448

166:                                              ; preds = %105
  %167 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %168 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %173 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %37, align 4
  br label %175

175:                                              ; preds = %171, %166
  br label %448

176:                                              ; preds = %105
  %177 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %178 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %183 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %38, align 4
  br label %185

185:                                              ; preds = %181, %176
  br label %448

186:                                              ; preds = %105
  %187 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %188 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %193 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %39, align 4
  br label %195

195:                                              ; preds = %191, %186
  br label %448

196:                                              ; preds = %105
  %197 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %198 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %203 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %40, align 4
  br label %205

205:                                              ; preds = %201, %196
  br label %448

206:                                              ; preds = %105
  %207 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %208 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %213 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %41, align 4
  br label %215

215:                                              ; preds = %211, %206
  br label %448

216:                                              ; preds = %105
  %217 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %218 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %223 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %42, align 4
  br label %225

225:                                              ; preds = %221, %216
  br label %448

226:                                              ; preds = %105, %105
  store i32 1, i32* %43, align 4
  br label %227

227:                                              ; preds = %105, %105, %226
  %228 = load i32, i32* %28, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  br label %448

231:                                              ; preds = %227
  %232 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %233 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 139
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %238 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 138
  br label %241

241:                                              ; preds = %236, %231
  %242 = phi i1 [ true, %231 ], [ %240, %236 ]
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %27, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %33, align 4
  br label %244

244:                                              ; preds = %396, %241
  %245 = load i32, i32* %33, align 4
  %246 = load i32, i32* %28, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %399

248:                                              ; preds = %244
  %249 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %250 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %35, align 4
  %252 = load i32, i32* %35, align 4
  %253 = icmp sle i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %248
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %35, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %35, align 4
  %258 = load i32, i32* %35, align 4
  %259 = icmp sle i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  br label %396

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261, %248
  store i32 0, i32* %34, align 4
  %263 = load i32*, i32** %25, align 8
  %264 = load i32, i32* %33, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 -1, %267
  store i32 %268, i32* %45, align 4
  %269 = load i32, i32* %45, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %45, align 4
  %273 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %274 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %272, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %271, %262
  %278 = load i32*, i32** %25, align 8
  %279 = load i32, i32* %33, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %282)
  br label %396

284:                                              ; preds = %271
  %285 = load i32, i32* %43, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %341

287:                                              ; preds = %284
  %288 = load i32, i32* %38, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* %38, align 4
  store i32 %291, i32* %46, align 4
  br label %301

292:                                              ; preds = %287
  %293 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %294 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %293, i32 0, i32 10
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  store i32 1, i32* %46, align 4
  br label %300

298:                                              ; preds = %292
  %299 = load i32, i32* %37, align 4
  store i32 %299, i32* %46, align 4
  br label %300

300:                                              ; preds = %298, %297
  br label %301

301:                                              ; preds = %300, %290
  %302 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %303 = load %struct.crush_work*, %struct.crush_work** %21, align 8
  %304 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %305 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %304, i32 0, i32 9
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %45, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i64*, i64** %16, align 8
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %35, align 4
  %315 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %316 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %26, align 8
  %319 = load i32, i32* %29, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %34, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %29, align 4
  %325 = sub nsw i32 %323, %324
  %326 = load i32, i32* %37, align 4
  %327 = load i32, i32* %46, align 4
  %328 = load i32, i32* %39, align 4
  %329 = load i32, i32* %40, align 4
  %330 = load i32, i32* %27, align 4
  %331 = load i32, i32* %41, align 4
  %332 = load i32, i32* %42, align 4
  %333 = load i32*, i32** %24, align 8
  %334 = load i32, i32* %29, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %19, align 8
  %338 = call i32 @crush_choose_firstn(%struct.crush_map* %302, %struct.crush_work* %303, i32 %310, i64* %311, i32 %312, i32 %313, i32 %314, i32 %317, i32* %321, i32 %322, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32* %336, i32 0, %struct.crush_choose_arg* %337)
  %339 = load i32, i32* %29, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* %29, align 4
  br label %395

341:                                              ; preds = %284
  %342 = load i32, i32* %35, align 4
  %343 = load i32, i32* %15, align 4
  %344 = load i32, i32* %29, align 4
  %345 = sub nsw i32 %343, %344
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load i32, i32* %35, align 4
  br label %353

349:                                              ; preds = %341
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* %29, align 4
  %352 = sub nsw i32 %350, %351
  br label %353

353:                                              ; preds = %349, %347
  %354 = phi i32 [ %348, %347 ], [ %352, %349 ]
  store i32 %354, i32* %36, align 4
  %355 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %356 = load %struct.crush_work*, %struct.crush_work** %21, align 8
  %357 = load %struct.crush_map*, %struct.crush_map** %11, align 8
  %358 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %357, i32 0, i32 9
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %45, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i64*, i64** %16, align 8
  %365 = load i32, i32* %17, align 4
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %36, align 4
  %368 = load i32, i32* %35, align 4
  %369 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %370 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** %26, align 8
  %373 = load i32, i32* %29, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %34, align 4
  %377 = load i32, i32* %37, align 4
  %378 = load i32, i32* %38, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %353
  %381 = load i32, i32* %38, align 4
  br label %383

382:                                              ; preds = %353
  br label %383

383:                                              ; preds = %382, %380
  %384 = phi i32 [ %381, %380 ], [ 1, %382 ]
  %385 = load i32, i32* %27, align 4
  %386 = load i32*, i32** %24, align 8
  %387 = load i32, i32* %29, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %19, align 8
  %391 = call i32 @crush_choose_indep(%struct.crush_map* %355, %struct.crush_work* %356, i32 %363, i64* %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %371, i32* %375, i32 %376, i32 %377, i32 %384, i32 %385, i32* %389, i32 0, %struct.crush_choose_arg* %390)
  %392 = load i32, i32* %36, align 4
  %393 = load i32, i32* %29, align 4
  %394 = add nsw i32 %393, %392
  store i32 %394, i32* %29, align 4
  br label %395

395:                                              ; preds = %383, %301
  br label %396

396:                                              ; preds = %395, %277, %260
  %397 = load i32, i32* %33, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %33, align 4
  br label %244

399:                                              ; preds = %244
  %400 = load i32, i32* %27, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %399
  %403 = load i32*, i32** %26, align 8
  %404 = load i32*, i32** %24, align 8
  %405 = load i32, i32* %29, align 4
  %406 = sext i32 %405 to i64
  %407 = mul i64 %406, 4
  %408 = trunc i64 %407 to i32
  %409 = call i32 @memcpy(i32* %403, i32* %404, i32 %408)
  br label %410

410:                                              ; preds = %402, %399
  %411 = load i32*, i32** %26, align 8
  store i32* %411, i32** %30, align 8
  %412 = load i32*, i32** %25, align 8
  store i32* %412, i32** %26, align 8
  %413 = load i32*, i32** %30, align 8
  store i32* %413, i32** %25, align 8
  %414 = load i32, i32* %29, align 4
  store i32 %414, i32* %28, align 4
  br label %448

415:                                              ; preds = %105
  store i32 0, i32* %33, align 4
  br label %416

416:                                              ; preds = %438, %415
  %417 = load i32, i32* %33, align 4
  %418 = load i32, i32* %28, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %416
  %421 = load i32, i32* %20, align 4
  %422 = load i32, i32* %15, align 4
  %423 = icmp slt i32 %421, %422
  br label %424

424:                                              ; preds = %420, %416
  %425 = phi i1 [ false, %416 ], [ %423, %420 ]
  br i1 %425, label %426, label %441

426:                                              ; preds = %424
  %427 = load i32*, i32** %25, align 8
  %428 = load i32, i32* %33, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32*, i32** %14, align 8
  %433 = load i32, i32* %20, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  store i32 %431, i32* %435, align 4
  %436 = load i32, i32* %20, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %20, align 4
  br label %438

438:                                              ; preds = %426
  %439 = load i32, i32* %33, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %33, align 4
  br label %416

441:                                              ; preds = %424
  store i32 0, i32* %28, align 4
  br label %448

442:                                              ; preds = %105
  %443 = load %struct.crush_rule_step*, %struct.crush_rule_step** %44, align 8
  %444 = getelementptr inbounds %struct.crush_rule_step, %struct.crush_rule_step* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load i64, i64* %32, align 8
  %447 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %445, i64 %446)
  br label %448

448:                                              ; preds = %442, %441, %410, %230, %225, %215, %205, %195, %185, %175, %165
  br label %449

449:                                              ; preds = %448
  %450 = load i64, i64* %32, align 8
  %451 = add nsw i64 %450, 1
  store i64 %451, i64* %32, align 8
  br label %99

452:                                              ; preds = %99
  %453 = load i32, i32* %20, align 4
  store i32 %453, i32* %10, align 4
  br label %454

454:                                              ; preds = %452, %88
  %455 = load i32, i32* %10, align 4
  ret i32 %455
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @crush_choose_firstn(%struct.crush_map*, %struct.crush_work*, i32, i64*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.crush_choose_arg*) #1

declare dso_local i32 @crush_choose_indep(%struct.crush_map*, %struct.crush_work*, i32, i64*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, %struct.crush_choose_arg*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

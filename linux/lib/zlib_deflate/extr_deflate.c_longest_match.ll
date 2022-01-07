; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deflate.c_longest_match.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deflate.c_longest_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, i32, i32, i32, i64*, i64, i32, i32, i64, i32, i64 }

@NIL = common dso_local global i64 0, align 8
@MAX_MATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Code too clever\00", align 1
@MIN_LOOKAHEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"need lookahead\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no future\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"match[2]?\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"wild scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64)* @longest_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @longest_match(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  store i64* %28, i64** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i64 @MAX_DIST(%struct.TYPE_4__* %39)
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = call i64 @MAX_DIST(%struct.TYPE_4__* %47)
  %49 = sub nsw i64 %46, %48
  br label %52

50:                                               ; preds = %2
  %51 = load i64, i64* @NIL, align 8
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi i64 [ %49, %42 ], [ %51, %50 ]
  store i64 %53, i64* %12, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i64*, i64** %55, align 8
  store i64* %56, i64** %13, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  %68 = load i32, i32* @MAX_MATCH, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64* %70, i64** %15, align 8
  %71 = load i64*, i64** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %16, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %17, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 8
  br i1 %85, label %86, label %89

86:                                               ; preds = %52
  %87 = load i32, i32* @MAX_MATCH, align 4
  %88 = icmp eq i32 %87, 258
  br label %89

89:                                               ; preds = %86, %52
  %90 = phi i1 [ false, %52 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = lshr i32 %101, 2
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 9
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @MIN_LOOKAHEAD, align 8
  %125 = sub nsw i64 %123, %124
  %126 = icmp sle i64 %119, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @Assert(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %323, %115
  %130 = load i64, i64* %5, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %130, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @Assert(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64* %142, i64** %8, align 8
  %143 = load i64*, i64** %8, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %17, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %173, label %150

150:                                              ; preds = %129
  %151 = load i64*, i64** %8, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %16, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %173, label %159

159:                                              ; preds = %150
  %160 = load i64*, i64** %8, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %7, align 8
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = load i64*, i64** %8, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %8, align 8
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %7, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %165, %159, %150, %129
  br label %310

174:                                              ; preds = %165
  %175 = load i64*, i64** %7, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 2
  store i64* %176, i64** %7, align 8
  %177 = load i64*, i64** %8, align 8
  %178 = getelementptr inbounds i64, i64* %177, i32 1
  store i64* %178, i64** %8, align 8
  %179 = load i64*, i64** %7, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %8, align 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %180, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @Assert(i32 %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %186

186:                                              ; preds = %255, %174
  br label %187

187:                                              ; preds = %186
  %188 = load i64*, i64** %7, align 8
  %189 = getelementptr inbounds i64, i64* %188, i32 1
  store i64* %189, i64** %7, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %8, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %8, align 8
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %190, %193
  br i1 %194, label %195, label %255

195:                                              ; preds = %187
  %196 = load i64*, i64** %7, align 8
  %197 = getelementptr inbounds i64, i64* %196, i32 1
  store i64* %197, i64** %7, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %8, align 8
  %200 = getelementptr inbounds i64, i64* %199, i32 1
  store i64* %200, i64** %8, align 8
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %198, %201
  br i1 %202, label %203, label %255

203:                                              ; preds = %195
  %204 = load i64*, i64** %7, align 8
  %205 = getelementptr inbounds i64, i64* %204, i32 1
  store i64* %205, i64** %7, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %8, align 8
  %208 = getelementptr inbounds i64, i64* %207, i32 1
  store i64* %208, i64** %8, align 8
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %255

211:                                              ; preds = %203
  %212 = load i64*, i64** %7, align 8
  %213 = getelementptr inbounds i64, i64* %212, i32 1
  store i64* %213, i64** %7, align 8
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %8, align 8
  %216 = getelementptr inbounds i64, i64* %215, i32 1
  store i64* %216, i64** %8, align 8
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %214, %217
  br i1 %218, label %219, label %255

219:                                              ; preds = %211
  %220 = load i64*, i64** %7, align 8
  %221 = getelementptr inbounds i64, i64* %220, i32 1
  store i64* %221, i64** %7, align 8
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %8, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %8, align 8
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  br i1 %226, label %227, label %255

227:                                              ; preds = %219
  %228 = load i64*, i64** %7, align 8
  %229 = getelementptr inbounds i64, i64* %228, i32 1
  store i64* %229, i64** %7, align 8
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %8, align 8
  %232 = getelementptr inbounds i64, i64* %231, i32 1
  store i64* %232, i64** %8, align 8
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %230, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %227
  %236 = load i64*, i64** %7, align 8
  %237 = getelementptr inbounds i64, i64* %236, i32 1
  store i64* %237, i64** %7, align 8
  %238 = load i64, i64* %237, align 8
  %239 = load i64*, i64** %8, align 8
  %240 = getelementptr inbounds i64, i64* %239, i32 1
  store i64* %240, i64** %8, align 8
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %238, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %235
  %244 = load i64*, i64** %7, align 8
  %245 = getelementptr inbounds i64, i64* %244, i32 1
  store i64* %245, i64** %7, align 8
  %246 = load i64, i64* %245, align 8
  %247 = load i64*, i64** %8, align 8
  %248 = getelementptr inbounds i64, i64* %247, i32 1
  store i64* %248, i64** %8, align 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %246, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load i64*, i64** %7, align 8
  %253 = load i64*, i64** %15, align 8
  %254 = icmp ult i64* %252, %253
  br label %255

255:                                              ; preds = %251, %243, %235, %227, %219, %211, %203, %195, %187
  %256 = phi i1 [ false, %243 ], [ false, %235 ], [ false, %227 ], [ false, %219 ], [ false, %211 ], [ false, %203 ], [ false, %195 ], [ false, %187 ], [ %254, %251 ]
  br i1 %256, label %186, label %257

257:                                              ; preds = %255
  %258 = load i64*, i64** %7, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 %264, 1
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %261, i64 %266
  %268 = icmp ule i64* %258, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @Assert(i32 %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %271 = load i32, i32* @MAX_MATCH, align 4
  %272 = load i64*, i64** %15, align 8
  %273 = load i64*, i64** %7, align 8
  %274 = ptrtoint i64* %272 to i64
  %275 = ptrtoint i64* %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 8
  %278 = trunc i64 %277 to i32
  %279 = sub nsw i32 %271, %278
  store i32 %279, i32* %9, align 4
  %280 = load i64*, i64** %15, align 8
  %281 = load i32, i32* @MAX_MATCH, align 4
  %282 = sext i32 %281 to i64
  %283 = sub i64 0, %282
  %284 = getelementptr inbounds i64, i64* %280, i64 %283
  store i64* %284, i64** %7, align 8
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %309

288:                                              ; preds = %257
  %289 = load i64, i64* %5, align 8
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 11
  store i64 %289, i64* %291, align 8
  %292 = load i32, i32* %9, align 4
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp sge i32 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %288
  br label %325

297:                                              ; preds = %288
  %298 = load i64*, i64** %7, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sub nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %298, i64 %301
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %16, align 8
  %304 = load i64*, i64** %7, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %17, align 8
  br label %309

309:                                              ; preds = %297, %257
  br label %310

310:                                              ; preds = %309, %173
  %311 = load i64*, i64** %13, align 8
  %312 = load i64, i64* %5, align 8
  %313 = load i64, i64* %14, align 8
  %314 = and i64 %312, %313
  %315 = getelementptr inbounds i64, i64* %311, i64 %314
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %5, align 8
  %317 = load i64, i64* %12, align 8
  %318 = icmp sgt i64 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = load i32, i32* %6, align 4
  %321 = add i32 %320, -1
  store i32 %321, i32* %6, align 4
  %322 = icmp ne i32 %321, 0
  br label %323

323:                                              ; preds = %319, %310
  %324 = phi i1 [ false, %310 ], [ %322, %319 ]
  br i1 %324, label %129, label %325

325:                                              ; preds = %323, %296
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 9
  %330 = load i64, i64* %329, align 8
  %331 = icmp sle i64 %327, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %3, align 8
  br label %339

335:                                              ; preds = %325
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 9
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %3, align 8
  br label %339

339:                                              ; preds = %335, %332
  %340 = load i64, i64* %3, align 8
  ret i64 %340
}

declare dso_local i64 @MAX_DIST(%struct.TYPE_4__*) #1

declare dso_local i32 @Assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

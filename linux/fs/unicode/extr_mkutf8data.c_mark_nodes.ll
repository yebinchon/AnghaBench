; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_mark_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_mark_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i8*, i32, i64, i64 (i32)*, %struct.node* }
%struct.node = type { i32, i64, i32, i32, i64, i32, %struct.node* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Marking %s_%x\0A\00", align 1
@LEAF = common dso_local global i64 0, align 8
@NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Marked %d nodes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*)* @mark_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_nodes(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @verbose, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.tree*, %struct.tree** %2, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.tree*, %struct.tree** %2, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.tree*, %struct.tree** %2, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LEAF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %408

26:                                               ; preds = %19
  %27 = load %struct.tree*, %struct.tree** %2, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NODE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.tree*, %struct.tree** %2, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 4
  %36 = load %struct.node*, %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %184, %169, %99, %26
  %38 = load %struct.node*, %struct.node** %3, align 8
  %39 = icmp ne %struct.node* %38, null
  br i1 %39, label %40, label %196

40:                                               ; preds = %37
  %41 = load %struct.node*, %struct.node** %3, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.node*, %struct.node** %3, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LEAF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %49
  %59 = load %struct.node*, %struct.node** %3, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.tree*, %struct.tree** %2, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 3
  %65 = load i64 (i32)*, i64 (i32)** %64, align 8
  %66 = load %struct.node*, %struct.node** %3, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 %65(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %58
  %72 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %72, %struct.node** %4, align 8
  br label %73

73:                                               ; preds = %84, %71
  %74 = load %struct.node*, %struct.node** %4, align 8
  %75 = icmp ne %struct.node* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.node*, %struct.node** %4, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %76, %73
  %83 = phi i1 [ false, %73 ], [ %81, %76 ]
  br i1 %83, label %84, label %92

84:                                               ; preds = %82
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load %struct.node*, %struct.node** %4, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  %89 = load %struct.node*, %struct.node** %4, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 6
  %91 = load %struct.node*, %struct.node** %90, align 8
  store %struct.node* %91, %struct.node** %4, align 8
  br label %73

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %58
  br label %113

94:                                               ; preds = %49
  %95 = load %struct.node*, %struct.node** %3, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load %struct.node*, %struct.node** %3, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NODE, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.node*, %struct.node** %3, align 8
  %108 = getelementptr inbounds %struct.node, %struct.node* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to %struct.node*
  store %struct.node* %111, %struct.node** %3, align 8
  br label %37

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113, %40
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %184

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load %struct.node*, %struct.node** %3, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LEAF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %164

128:                                              ; preds = %119
  %129 = load %struct.node*, %struct.node** %3, align 8
  %130 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.tree*, %struct.tree** %2, align 8
  %134 = getelementptr inbounds %struct.tree, %struct.tree* %133, i32 0, i32 3
  %135 = load i64 (i32)*, i64 (i32)** %134, align 8
  %136 = load %struct.node*, %struct.node** %3, align 8
  %137 = getelementptr inbounds %struct.node, %struct.node* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i64 %135(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %128
  %142 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %142, %struct.node** %4, align 8
  br label %143

143:                                              ; preds = %154, %141
  %144 = load %struct.node*, %struct.node** %4, align 8
  %145 = icmp ne %struct.node* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.node*, %struct.node** %4, align 8
  %148 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %146, %143
  %153 = phi i1 [ false, %143 ], [ %151, %146 ]
  br i1 %153, label %154, label %162

154:                                              ; preds = %152
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  %157 = load %struct.node*, %struct.node** %4, align 8
  %158 = getelementptr inbounds %struct.node, %struct.node* %157, i32 0, i32 3
  store i32 1, i32* %158, align 4
  %159 = load %struct.node*, %struct.node** %4, align 8
  %160 = getelementptr inbounds %struct.node, %struct.node* %159, i32 0, i32 6
  %161 = load %struct.node*, %struct.node** %160, align 8
  store %struct.node* %161, %struct.node** %4, align 8
  br label %143

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %128
  br label %183

164:                                              ; preds = %119
  %165 = load %struct.node*, %struct.node** %3, align 8
  %166 = getelementptr inbounds %struct.node, %struct.node* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %164
  %170 = load %struct.node*, %struct.node** %3, align 8
  %171 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @NODE, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load %struct.node*, %struct.node** %3, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.node*
  store %struct.node* %181, %struct.node** %3, align 8
  br label %37

182:                                              ; preds = %164
  br label %183

183:                                              ; preds = %182, %163
  br label %184

184:                                              ; preds = %183, %114
  %185 = load i32, i32* %7, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %7, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %6, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %6, align 4
  %193 = load %struct.node*, %struct.node** %3, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 6
  %195 = load %struct.node*, %struct.node** %194, align 8
  store %struct.node* %195, %struct.node** %3, align 8
  br label %37

196:                                              ; preds = %37
  %197 = load %struct.tree*, %struct.tree** %2, align 8
  %198 = getelementptr inbounds %struct.tree, %struct.tree* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NODE, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.tree*, %struct.tree** %2, align 8
  %205 = getelementptr inbounds %struct.tree, %struct.tree* %204, i32 0, i32 4
  %206 = load %struct.node*, %struct.node** %205, align 8
  store %struct.node* %206, %struct.node** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %395, %392, %298, %196
  %208 = load %struct.node*, %struct.node** %3, align 8
  %209 = icmp ne %struct.node* %208, null
  br i1 %209, label %210, label %407

210:                                              ; preds = %207
  %211 = load %struct.node*, %struct.node** %3, align 8
  %212 = getelementptr inbounds %struct.node, %struct.node* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = shl i32 1, %213
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* %7, align 4
  %217 = and i32 %215, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %301

219:                                              ; preds = %210
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %5, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %5, align 4
  %223 = load %struct.node*, %struct.node** %3, align 8
  %224 = getelementptr inbounds %struct.node, %struct.node* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @LEAF, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %264

228:                                              ; preds = %219
  %229 = load %struct.node*, %struct.node** %3, align 8
  %230 = getelementptr inbounds %struct.node, %struct.node* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @assert(i32 %231)
  %233 = load %struct.tree*, %struct.tree** %2, align 8
  %234 = getelementptr inbounds %struct.tree, %struct.tree* %233, i32 0, i32 3
  %235 = load i64 (i32)*, i64 (i32)** %234, align 8
  %236 = load %struct.node*, %struct.node** %3, align 8
  %237 = getelementptr inbounds %struct.node, %struct.node* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i64 %235(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %228
  %242 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %242, %struct.node** %4, align 8
  br label %243

243:                                              ; preds = %254, %241
  %244 = load %struct.node*, %struct.node** %4, align 8
  %245 = icmp ne %struct.node* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load %struct.node*, %struct.node** %4, align 8
  %248 = getelementptr inbounds %struct.node, %struct.node* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  br label %252

252:                                              ; preds = %246, %243
  %253 = phi i1 [ false, %243 ], [ %251, %246 ]
  br i1 %253, label %254, label %262

254:                                              ; preds = %252
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  %257 = load %struct.node*, %struct.node** %4, align 8
  %258 = getelementptr inbounds %struct.node, %struct.node* %257, i32 0, i32 3
  store i32 1, i32* %258, align 4
  %259 = load %struct.node*, %struct.node** %4, align 8
  %260 = getelementptr inbounds %struct.node, %struct.node* %259, i32 0, i32 6
  %261 = load %struct.node*, %struct.node** %260, align 8
  store %struct.node* %261, %struct.node** %4, align 8
  br label %243

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %228
  br label %300

264:                                              ; preds = %219
  %265 = load %struct.node*, %struct.node** %3, align 8
  %266 = getelementptr inbounds %struct.node, %struct.node* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %299

269:                                              ; preds = %264
  %270 = load %struct.node*, %struct.node** %3, align 8
  %271 = getelementptr inbounds %struct.node, %struct.node* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @NODE, align 8
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load %struct.node*, %struct.node** %3, align 8
  %278 = getelementptr inbounds %struct.node, %struct.node* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to %struct.node*
  store %struct.node* %281, %struct.node** %3, align 8
  %282 = load %struct.node*, %struct.node** %3, align 8
  %283 = getelementptr inbounds %struct.node, %struct.node* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %269
  %287 = load %struct.node*, %struct.node** %3, align 8
  %288 = getelementptr inbounds %struct.node, %struct.node* %287, i32 0, i32 6
  %289 = load %struct.node*, %struct.node** %288, align 8
  %290 = getelementptr inbounds %struct.node, %struct.node* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  %296 = load %struct.node*, %struct.node** %3, align 8
  %297 = getelementptr inbounds %struct.node, %struct.node* %296, i32 0, i32 3
  store i32 1, i32* %297, align 4
  br label %298

298:                                              ; preds = %293, %286, %269
  br label %207

299:                                              ; preds = %264
  br label %300

300:                                              ; preds = %299, %263
  br label %301

301:                                              ; preds = %300, %210
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* %7, align 4
  %304 = and i32 %302, %303
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %395

306:                                              ; preds = %301
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* %6, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %6, align 4
  %310 = load %struct.node*, %struct.node** %3, align 8
  %311 = getelementptr inbounds %struct.node, %struct.node* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @LEAF, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %351

315:                                              ; preds = %306
  %316 = load %struct.node*, %struct.node** %3, align 8
  %317 = getelementptr inbounds %struct.node, %struct.node* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @assert(i32 %318)
  %320 = load %struct.tree*, %struct.tree** %2, align 8
  %321 = getelementptr inbounds %struct.tree, %struct.tree* %320, i32 0, i32 3
  %322 = load i64 (i32)*, i64 (i32)** %321, align 8
  %323 = load %struct.node*, %struct.node** %3, align 8
  %324 = getelementptr inbounds %struct.node, %struct.node* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 8
  %326 = call i64 %322(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %350

328:                                              ; preds = %315
  %329 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %329, %struct.node** %4, align 8
  br label %330

330:                                              ; preds = %341, %328
  %331 = load %struct.node*, %struct.node** %4, align 8
  %332 = icmp ne %struct.node* %331, null
  br i1 %332, label %333, label %339

333:                                              ; preds = %330
  %334 = load %struct.node*, %struct.node** %4, align 8
  %335 = getelementptr inbounds %struct.node, %struct.node* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  %338 = xor i1 %337, true
  br label %339

339:                                              ; preds = %333, %330
  %340 = phi i1 [ false, %330 ], [ %338, %333 ]
  br i1 %340, label %341, label %349

341:                                              ; preds = %339
  %342 = load i32, i32* %8, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %8, align 4
  %344 = load %struct.node*, %struct.node** %4, align 8
  %345 = getelementptr inbounds %struct.node, %struct.node* %344, i32 0, i32 3
  store i32 1, i32* %345, align 4
  %346 = load %struct.node*, %struct.node** %4, align 8
  %347 = getelementptr inbounds %struct.node, %struct.node* %346, i32 0, i32 6
  %348 = load %struct.node*, %struct.node** %347, align 8
  store %struct.node* %348, %struct.node** %4, align 8
  br label %330

349:                                              ; preds = %339
  br label %350

350:                                              ; preds = %349, %315
  br label %394

351:                                              ; preds = %306
  %352 = load %struct.node*, %struct.node** %3, align 8
  %353 = getelementptr inbounds %struct.node, %struct.node* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %393

356:                                              ; preds = %351
  %357 = load %struct.node*, %struct.node** %3, align 8
  %358 = getelementptr inbounds %struct.node, %struct.node* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @NODE, align 8
  %361 = icmp eq i64 %359, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @assert(i32 %362)
  %364 = load %struct.node*, %struct.node** %3, align 8
  %365 = getelementptr inbounds %struct.node, %struct.node* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = inttoptr i64 %367 to %struct.node*
  store %struct.node* %368, %struct.node** %3, align 8
  %369 = load %struct.node*, %struct.node** %3, align 8
  %370 = getelementptr inbounds %struct.node, %struct.node* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %392, label %373

373:                                              ; preds = %356
  %374 = load %struct.node*, %struct.node** %3, align 8
  %375 = getelementptr inbounds %struct.node, %struct.node* %374, i32 0, i32 6
  %376 = load %struct.node*, %struct.node** %375, align 8
  %377 = getelementptr inbounds %struct.node, %struct.node* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %392

380:                                              ; preds = %373
  %381 = load %struct.node*, %struct.node** %3, align 8
  %382 = getelementptr inbounds %struct.node, %struct.node* %381, i32 0, i32 6
  %383 = load %struct.node*, %struct.node** %382, align 8
  %384 = getelementptr inbounds %struct.node, %struct.node* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %380
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %8, align 4
  %390 = load %struct.node*, %struct.node** %3, align 8
  %391 = getelementptr inbounds %struct.node, %struct.node* %390, i32 0, i32 3
  store i32 1, i32* %391, align 4
  br label %392

392:                                              ; preds = %387, %380, %373, %356
  br label %207

393:                                              ; preds = %351
  br label %394

394:                                              ; preds = %393, %350
  br label %395

395:                                              ; preds = %394, %301
  %396 = load i32, i32* %7, align 4
  %397 = xor i32 %396, -1
  %398 = load i32, i32* %5, align 4
  %399 = and i32 %398, %397
  store i32 %399, i32* %5, align 4
  %400 = load i32, i32* %7, align 4
  %401 = xor i32 %400, -1
  %402 = load i32, i32* %6, align 4
  %403 = and i32 %402, %401
  store i32 %403, i32* %6, align 4
  %404 = load %struct.node*, %struct.node** %3, align 8
  %405 = getelementptr inbounds %struct.node, %struct.node* %404, i32 0, i32 6
  %406 = load %struct.node*, %struct.node** %405, align 8
  store %struct.node* %406, %struct.node** %3, align 8
  br label %207

407:                                              ; preds = %207
  br label %408

408:                                              ; preds = %407, %25
  %409 = load i64, i64* @verbose, align 8
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %408
  %412 = load i32, i32* %8, align 4
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %412)
  br label %414

414:                                              ; preds = %411, %408
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

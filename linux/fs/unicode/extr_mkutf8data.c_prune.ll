; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_prune.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i8*, i32, i64, i32 (i8*, i8*)*, %struct.node* }
%struct.node = type { i64, i64, i32, i32, %struct.node*, %struct.node*, %struct.node*, i32, i64 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Pruning %s_%x\0A\00", align 1
@LEAF = common dso_local global i64 0, align 8
@NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Pruned %d nodes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*)* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  %13 = load i64, i64* @verbose, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.tree*, %struct.tree** %2, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.tree*, %struct.tree** %2, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  store i32 0, i32* %12, align 4
  %24 = load %struct.tree*, %struct.tree** %2, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LEAF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %518

30:                                               ; preds = %23
  %31 = load %struct.tree*, %struct.tree** %2, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 4
  %33 = load %struct.node*, %struct.node** %32, align 8
  %34 = icmp ne %struct.node* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %518

36:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %37 = load %struct.tree*, %struct.tree** %2, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 4
  %39 = load %struct.node*, %struct.node** %38, align 8
  store %struct.node* %39, %struct.node** %3, align 8
  br label %40

40:                                               ; preds = %511, %36
  %41 = load %struct.node*, %struct.node** %3, align 8
  %42 = icmp ne %struct.node* %41, null
  br i1 %42, label %43, label %512

43:                                               ; preds = %40
  %44 = load %struct.node*, %struct.node** %3, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %448

49:                                               ; preds = %43
  %50 = load %struct.node*, %struct.node** %3, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LEAF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %448

56:                                               ; preds = %49
  %57 = load %struct.node*, %struct.node** %3, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LEAF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %448

63:                                               ; preds = %56
  %64 = load %struct.node*, %struct.node** %3, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 6
  %66 = load %struct.node*, %struct.node** %65, align 8
  %67 = icmp ne %struct.node* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %448

69:                                               ; preds = %63
  %70 = load %struct.node*, %struct.node** %3, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 5
  %72 = load %struct.node*, %struct.node** %71, align 8
  %73 = icmp ne %struct.node* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %448

75:                                               ; preds = %69
  %76 = load %struct.node*, %struct.node** %3, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 6
  %78 = load %struct.node*, %struct.node** %77, align 8
  store %struct.node* %78, %struct.node** %4, align 8
  %79 = load %struct.node*, %struct.node** %3, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 5
  %81 = load %struct.node*, %struct.node** %80, align 8
  store %struct.node* %81, %struct.node** %5, align 8
  %82 = load %struct.node*, %struct.node** %4, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %448

87:                                               ; preds = %75
  %88 = load %struct.node*, %struct.node** %5, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %448

93:                                               ; preds = %87
  %94 = load %struct.node*, %struct.node** %4, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.node*, %struct.node** %5, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %448

102:                                              ; preds = %93
  %103 = load %struct.node*, %struct.node** %4, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.node*, %struct.node** %5, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %448

111:                                              ; preds = %102
  store i8* null, i8** %7, align 8
  br label %112

112:                                              ; preds = %174, %111
  %113 = load i8*, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  %115 = xor i1 %114, true
  br i1 %115, label %116, label %175

116:                                              ; preds = %112
  %117 = load %struct.node*, %struct.node** %4, align 8
  %118 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 6
  %119 = load %struct.node*, %struct.node** %118, align 8
  %120 = icmp ne %struct.node* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.node*, %struct.node** %4, align 8
  %123 = getelementptr inbounds %struct.node, %struct.node* %122, i32 0, i32 5
  %124 = load %struct.node*, %struct.node** %123, align 8
  %125 = icmp ne %struct.node* %124, null
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i1 [ true, %116 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.node*, %struct.node** %4, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @LEAF, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.node*, %struct.node** %4, align 8
  %137 = getelementptr inbounds %struct.node, %struct.node* %136, i32 0, i32 6
  %138 = load %struct.node*, %struct.node** %137, align 8
  %139 = bitcast %struct.node* %138 to i8*
  store i8* %139, i8** %7, align 8
  br label %174

140:                                              ; preds = %126
  %141 = load %struct.node*, %struct.node** %4, align 8
  %142 = getelementptr inbounds %struct.node, %struct.node* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @LEAF, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.node*, %struct.node** %4, align 8
  %148 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 5
  %149 = load %struct.node*, %struct.node** %148, align 8
  %150 = bitcast %struct.node* %149 to i8*
  store i8* %150, i8** %7, align 8
  br label %173

151:                                              ; preds = %140
  %152 = load %struct.node*, %struct.node** %4, align 8
  %153 = getelementptr inbounds %struct.node, %struct.node* %152, i32 0, i32 6
  %154 = load %struct.node*, %struct.node** %153, align 8
  %155 = icmp ne %struct.node* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.node*, %struct.node** %4, align 8
  %158 = getelementptr inbounds %struct.node, %struct.node* %157, i32 0, i32 6
  %159 = load %struct.node*, %struct.node** %158, align 8
  store %struct.node* %159, %struct.node** %4, align 8
  br label %172

160:                                              ; preds = %151
  %161 = load %struct.node*, %struct.node** %4, align 8
  %162 = getelementptr inbounds %struct.node, %struct.node* %161, i32 0, i32 5
  %163 = load %struct.node*, %struct.node** %162, align 8
  %164 = icmp ne %struct.node* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.node*, %struct.node** %4, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 5
  %168 = load %struct.node*, %struct.node** %167, align 8
  store %struct.node* %168, %struct.node** %4, align 8
  br label %171

169:                                              ; preds = %160
  %170 = call i32 @assert(i32 0)
  br label %171

171:                                              ; preds = %169, %165
  br label %172

172:                                              ; preds = %171, %156
  br label %173

173:                                              ; preds = %172, %146
  br label %174

174:                                              ; preds = %173, %135
  br label %112

175:                                              ; preds = %112
  store i8* null, i8** %8, align 8
  br label %176

176:                                              ; preds = %238, %175
  %177 = load i8*, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  %179 = xor i1 %178, true
  br i1 %179, label %180, label %239

180:                                              ; preds = %176
  %181 = load %struct.node*, %struct.node** %5, align 8
  %182 = getelementptr inbounds %struct.node, %struct.node* %181, i32 0, i32 6
  %183 = load %struct.node*, %struct.node** %182, align 8
  %184 = icmp ne %struct.node* %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load %struct.node*, %struct.node** %5, align 8
  %187 = getelementptr inbounds %struct.node, %struct.node* %186, i32 0, i32 5
  %188 = load %struct.node*, %struct.node** %187, align 8
  %189 = icmp ne %struct.node* %188, null
  br label %190

190:                                              ; preds = %185, %180
  %191 = phi i1 [ true, %180 ], [ %189, %185 ]
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.node*, %struct.node** %5, align 8
  %195 = getelementptr inbounds %struct.node, %struct.node* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @LEAF, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %190
  %200 = load %struct.node*, %struct.node** %5, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 6
  %202 = load %struct.node*, %struct.node** %201, align 8
  %203 = bitcast %struct.node* %202 to i8*
  store i8* %203, i8** %8, align 8
  br label %238

204:                                              ; preds = %190
  %205 = load %struct.node*, %struct.node** %5, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @LEAF, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.node*, %struct.node** %5, align 8
  %212 = getelementptr inbounds %struct.node, %struct.node* %211, i32 0, i32 5
  %213 = load %struct.node*, %struct.node** %212, align 8
  %214 = bitcast %struct.node* %213 to i8*
  store i8* %214, i8** %8, align 8
  br label %237

215:                                              ; preds = %204
  %216 = load %struct.node*, %struct.node** %5, align 8
  %217 = getelementptr inbounds %struct.node, %struct.node* %216, i32 0, i32 6
  %218 = load %struct.node*, %struct.node** %217, align 8
  %219 = icmp ne %struct.node* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.node*, %struct.node** %5, align 8
  %222 = getelementptr inbounds %struct.node, %struct.node* %221, i32 0, i32 6
  %223 = load %struct.node*, %struct.node** %222, align 8
  store %struct.node* %223, %struct.node** %5, align 8
  br label %236

224:                                              ; preds = %215
  %225 = load %struct.node*, %struct.node** %5, align 8
  %226 = getelementptr inbounds %struct.node, %struct.node* %225, i32 0, i32 5
  %227 = load %struct.node*, %struct.node** %226, align 8
  %228 = icmp ne %struct.node* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load %struct.node*, %struct.node** %5, align 8
  %231 = getelementptr inbounds %struct.node, %struct.node* %230, i32 0, i32 5
  %232 = load %struct.node*, %struct.node** %231, align 8
  store %struct.node* %232, %struct.node** %5, align 8
  br label %235

233:                                              ; preds = %224
  %234 = call i32 @assert(i32 0)
  br label %235

235:                                              ; preds = %233, %229
  br label %236

236:                                              ; preds = %235, %220
  br label %237

237:                                              ; preds = %236, %210
  br label %238

238:                                              ; preds = %237, %199
  br label %176

239:                                              ; preds = %176
  %240 = load %struct.tree*, %struct.tree** %2, align 8
  %241 = getelementptr inbounds %struct.tree, %struct.tree* %240, i32 0, i32 3
  %242 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %241, align 8
  %243 = load i8*, i8** %7, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = call i32 %242(i8* %243, i8* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %239
  br label %448

248:                                              ; preds = %239
  %249 = load %struct.node*, %struct.node** %3, align 8
  %250 = getelementptr inbounds %struct.node, %struct.node* %249, i32 0, i32 4
  %251 = load %struct.node*, %struct.node** %250, align 8
  store %struct.node* %251, %struct.node** %6, align 8
  %252 = load %struct.node*, %struct.node** %3, align 8
  %253 = getelementptr inbounds %struct.node, %struct.node* %252, i32 0, i32 6
  %254 = load %struct.node*, %struct.node** %253, align 8
  store %struct.node* %254, %struct.node** %4, align 8
  %255 = load %struct.node*, %struct.node** %3, align 8
  %256 = getelementptr inbounds %struct.node, %struct.node* %255, i32 0, i32 5
  %257 = load %struct.node*, %struct.node** %256, align 8
  store %struct.node* %257, %struct.node** %5, align 8
  %258 = load %struct.node*, %struct.node** %6, align 8
  %259 = getelementptr inbounds %struct.node, %struct.node* %258, i32 0, i32 6
  %260 = load %struct.node*, %struct.node** %259, align 8
  %261 = load %struct.node*, %struct.node** %3, align 8
  %262 = icmp eq %struct.node* %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %248
  %264 = load %struct.node*, %struct.node** %4, align 8
  %265 = load %struct.node*, %struct.node** %6, align 8
  %266 = getelementptr inbounds %struct.node, %struct.node* %265, i32 0, i32 6
  store %struct.node* %264, %struct.node** %266, align 8
  br label %280

267:                                              ; preds = %248
  %268 = load %struct.node*, %struct.node** %6, align 8
  %269 = getelementptr inbounds %struct.node, %struct.node* %268, i32 0, i32 5
  %270 = load %struct.node*, %struct.node** %269, align 8
  %271 = load %struct.node*, %struct.node** %3, align 8
  %272 = icmp eq %struct.node* %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load %struct.node*, %struct.node** %4, align 8
  %275 = load %struct.node*, %struct.node** %6, align 8
  %276 = getelementptr inbounds %struct.node, %struct.node* %275, i32 0, i32 5
  store %struct.node* %274, %struct.node** %276, align 8
  br label %279

277:                                              ; preds = %267
  %278 = call i32 @assert(i32 0)
  br label %279

279:                                              ; preds = %277, %273
  br label %280

280:                                              ; preds = %279, %263
  %281 = load %struct.node*, %struct.node** %6, align 8
  %282 = load %struct.node*, %struct.node** %4, align 8
  %283 = getelementptr inbounds %struct.node, %struct.node* %282, i32 0, i32 4
  store %struct.node* %281, %struct.node** %283, align 8
  %284 = load %struct.node*, %struct.node** %3, align 8
  %285 = getelementptr inbounds %struct.node, %struct.node* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = shl i32 1, %286
  %288 = load %struct.node*, %struct.node** %4, align 8
  %289 = getelementptr inbounds %struct.node, %struct.node* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.node*, %struct.node** %3, align 8
  %293 = getelementptr inbounds %struct.node, %struct.node* %292, i32 0, i32 6
  store %struct.node* null, %struct.node** %293, align 8
  br label %294

294:                                              ; preds = %351, %280
  %295 = load %struct.node*, %struct.node** %3, align 8
  %296 = icmp ne %struct.node* %295, null
  br i1 %296, label %297, label %352

297:                                              ; preds = %294
  %298 = load %struct.node*, %struct.node** %3, align 8
  %299 = getelementptr inbounds %struct.node, %struct.node* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = shl i32 1, %300
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* %11, align 4
  %303 = xor i32 %302, -1
  %304 = load i32, i32* %9, align 4
  %305 = and i32 %304, %303
  store i32 %305, i32* %9, align 4
  %306 = load i32, i32* %11, align 4
  %307 = xor i32 %306, -1
  %308 = load i32, i32* %10, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %10, align 4
  %310 = load %struct.node*, %struct.node** %3, align 8
  %311 = getelementptr inbounds %struct.node, %struct.node* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @NODE, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %329

315:                                              ; preds = %297
  %316 = load %struct.node*, %struct.node** %3, align 8
  %317 = getelementptr inbounds %struct.node, %struct.node* %316, i32 0, i32 6
  %318 = load %struct.node*, %struct.node** %317, align 8
  %319 = icmp ne %struct.node* %318, null
  br i1 %319, label %320, label %329

320:                                              ; preds = %315
  %321 = load %struct.node*, %struct.node** %3, align 8
  %322 = getelementptr inbounds %struct.node, %struct.node* %321, i32 0, i32 6
  %323 = load %struct.node*, %struct.node** %322, align 8
  store %struct.node* %323, %struct.node** %4, align 8
  %324 = load %struct.node*, %struct.node** %3, align 8
  %325 = call i32 @free(%struct.node* %324)
  %326 = load i32, i32* %12, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %12, align 4
  %328 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %328, %struct.node** %3, align 8
  br label %351

329:                                              ; preds = %315, %297
  %330 = load %struct.node*, %struct.node** %3, align 8
  %331 = getelementptr inbounds %struct.node, %struct.node* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @NODE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %329
  %336 = load %struct.node*, %struct.node** %3, align 8
  %337 = getelementptr inbounds %struct.node, %struct.node* %336, i32 0, i32 5
  %338 = load %struct.node*, %struct.node** %337, align 8
  %339 = icmp ne %struct.node* %338, null
  br i1 %339, label %340, label %349

340:                                              ; preds = %335
  %341 = load %struct.node*, %struct.node** %3, align 8
  %342 = getelementptr inbounds %struct.node, %struct.node* %341, i32 0, i32 5
  %343 = load %struct.node*, %struct.node** %342, align 8
  store %struct.node* %343, %struct.node** %5, align 8
  %344 = load %struct.node*, %struct.node** %3, align 8
  %345 = call i32 @free(%struct.node* %344)
  %346 = load i32, i32* %12, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %12, align 4
  %348 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %348, %struct.node** %3, align 8
  br label %350

349:                                              ; preds = %335, %329
  store %struct.node* null, %struct.node** %3, align 8
  br label %350

350:                                              ; preds = %349, %340
  br label %351

351:                                              ; preds = %350, %320
  br label %294

352:                                              ; preds = %294
  %353 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %353, %struct.node** %3, align 8
  %354 = load %struct.node*, %struct.node** %3, align 8
  %355 = getelementptr inbounds %struct.node, %struct.node* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = shl i32 1, %356
  store i32 %357, i32* %11, align 4
  %358 = load i32, i32* %11, align 4
  %359 = xor i32 %358, -1
  %360 = load i32, i32* %9, align 4
  %361 = and i32 %360, %359
  store i32 %361, i32* %9, align 4
  %362 = load i32, i32* %11, align 4
  %363 = xor i32 %362, -1
  %364 = load i32, i32* %10, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* %10, align 4
  br label %366

366:                                              ; preds = %423, %352
  %367 = load %struct.node*, %struct.node** %3, align 8
  %368 = getelementptr inbounds %struct.node, %struct.node* %367, i32 0, i32 6
  %369 = load %struct.node*, %struct.node** %368, align 8
  %370 = icmp ne %struct.node* %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %struct.node*, %struct.node** %3, align 8
  %373 = getelementptr inbounds %struct.node, %struct.node* %372, i32 0, i32 5
  %374 = load %struct.node*, %struct.node** %373, align 8
  %375 = icmp ne %struct.node* %374, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %371
  br label %447

377:                                              ; preds = %371, %366
  %378 = load %struct.node*, %struct.node** %3, align 8
  %379 = getelementptr inbounds %struct.node, %struct.node* %378, i32 0, i32 6
  %380 = load %struct.node*, %struct.node** %379, align 8
  %381 = icmp ne %struct.node* %380, null
  br i1 %381, label %382, label %400

382:                                              ; preds = %377
  %383 = load %struct.node*, %struct.node** %3, align 8
  %384 = getelementptr inbounds %struct.node, %struct.node* %383, i32 0, i32 6
  %385 = load %struct.node*, %struct.node** %384, align 8
  store %struct.node* %385, %struct.node** %4, align 8
  %386 = load %struct.node*, %struct.node** %4, align 8
  %387 = getelementptr inbounds %struct.node, %struct.node* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.node*, %struct.node** %3, align 8
  %390 = getelementptr inbounds %struct.node, %struct.node* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = or i32 %391, %388
  store i32 %392, i32* %390, align 8
  %393 = load %struct.node*, %struct.node** %4, align 8
  %394 = getelementptr inbounds %struct.node, %struct.node* %393, i32 0, i32 7
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.node*, %struct.node** %3, align 8
  %397 = getelementptr inbounds %struct.node, %struct.node* %396, i32 0, i32 7
  %398 = load i32, i32* %397, align 8
  %399 = or i32 %398, %395
  store i32 %399, i32* %397, align 8
  br label %400

400:                                              ; preds = %382, %377
  %401 = load %struct.node*, %struct.node** %3, align 8
  %402 = getelementptr inbounds %struct.node, %struct.node* %401, i32 0, i32 5
  %403 = load %struct.node*, %struct.node** %402, align 8
  %404 = icmp ne %struct.node* %403, null
  br i1 %404, label %405, label %423

405:                                              ; preds = %400
  %406 = load %struct.node*, %struct.node** %3, align 8
  %407 = getelementptr inbounds %struct.node, %struct.node* %406, i32 0, i32 5
  %408 = load %struct.node*, %struct.node** %407, align 8
  store %struct.node* %408, %struct.node** %5, align 8
  %409 = load %struct.node*, %struct.node** %5, align 8
  %410 = getelementptr inbounds %struct.node, %struct.node* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.node*, %struct.node** %3, align 8
  %413 = getelementptr inbounds %struct.node, %struct.node* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  %416 = load %struct.node*, %struct.node** %5, align 8
  %417 = getelementptr inbounds %struct.node, %struct.node* %416, i32 0, i32 7
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.node*, %struct.node** %3, align 8
  %420 = getelementptr inbounds %struct.node, %struct.node* %419, i32 0, i32 7
  %421 = load i32, i32* %420, align 8
  %422 = or i32 %421, %418
  store i32 %422, i32* %420, align 8
  br label %423

423:                                              ; preds = %405, %400
  %424 = load %struct.node*, %struct.node** %3, align 8
  %425 = getelementptr inbounds %struct.node, %struct.node* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 1, %426
  %428 = load %struct.node*, %struct.node** %3, align 8
  %429 = getelementptr inbounds %struct.node, %struct.node* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 8
  %432 = load %struct.node*, %struct.node** %3, align 8
  %433 = getelementptr inbounds %struct.node, %struct.node* %432, i32 0, i32 4
  %434 = load %struct.node*, %struct.node** %433, align 8
  store %struct.node* %434, %struct.node** %3, align 8
  %435 = load %struct.node*, %struct.node** %3, align 8
  %436 = getelementptr inbounds %struct.node, %struct.node* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = shl i32 1, %437
  store i32 %438, i32* %11, align 4
  %439 = load i32, i32* %11, align 4
  %440 = xor i32 %439, -1
  %441 = load i32, i32* %9, align 4
  %442 = and i32 %441, %440
  store i32 %442, i32* %9, align 4
  %443 = load i32, i32* %11, align 4
  %444 = xor i32 %443, -1
  %445 = load i32, i32* %10, align 4
  %446 = and i32 %445, %444
  store i32 %446, i32* %10, align 4
  br label %366

447:                                              ; preds = %376
  br label %448

448:                                              ; preds = %447, %247, %110, %101, %92, %86, %74, %68, %62, %55, %48
  %449 = load %struct.node*, %struct.node** %3, align 8
  %450 = getelementptr inbounds %struct.node, %struct.node* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = shl i32 1, %451
  store i32 %452, i32* %11, align 4
  %453 = load i32, i32* %9, align 4
  %454 = load i32, i32* %11, align 4
  %455 = and i32 %453, %454
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %475

457:                                              ; preds = %448
  %458 = load %struct.node*, %struct.node** %3, align 8
  %459 = getelementptr inbounds %struct.node, %struct.node* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @NODE, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %475

463:                                              ; preds = %457
  %464 = load %struct.node*, %struct.node** %3, align 8
  %465 = getelementptr inbounds %struct.node, %struct.node* %464, i32 0, i32 6
  %466 = load %struct.node*, %struct.node** %465, align 8
  %467 = icmp ne %struct.node* %466, null
  br i1 %467, label %468, label %475

468:                                              ; preds = %463
  %469 = load i32, i32* %11, align 4
  %470 = load i32, i32* %9, align 4
  %471 = or i32 %470, %469
  store i32 %471, i32* %9, align 4
  %472 = load %struct.node*, %struct.node** %3, align 8
  %473 = getelementptr inbounds %struct.node, %struct.node* %472, i32 0, i32 6
  %474 = load %struct.node*, %struct.node** %473, align 8
  store %struct.node* %474, %struct.node** %3, align 8
  br label %511

475:                                              ; preds = %463, %457, %448
  %476 = load i32, i32* %10, align 4
  %477 = load i32, i32* %11, align 4
  %478 = and i32 %476, %477
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %498

480:                                              ; preds = %475
  %481 = load %struct.node*, %struct.node** %3, align 8
  %482 = getelementptr inbounds %struct.node, %struct.node* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @NODE, align 8
  %485 = icmp eq i64 %483, %484
  br i1 %485, label %486, label %498

486:                                              ; preds = %480
  %487 = load %struct.node*, %struct.node** %3, align 8
  %488 = getelementptr inbounds %struct.node, %struct.node* %487, i32 0, i32 5
  %489 = load %struct.node*, %struct.node** %488, align 8
  %490 = icmp ne %struct.node* %489, null
  br i1 %490, label %491, label %498

491:                                              ; preds = %486
  %492 = load i32, i32* %11, align 4
  %493 = load i32, i32* %10, align 4
  %494 = or i32 %493, %492
  store i32 %494, i32* %10, align 4
  %495 = load %struct.node*, %struct.node** %3, align 8
  %496 = getelementptr inbounds %struct.node, %struct.node* %495, i32 0, i32 5
  %497 = load %struct.node*, %struct.node** %496, align 8
  store %struct.node* %497, %struct.node** %3, align 8
  br label %510

498:                                              ; preds = %486, %480, %475
  %499 = load i32, i32* %11, align 4
  %500 = xor i32 %499, -1
  %501 = load i32, i32* %9, align 4
  %502 = and i32 %501, %500
  store i32 %502, i32* %9, align 4
  %503 = load i32, i32* %11, align 4
  %504 = xor i32 %503, -1
  %505 = load i32, i32* %10, align 4
  %506 = and i32 %505, %504
  store i32 %506, i32* %10, align 4
  %507 = load %struct.node*, %struct.node** %3, align 8
  %508 = getelementptr inbounds %struct.node, %struct.node* %507, i32 0, i32 4
  %509 = load %struct.node*, %struct.node** %508, align 8
  store %struct.node* %509, %struct.node** %3, align 8
  br label %510

510:                                              ; preds = %498, %491
  br label %511

511:                                              ; preds = %510, %468
  br label %40

512:                                              ; preds = %40
  %513 = load i64, i64* @verbose, align 8
  %514 = icmp sgt i64 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %512
  %516 = load i32, i32* %12, align 4
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %516)
  br label %518

518:                                              ; preds = %29, %35, %515, %512
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpi-pow.c_mpi_powm.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpi-pow.c_mpi_powm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.karatsuba_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_MPI_LIMB = common dso_local global i32 0, align 4
@KARATSUBA_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_powm(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.karatsuba_ctx, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %41 = bitcast %struct.karatsuba_ctx* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 4, i1 false)
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %32, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %20, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = mul nsw i32 2, %50
  store i32 %51, i32* %27, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %24, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %16, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %17, align 8
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %593

66:                                               ; preds = %4
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %21, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br label %79

79:                                               ; preds = %72, %69
  %80 = phi i1 [ false, %69 ], [ %78, %72 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = call i64 @mpi_resize(%struct.TYPE_8__* %90, i32 1)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %552

94:                                               ; preds = %89
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %16, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %79
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %551

103:                                              ; preds = %66
  %104 = load i32, i32* %21, align 4
  %105 = call i32* @mpi_alloc_limb_space(i32 %104)
  store i32* %105, i32** %10, align 8
  store i32* %105, i32** %18, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %552

109:                                              ; preds = %103
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @count_leading_zeros(i32 %117)
  store i32 %118, i32* %28, align 4
  %119 = load i32, i32* %28, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %109
  %122 = load i32*, i32** %18, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %28, align 4
  %128 = call i32 @mpihelp_lshift(i32* %122, i32* %125, i32 %126, i32 %127)
  br label %136

129:                                              ; preds = %109
  %130 = load i32*, i32** %18, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @MPN_COPY(i32* %130, i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %121
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %22, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %21, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %173

146:                                              ; preds = %136
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %147, 1
  %149 = call i32* @mpi_alloc_limb_space(i32 %148)
  store i32* %149, i32** %11, align 8
  store i32* %149, i32** %19, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  br label %552

153:                                              ; preds = %146
  %154 = load i32*, i32** %19, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @MPN_COPY(i32* %154, i32* %157, i32 %158)
  %160 = load i32*, i32** %19, align 8
  %161 = load i32, i32* %21, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %22, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* %21, align 4
  %168 = call i32 @mpihelp_divrem(i32* %163, i32 0, i32* %164, i32 %165, i32* %166, i32 %167)
  %169 = load i32, i32* %21, align 4
  store i32 %169, i32* %22, align 4
  %170 = load i32*, i32** %19, align 8
  %171 = load i32, i32* %22, align 4
  %172 = call i32 @MPN_NORMALIZE(i32* %170, i32 %171)
  br label %177

173:                                              ; preds = %136
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %19, align 8
  br label %177

177:                                              ; preds = %173, %153
  %178 = load i32, i32* %22, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  br label %551

185:                                              ; preds = %177
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %27, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %185
  %192 = load i32*, i32** %16, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = icmp eq i32* %192, %193
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i32*, i32** %16, align 8
  %197 = load i32*, i32** %18, align 8
  %198 = icmp eq i32* %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32*, i32** %16, align 8
  %201 = load i32*, i32** %19, align 8
  %202 = icmp eq i32* %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199, %195, %191
  %204 = load i32, i32* %27, align 4
  %205 = call i32* @mpi_alloc_limb_space(i32 %204)
  store i32* %205, i32** %16, align 8
  %206 = load i32*, i32** %16, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  br label %552

209:                                              ; preds = %203
  store i32 1, i32* %30, align 4
  br label %220

210:                                              ; preds = %199
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %212 = load i32, i32* %27, align 4
  %213 = call i64 @mpi_resize(%struct.TYPE_8__* %211, i32 %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %552

216:                                              ; preds = %210
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  store i32* %219, i32** %16, align 8
  br label %220

220:                                              ; preds = %216, %209
  br label %271

221:                                              ; preds = %185
  %222 = load i32*, i32** %16, align 8
  %223 = load i32*, i32** %19, align 8
  %224 = icmp eq i32* %222, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %221
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @BUG_ON(i32* %226)
  %228 = load i32, i32* %22, align 4
  %229 = call i32* @mpi_alloc_limb_space(i32 %228)
  store i32* %229, i32** %11, align 8
  store i32* %229, i32** %19, align 8
  %230 = load i32*, i32** %19, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %225
  br label %552

233:                                              ; preds = %225
  %234 = load i32*, i32** %19, align 8
  %235 = load i32*, i32** %16, align 8
  %236 = load i32, i32* %22, align 4
  %237 = call i32 @MPN_COPY(i32* %234, i32* %235, i32 %236)
  br label %238

238:                                              ; preds = %233, %221
  %239 = load i32*, i32** %16, align 8
  %240 = load i32*, i32** %17, align 8
  %241 = icmp eq i32* %239, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %238
  %243 = load i32, i32* %20, align 4
  %244 = call i32* @mpi_alloc_limb_space(i32 %243)
  store i32* %244, i32** %12, align 8
  store i32* %244, i32** %17, align 8
  %245 = load i32*, i32** %17, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %242
  br label %552

248:                                              ; preds = %242
  %249 = load i32*, i32** %17, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load i32, i32* %20, align 4
  %252 = call i32 @MPN_COPY(i32* %249, i32* %250, i32 %251)
  br label %253

253:                                              ; preds = %248, %238
  %254 = load i32*, i32** %16, align 8
  %255 = load i32*, i32** %18, align 8
  %256 = icmp eq i32* %254, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %253
  %258 = load i32*, i32** %10, align 8
  %259 = call i32 @BUG_ON(i32* %258)
  %260 = load i32, i32* %21, align 4
  %261 = call i32* @mpi_alloc_limb_space(i32 %260)
  store i32* %261, i32** %10, align 8
  store i32* %261, i32** %18, align 8
  %262 = load i32*, i32** %18, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %552

265:                                              ; preds = %257
  %266 = load i32*, i32** %18, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = load i32, i32* %21, align 4
  %269 = call i32 @MPN_COPY(i32* %266, i32* %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %253
  br label %271

271:                                              ; preds = %270, %220
  %272 = load i32*, i32** %16, align 8
  %273 = load i32*, i32** %19, align 8
  %274 = load i32, i32* %22, align 4
  %275 = call i32 @MPN_COPY(i32* %272, i32* %273, i32 %274)
  %276 = load i32, i32* %22, align 4
  store i32 %276, i32* %23, align 4
  %277 = load i32, i32* %25, align 4
  store i32 %277, i32* %26, align 4
  %278 = load i32, i32* %21, align 4
  %279 = add nsw i32 %278, 1
  %280 = mul nsw i32 2, %279
  %281 = call i32* @mpi_alloc_limb_space(i32 %280)
  store i32* %281, i32** %14, align 8
  store i32* %281, i32** %34, align 8
  %282 = load i32*, i32** %34, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %271
  br label %552

285:                                              ; preds = %271
  %286 = load i32*, i32** %17, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 1
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %285
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br label %296

296:                                              ; preds = %291, %285
  %297 = phi i1 [ false, %285 ], [ %295, %291 ]
  %298 = zext i1 %297 to i32
  store i32 %298, i32* %29, align 4
  %299 = load i32, i32* %20, align 4
  %300 = sub nsw i32 %299, 1
  store i32 %300, i32* %33, align 4
  %301 = load i32*, i32** %17, align 8
  %302 = load i32, i32* %33, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %36, align 4
  %306 = load i32, i32* %36, align 4
  %307 = call i32 @count_leading_zeros(i32 %306)
  store i32 %307, i32* %35, align 4
  %308 = load i32, i32* %36, align 4
  %309 = load i32, i32* %35, align 4
  %310 = shl i32 %308, %309
  %311 = shl i32 %310, 1
  store i32 %311, i32* %36, align 4
  %312 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %313 = sub nsw i32 %312, 1
  %314 = load i32, i32* %35, align 4
  %315 = sub nsw i32 %313, %314
  store i32 %315, i32* %35, align 4
  br label %316

316:                                              ; preds = %448, %296
  br label %317

317:                                              ; preds = %436, %316
  %318 = load i32, i32* %35, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %442

320:                                              ; preds = %317
  %321 = load i32, i32* %23, align 4
  %322 = load i32, i32* @KARATSUBA_THRESHOLD, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = load i32*, i32** %34, align 8
  %326 = load i32*, i32** %16, align 8
  %327 = load i32, i32* %23, align 4
  %328 = call i32 @mpih_sqr_n_basecase(i32* %325, i32* %326, i32 %327)
  br label %364

329:                                              ; preds = %320
  %330 = load i32*, i32** %15, align 8
  %331 = icmp ne i32* %330, null
  br i1 %331, label %341, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %23, align 4
  %334 = mul nsw i32 2, %333
  store i32 %334, i32* %31, align 4
  %335 = load i32, i32* %31, align 4
  %336 = call i32* @mpi_alloc_limb_space(i32 %335)
  store i32* %336, i32** %15, align 8
  %337 = load i32*, i32** %15, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %332
  br label %552

340:                                              ; preds = %332
  br label %358

341:                                              ; preds = %329
  %342 = load i32, i32* %31, align 4
  %343 = load i32, i32* %23, align 4
  %344 = mul nsw i32 2, %343
  %345 = icmp slt i32 %342, %344
  br i1 %345, label %346, label %357

346:                                              ; preds = %341
  %347 = load i32*, i32** %15, align 8
  %348 = call i32 @mpi_free_limb_space(i32* %347)
  %349 = load i32, i32* %23, align 4
  %350 = mul nsw i32 2, %349
  store i32 %350, i32* %31, align 4
  %351 = load i32, i32* %31, align 4
  %352 = call i32* @mpi_alloc_limb_space(i32 %351)
  store i32* %352, i32** %15, align 8
  %353 = load i32*, i32** %15, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %356, label %355

355:                                              ; preds = %346
  br label %552

356:                                              ; preds = %346
  br label %357

357:                                              ; preds = %356, %341
  br label %358

358:                                              ; preds = %357, %340
  %359 = load i32*, i32** %34, align 8
  %360 = load i32*, i32** %16, align 8
  %361 = load i32, i32* %23, align 4
  %362 = load i32*, i32** %15, align 8
  %363 = call i32 @mpih_sqr_n(i32* %359, i32* %360, i32 %361, i32* %362)
  br label %364

364:                                              ; preds = %358, %324
  %365 = load i32, i32* %23, align 4
  %366 = mul nsw i32 2, %365
  store i32 %366, i32* %39, align 4
  %367 = load i32, i32* %39, align 4
  %368 = load i32, i32* %21, align 4
  %369 = icmp sgt i32 %367, %368
  br i1 %369, label %370, label %381

370:                                              ; preds = %364
  %371 = load i32*, i32** %34, align 8
  %372 = load i32, i32* %21, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32*, i32** %34, align 8
  %376 = load i32, i32* %39, align 4
  %377 = load i32*, i32** %18, align 8
  %378 = load i32, i32* %21, align 4
  %379 = call i32 @mpihelp_divrem(i32* %374, i32 0, i32* %375, i32 %376, i32* %377, i32 %378)
  %380 = load i32, i32* %21, align 4
  store i32 %380, i32* %39, align 4
  br label %381

381:                                              ; preds = %370, %364
  %382 = load i32*, i32** %16, align 8
  store i32* %382, i32** %38, align 8
  %383 = load i32*, i32** %34, align 8
  store i32* %383, i32** %16, align 8
  %384 = load i32*, i32** %38, align 8
  store i32* %384, i32** %34, align 8
  %385 = load i32, i32* %39, align 4
  store i32 %385, i32* %23, align 4
  %386 = load i32, i32* %36, align 4
  %387 = sext i32 %386 to i64
  %388 = icmp slt i64 %387, 0
  br i1 %388, label %389, label %436

389:                                              ; preds = %381
  %390 = load i32, i32* %22, align 4
  %391 = load i32, i32* @KARATSUBA_THRESHOLD, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %403

393:                                              ; preds = %389
  %394 = load i32*, i32** %34, align 8
  %395 = load i32*, i32** %16, align 8
  %396 = load i32, i32* %23, align 4
  %397 = load i32*, i32** %19, align 8
  %398 = load i32, i32* %22, align 4
  %399 = call i64 @mpihelp_mul(i32* %394, i32* %395, i32 %396, i32* %397, i32 %398, i32* %40)
  %400 = icmp slt i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  br label %552

402:                                              ; preds = %393
  br label %413

403:                                              ; preds = %389
  %404 = load i32*, i32** %34, align 8
  %405 = load i32*, i32** %16, align 8
  %406 = load i32, i32* %23, align 4
  %407 = load i32*, i32** %19, align 8
  %408 = load i32, i32* %22, align 4
  %409 = call i64 @mpihelp_mul_karatsuba_case(i32* %404, i32* %405, i32 %406, i32* %407, i32 %408, %struct.karatsuba_ctx* %13)
  %410 = icmp slt i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %403
  br label %552

412:                                              ; preds = %403
  br label %413

413:                                              ; preds = %412, %402
  %414 = load i32, i32* %23, align 4
  %415 = load i32, i32* %22, align 4
  %416 = add nsw i32 %414, %415
  store i32 %416, i32* %39, align 4
  %417 = load i32, i32* %39, align 4
  %418 = load i32, i32* %21, align 4
  %419 = icmp sgt i32 %417, %418
  br i1 %419, label %420, label %431

420:                                              ; preds = %413
  %421 = load i32*, i32** %34, align 8
  %422 = load i32, i32* %21, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32*, i32** %34, align 8
  %426 = load i32, i32* %39, align 4
  %427 = load i32*, i32** %18, align 8
  %428 = load i32, i32* %21, align 4
  %429 = call i32 @mpihelp_divrem(i32* %424, i32 0, i32* %425, i32 %426, i32* %427, i32 %428)
  %430 = load i32, i32* %21, align 4
  store i32 %430, i32* %39, align 4
  br label %431

431:                                              ; preds = %420, %413
  %432 = load i32*, i32** %16, align 8
  store i32* %432, i32** %38, align 8
  %433 = load i32*, i32** %34, align 8
  store i32* %433, i32** %16, align 8
  %434 = load i32*, i32** %38, align 8
  store i32* %434, i32** %34, align 8
  %435 = load i32, i32* %39, align 4
  store i32 %435, i32* %23, align 4
  br label %436

436:                                              ; preds = %431, %381
  %437 = load i32, i32* %36, align 4
  %438 = shl i32 %437, 1
  store i32 %438, i32* %36, align 4
  %439 = load i32, i32* %35, align 4
  %440 = add nsw i32 %439, -1
  store i32 %440, i32* %35, align 4
  %441 = call i32 (...) @cond_resched()
  br label %317

442:                                              ; preds = %317
  %443 = load i32, i32* %33, align 4
  %444 = add nsw i32 %443, -1
  store i32 %444, i32* %33, align 4
  %445 = load i32, i32* %33, align 4
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %442
  br label %455

448:                                              ; preds = %442
  %449 = load i32*, i32** %17, align 8
  %450 = load i32, i32* %33, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  %453 = load i32, i32* %452, align 4
  store i32 %453, i32* %36, align 4
  %454 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  store i32 %454, i32* %35, align 4
  br label %316

455:                                              ; preds = %447
  %456 = load i32, i32* %28, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %480

458:                                              ; preds = %455
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 2
  %461 = load i32*, i32** %460, align 8
  %462 = load i32*, i32** %16, align 8
  %463 = load i32, i32* %23, align 4
  %464 = load i32, i32* %28, align 4
  %465 = call i32 @mpihelp_lshift(i32* %461, i32* %462, i32 %463, i32 %464)
  store i32 %465, i32* %37, align 4
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 2
  %468 = load i32*, i32** %467, align 8
  store i32* %468, i32** %16, align 8
  %469 = load i32, i32* %37, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %458
  %472 = load i32, i32* %37, align 4
  %473 = load i32*, i32** %16, align 8
  %474 = load i32, i32* %23, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  store i32 %472, i32* %476, align 4
  %477 = load i32, i32* %23, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %23, align 4
  br label %479

479:                                              ; preds = %471, %458
  br label %490

480:                                              ; preds = %455
  %481 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = load i32*, i32** %16, align 8
  %485 = load i32, i32* %23, align 4
  %486 = call i32 @MPN_COPY(i32* %483, i32* %484, i32 %485)
  %487 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %487, i32 0, i32 2
  %489 = load i32*, i32** %488, align 8
  store i32* %489, i32** %16, align 8
  br label %490

490:                                              ; preds = %480, %479
  %491 = load i32, i32* %23, align 4
  %492 = load i32, i32* %21, align 4
  %493 = icmp sge i32 %491, %492
  br i1 %493, label %494, label %505

494:                                              ; preds = %490
  %495 = load i32*, i32** %16, align 8
  %496 = load i32, i32* %21, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32*, i32** %16, align 8
  %500 = load i32, i32* %23, align 4
  %501 = load i32*, i32** %18, align 8
  %502 = load i32, i32* %21, align 4
  %503 = call i32 @mpihelp_divrem(i32* %498, i32 0, i32* %499, i32 %500, i32* %501, i32 %502)
  %504 = load i32, i32* %21, align 4
  store i32 %504, i32* %23, align 4
  br label %505

505:                                              ; preds = %494, %490
  %506 = load i32, i32* %28, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %514

508:                                              ; preds = %505
  %509 = load i32*, i32** %16, align 8
  %510 = load i32*, i32** %16, align 8
  %511 = load i32, i32* %23, align 4
  %512 = load i32, i32* %28, align 4
  %513 = call i32 @mpihelp_rshift(i32* %509, i32* %510, i32 %511, i32 %512)
  br label %514

514:                                              ; preds = %508, %505
  %515 = load i32*, i32** %16, align 8
  %516 = load i32, i32* %23, align 4
  %517 = call i32 @MPN_NORMALIZE(i32* %515, i32 %516)
  %518 = load i32, i32* %29, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %544

520:                                              ; preds = %514
  %521 = load i32, i32* %23, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %544

523:                                              ; preds = %520
  %524 = load i32, i32* %28, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %532

526:                                              ; preds = %523
  %527 = load i32*, i32** %18, align 8
  %528 = load i32*, i32** %18, align 8
  %529 = load i32, i32* %21, align 4
  %530 = load i32, i32* %28, align 4
  %531 = call i32 @mpihelp_rshift(i32* %527, i32* %528, i32 %529, i32 %530)
  br label %532

532:                                              ; preds = %526, %523
  %533 = load i32*, i32** %16, align 8
  %534 = load i32*, i32** %18, align 8
  %535 = load i32, i32* %21, align 4
  %536 = load i32*, i32** %16, align 8
  %537 = load i32, i32* %23, align 4
  %538 = call i32 @mpihelp_sub(i32* %533, i32* %534, i32 %535, i32* %536, i32 %537)
  %539 = load i32, i32* %21, align 4
  store i32 %539, i32* %23, align 4
  %540 = load i32, i32* %24, align 4
  store i32 %540, i32* %26, align 4
  %541 = load i32*, i32** %16, align 8
  %542 = load i32, i32* %23, align 4
  %543 = call i32 @MPN_NORMALIZE(i32* %541, i32 %542)
  br label %544

544:                                              ; preds = %532, %520, %514
  %545 = load i32, i32* %23, align 4
  %546 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 0
  store i32 %545, i32* %547, align 8
  %548 = load i32, i32* %26, align 4
  %549 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 1
  store i32 %548, i32* %550, align 4
  br label %551

551:                                              ; preds = %544, %180, %100
  store i32 0, i32* %32, align 4
  br label %552

552:                                              ; preds = %551, %411, %401, %355, %339, %284, %264, %247, %232, %215, %208, %152, %108, %93
  %553 = call i32 @mpihelp_release_karatsuba_ctx(%struct.karatsuba_ctx* %13)
  %554 = load i32, i32* %30, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %552
  %557 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %558 = load i32*, i32** %16, align 8
  %559 = load i32, i32* %27, align 4
  %560 = call i32 @mpi_assign_limb_space(%struct.TYPE_8__* %557, i32* %558, i32 %559)
  br label %561

561:                                              ; preds = %556, %552
  %562 = load i32*, i32** %10, align 8
  %563 = icmp ne i32* %562, null
  br i1 %563, label %564, label %567

564:                                              ; preds = %561
  %565 = load i32*, i32** %10, align 8
  %566 = call i32 @mpi_free_limb_space(i32* %565)
  br label %567

567:                                              ; preds = %564, %561
  %568 = load i32*, i32** %11, align 8
  %569 = icmp ne i32* %568, null
  br i1 %569, label %570, label %573

570:                                              ; preds = %567
  %571 = load i32*, i32** %11, align 8
  %572 = call i32 @mpi_free_limb_space(i32* %571)
  br label %573

573:                                              ; preds = %570, %567
  %574 = load i32*, i32** %12, align 8
  %575 = icmp ne i32* %574, null
  br i1 %575, label %576, label %579

576:                                              ; preds = %573
  %577 = load i32*, i32** %12, align 8
  %578 = call i32 @mpi_free_limb_space(i32* %577)
  br label %579

579:                                              ; preds = %576, %573
  %580 = load i32*, i32** %14, align 8
  %581 = icmp ne i32* %580, null
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = load i32*, i32** %14, align 8
  %584 = call i32 @mpi_free_limb_space(i32* %583)
  br label %585

585:                                              ; preds = %582, %579
  %586 = load i32*, i32** %15, align 8
  %587 = icmp ne i32* %586, null
  br i1 %587, label %588, label %591

588:                                              ; preds = %585
  %589 = load i32*, i32** %15, align 8
  %590 = call i32 @mpi_free_limb_space(i32* %589)
  br label %591

591:                                              ; preds = %588, %585
  %592 = load i32, i32* %32, align 4
  store i32 %592, i32* %5, align 4
  br label %593

593:                                              ; preds = %591, %63
  %594 = load i32, i32* %5, align 4
  ret i32 %594
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mpi_resize(%struct.TYPE_8__*, i32) #2

declare dso_local i32* @mpi_alloc_limb_space(i32) #2

declare dso_local i32 @count_leading_zeros(i32) #2

declare dso_local i32 @mpihelp_lshift(i32*, i32*, i32, i32) #2

declare dso_local i32 @MPN_COPY(i32*, i32*, i32) #2

declare dso_local i32 @mpihelp_divrem(i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @MPN_NORMALIZE(i32*, i32) #2

declare dso_local i32 @BUG_ON(i32*) #2

declare dso_local i32 @mpih_sqr_n_basecase(i32*, i32*, i32) #2

declare dso_local i32 @mpi_free_limb_space(i32*) #2

declare dso_local i32 @mpih_sqr_n(i32*, i32*, i32, i32*) #2

declare dso_local i64 @mpihelp_mul(i32*, i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @mpihelp_mul_karatsuba_case(i32*, i32*, i32, i32*, i32, %struct.karatsuba_ctx*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @mpihelp_rshift(i32*, i32*, i32, i32) #2

declare dso_local i32 @mpihelp_sub(i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @mpihelp_release_karatsuba_ctx(%struct.karatsuba_ctx*) #2

declare dso_local i32 @mpi_assign_limb_space(%struct.TYPE_8__*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

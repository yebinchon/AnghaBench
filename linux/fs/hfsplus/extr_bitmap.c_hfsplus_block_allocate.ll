; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bitmap.c_hfsplus_block_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bitmap.c_hfsplus_block_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_sb_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"block_allocate: %u,%u,%u\0A\00", align 1
@PAGE_CACHE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"bitmap full\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-> %u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_block_allocate(%struct.super_block* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hfsplus_sb_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %22)
  store %struct.hfsplus_sb_info* %23, %struct.hfsplus_sb_info** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %5, align 4
  br label %383

30:                                               ; preds = %4
  %31 = load i32, i32* @BITMAP, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %18, align 4
  %35 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %10, align 8
  %37 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %10, align 8
  %40 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.address_space*, %struct.address_space** %42, align 8
  store %struct.address_space* %43, %struct.address_space** %12, align 8
  %44 = load %struct.address_space*, %struct.address_space** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %47 = sdiv i32 %45, %46
  %48 = call %struct.page* @read_mapping_page(%struct.address_space* %44, i32 %47, i32* null)
  store %struct.page* %48, %struct.page** %11, align 8
  %49 = load %struct.page*, %struct.page** %11, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %17, align 4
  br label %378

54:                                               ; preds = %30
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = call i32* @kmap(%struct.page* %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  %62 = sdiv i32 %61, 32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  store i32* %64, i32** %14, align 8
  %65 = load i32, i32* %8, align 4
  %66 = srem i32 %65, 32
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %68 = sub nsw i32 %67, 1
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = xor i32 %72, %73
  %75 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %76 = sdiv i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %54
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %81 = sdiv i32 %80, 32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32* %83, i32** %15, align 8
  br label %94

84:                                               ; preds = %54
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 31
  %88 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  %91 = sdiv i32 %90, 32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  store i32* %93, i32** %15, align 8
  br label %94

94:                                               ; preds = %84, %78
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = xor i32 %97, -1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %21, align 4
  %104 = lshr i32 -2147483648, %103
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %115, %100
  %106 = load i32, i32* %21, align 4
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %16, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %208

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %16, align 4
  %117 = ashr i32 %116, 1
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %21, align 4
  br label %105

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %94
  %122 = load i32*, i32** %14, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %14, align 8
  br label %124

124:                                              ; preds = %121, %203
  br label %125

125:                                              ; preds = %154, %124
  %126 = load i32*, i32** %14, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = icmp ult i32* %126, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %125
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = xor i32 %132, -1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %129
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @be32_to_cpu(i32 %136)
  store i32 %137, i32* %19, align 4
  store i32 -2147483648, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %138

138:                                              ; preds = %148, %135
  %139 = load i32, i32* %21, align 4
  %140 = icmp slt i32 %139, 32
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %16, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  br label %208

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %16, align 4
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %21, align 4
  br label %138

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %129
  %155 = load i32*, i32** %14, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %14, align 8
  br label %125

157:                                              ; preds = %125
  %158 = load %struct.page*, %struct.page** %11, align 8
  %159 = call i32 @kunmap(%struct.page* %158)
  %160 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %204

167:                                              ; preds = %157
  %168 = load %struct.address_space*, %struct.address_space** %12, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %171 = sdiv i32 %169, %170
  %172 = call %struct.page* @read_mapping_page(%struct.address_space* %168, i32 %171, i32* null)
  store %struct.page* %172, %struct.page** %11, align 8
  %173 = load %struct.page*, %struct.page** %11, align 8
  %174 = call i64 @IS_ERR(%struct.page* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %17, align 4
  br label %378

178:                                              ; preds = %167
  %179 = load %struct.page*, %struct.page** %11, align 8
  %180 = call i32* @kmap(%struct.page* %179)
  store i32* %180, i32** %13, align 8
  store i32* %180, i32** %14, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = xor i32 %181, %182
  %184 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %185 = sdiv i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %178
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %190 = sdiv i32 %189, 32
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32* %192, i32** %15, align 8
  br label %203

193:                                              ; preds = %178
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 31
  %197 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %198 = sub nsw i32 %197, 1
  %199 = and i32 %196, %198
  %200 = sdiv i32 %199, 32
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %194, i64 %201
  store i32* %202, i32** %15, align 8
  br label %203

203:                                              ; preds = %193, %187
  br label %124

204:                                              ; preds = %166
  %205 = load i32, i32* @BITMAP, align 4
  %206 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %17, align 4
  br label %378

208:                                              ; preds = %146, %113
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = load i32*, i32** %14, align 8
  %212 = load i32*, i32** %13, align 8
  %213 = ptrtoint i32* %211 to i64
  %214 = ptrtoint i32* %212 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 4
  %217 = mul nsw i64 %216, 32
  %218 = add nsw i64 %210, %217
  %219 = load i32, i32* %21, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %218, %220
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %208
  %227 = load i32, i32* @BITMAP, align 4
  %228 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %378

229:                                              ; preds = %208
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %17, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @min(i32 %232, i32 %233)
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %229, %255
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %19, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %21, align 4
  %241 = icmp sge i32 %240, 32
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %256

243:                                              ; preds = %235
  %244 = load i32, i32* %16, align 4
  %245 = ashr i32 %244, 1
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %16, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249, %243
  br label %338

255:                                              ; preds = %249
  br label %235

256:                                              ; preds = %242
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  br label %338

261:                                              ; preds = %256
  %262 = load i32, i32* %19, align 4
  %263 = call i8* @cpu_to_be32(i32 %262)
  %264 = ptrtoint i8* %263 to i32
  %265 = load i32*, i32** %14, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %14, align 8
  store i32 %264, i32* %265, align 4
  br label %267

267:                                              ; preds = %261, %308
  br label %268

268:                                              ; preds = %283, %267
  %269 = load i32*, i32** %14, align 8
  %270 = load i32*, i32** %15, align 8
  %271 = icmp ult i32* %269, %270
  br i1 %271, label %272, label %290

272:                                              ; preds = %268
  %273 = load i32*, i32** %14, align 8
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @be32_to_cpu(i32 %274)
  store i32 %275, i32* %19, align 4
  %276 = load i32, i32* %18, align 4
  %277 = icmp slt i32 %276, 32
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %317

279:                                              ; preds = %272
  %280 = load i32, i32* %19, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i32 32, i32* %18, align 4
  br label %317

283:                                              ; preds = %279
  %284 = call i8* @cpu_to_be32(i32 -1)
  %285 = ptrtoint i8* %284 to i32
  %286 = load i32*, i32** %14, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %14, align 8
  store i32 %285, i32* %286, align 4
  %288 = load i32, i32* %18, align 4
  %289 = sub nsw i32 %288, 32
  store i32 %289, i32* %18, align 4
  br label %268

290:                                              ; preds = %268
  %291 = load %struct.page*, %struct.page** %11, align 8
  %292 = call i32 @set_page_dirty(%struct.page* %291)
  %293 = load %struct.page*, %struct.page** %11, align 8
  %294 = call i32 @kunmap(%struct.page* %293)
  %295 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %8, align 4
  %298 = load %struct.address_space*, %struct.address_space** %12, align 8
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %301 = sdiv i32 %299, %300
  %302 = call %struct.page* @read_mapping_page(%struct.address_space* %298, i32 %301, i32* null)
  store %struct.page* %302, %struct.page** %11, align 8
  %303 = load %struct.page*, %struct.page** %11, align 8
  %304 = call i64 @IS_ERR(%struct.page* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %290
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* %17, align 4
  br label %378

308:                                              ; preds = %290
  %309 = load %struct.page*, %struct.page** %11, align 8
  %310 = call i32* @kmap(%struct.page* %309)
  store i32* %310, i32** %13, align 8
  %311 = load i32*, i32** %13, align 8
  store i32* %311, i32** %14, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = load i32, i32* @PAGE_CACHE_BITS, align 4
  %314 = sdiv i32 %313, 32
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32* %316, i32** %15, align 8
  br label %267

317:                                              ; preds = %282, %278
  store i32 -2147483648, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %318

318:                                              ; preds = %334, %317
  %319 = load i32, i32* %21, align 4
  %320 = load i32, i32* %18, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %318
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* %16, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  br label %337

328:                                              ; preds = %322
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %19, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %19, align 4
  %332 = load i32, i32* %16, align 4
  %333 = ashr i32 %332, 1
  store i32 %333, i32* %16, align 4
  br label %334

334:                                              ; preds = %328
  %335 = load i32, i32* %21, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %21, align 4
  br label %318

337:                                              ; preds = %327, %318
  br label %338

338:                                              ; preds = %337, %260, %254
  %339 = load i32, i32* %19, align 4
  %340 = call i8* @cpu_to_be32(i32 %339)
  %341 = ptrtoint i8* %340 to i32
  %342 = load i32*, i32** %14, align 8
  store i32 %341, i32* %342, align 4
  %343 = load %struct.page*, %struct.page** %11, align 8
  %344 = call i32 @set_page_dirty(%struct.page* %343)
  %345 = load %struct.page*, %struct.page** %11, align 8
  %346 = call i32 @kunmap(%struct.page* %345)
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = load i32*, i32** %14, align 8
  %350 = load i32*, i32** %13, align 8
  %351 = ptrtoint i32* %349 to i64
  %352 = ptrtoint i32* %350 to i64
  %353 = sub i64 %351, %352
  %354 = sdiv exact i64 %353, 4
  %355 = mul nsw i64 %354, 32
  %356 = add nsw i64 %348, %355
  %357 = load i32, i32* %21, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %356, %358
  %360 = load i32, i32* %17, align 4
  %361 = sext i32 %360 to i64
  %362 = sub nsw i64 %359, %361
  %363 = trunc i64 %362 to i32
  %364 = load i32*, i32** %9, align 8
  store i32 %363, i32* %364, align 4
  %365 = load i32*, i32** %9, align 8
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %10, align 8
  %368 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load %struct.super_block*, %struct.super_block** %6, align 8
  %372 = call i32 @hfsplus_mark_mdb_dirty(%struct.super_block* %371)
  %373 = load i32, i32* @BITMAP, align 4
  %374 = load i32, i32* %17, align 4
  %375 = load i32*, i32** %9, align 8
  %376 = load i32, i32* %375, align 4
  %377 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %373, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %374, i32 %376)
  br label %378

378:                                              ; preds = %338, %306, %226, %204, %176, %52
  %379 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %10, align 8
  %380 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %379, i32 0, i32 1
  %381 = call i32 @mutex_unlock(i32* %380)
  %382 = load i32, i32* %17, align 4
  store i32 %382, i32* %5, align 4
  br label %383

383:                                              ; preds = %378, %28
  %384 = load i32, i32* %5, align 4
  ret i32 %384
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32* @kmap(%struct.page*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @hfsplus_mark_mdb_dirty(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

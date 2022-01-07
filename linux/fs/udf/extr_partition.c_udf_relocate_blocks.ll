; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_relocate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_relocate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sparing_data = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i64 }
%struct.sparingTable = type { %struct.sparingEntry*, i32 }
%struct.sparingEntry = type { i8*, i8* }
%struct.udf_sb_info = type { i32, i32, %struct.udf_part_map* }
%struct.udf_part_map = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.udf_sparing_data }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_relocate_blocks(%struct.super_block* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.udf_sparing_data*, align 8
  %8 = alloca %struct.sparingTable*, align 8
  %9 = alloca %struct.sparingEntry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.udf_sb_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.udf_part_map*, align 8
  %20 = alloca %struct.sparingEntry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sparingEntry*, align 8
  %24 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store %struct.sparingTable* null, %struct.sparingTable** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %25)
  store %struct.udf_sb_info* %26, %struct.udf_sb_info** %15, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.udf_sb_info*, %struct.udf_sb_info** %15, align 8
  %28 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %339, %3
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.udf_sb_info*, %struct.udf_sb_info** %15, align 8
  %33 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %342

36:                                               ; preds = %30
  %37 = load %struct.udf_sb_info*, %struct.udf_sb_info** %15, align 8
  %38 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %37, i32 0, i32 2
  %39 = load %struct.udf_part_map*, %struct.udf_part_map** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %39, i64 %41
  store %struct.udf_part_map* %42, %struct.udf_part_map** %19, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %45 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %338

48:                                               ; preds = %36
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %51 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %54 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = icmp slt i64 %49, %56
  br i1 %57, label %58, label %338

58:                                               ; preds = %48
  %59 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %60 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store %struct.udf_sparing_data* %61, %struct.udf_sparing_data** %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %64 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %68 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = xor i32 %70, -1
  %72 = sext i32 %71 to i64
  %73 = and i64 %66, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %99, %58
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %80 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %79, i32 0, i32 1
  %81 = load %struct.buffer_head**, %struct.buffer_head*** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %81, i64 %83
  %85 = load %struct.buffer_head*, %struct.buffer_head** %84, align 8
  %86 = icmp ne %struct.buffer_head* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %89 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %88, i32 0, i32 1
  %90 = load %struct.buffer_head**, %struct.buffer_head*** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %90, i64 %92
  %94 = load %struct.buffer_head*, %struct.buffer_head** %93, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.sparingTable*
  store %struct.sparingTable* %97, %struct.sparingTable** %8, align 8
  br label %102

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %75

102:                                              ; preds = %87, %75
  %103 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %104 = icmp ne %struct.sparingTable* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 1, i32* %18, align 4
  br label %350

106:                                              ; preds = %102
  %107 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %108 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @le16_to_cpu(i32 %109)
  store i32 %110, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %215, %106
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %218

115:                                              ; preds = %111
  %116 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %117 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %116, i32 0, i32 0
  %118 = load %struct.sparingEntry*, %struct.sparingEntry** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %118, i64 %120
  store %struct.sparingEntry* %121, %struct.sparingEntry** %20, align 8
  %122 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %123 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @le32_to_cpu(i8* %124)
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %185

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %164, %129
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %167

133:                                              ; preds = %130
  %134 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %135 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %134, i32 0, i32 1
  %136 = load %struct.buffer_head**, %struct.buffer_head*** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %136, i64 %138
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  store %struct.buffer_head* %140, %struct.buffer_head** %17, align 8
  %141 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %142 = icmp ne %struct.buffer_head* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %133
  br label %164

144:                                              ; preds = %133
  %145 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %146 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to %struct.sparingTable*
  store %struct.sparingTable* %148, %struct.sparingTable** %8, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %152 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 16
  %156 = add i64 16, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %22, align 4
  %158 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %159 = bitcast %struct.sparingTable* %158 to i8*
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @udf_update_tag(i8* %159, i32 %160)
  %162 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %163 = call i32 @mark_buffer_dirty(%struct.buffer_head* %162)
  br label %164

164:                                              ; preds = %144, %143
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %130

167:                                              ; preds = %130
  %168 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %169 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @le32_to_cpu(i8* %170)
  %172 = load i64, i64* %5, align 8
  %173 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %174 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %172, %175
  %177 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %178 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = and i64 %176, %181
  %183 = add nsw i64 %171, %182
  %184 = load i64*, i64** %6, align 8
  store i64 %183, i64* %184, align 8
  store i32 0, i32* %18, align 4
  br label %350

185:                                              ; preds = %115
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %207

189:                                              ; preds = %185
  %190 = load %struct.sparingEntry*, %struct.sparingEntry** %20, align 8
  %191 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @le32_to_cpu(i8* %192)
  %194 = load i64, i64* %5, align 8
  %195 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %196 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %194, %197
  %199 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %200 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = and i64 %198, %203
  %205 = add nsw i64 %193, %204
  %206 = load i64*, i64** %6, align 8
  store i64 %205, i64* %206, align 8
  store i32 0, i32* %18, align 4
  br label %350

207:                                              ; preds = %185
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %218

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %111

218:                                              ; preds = %211, %111
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %334, %218
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %16, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %337

224:                                              ; preds = %220
  %225 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %226 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %225, i32 0, i32 0
  %227 = load %struct.sparingEntry*, %struct.sparingEntry** %226, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %227, i64 %229
  store %struct.sparingEntry* %230, %struct.sparingEntry** %23, align 8
  %231 = load %struct.sparingEntry*, %struct.sparingEntry** %23, align 8
  %232 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @le32_to_cpu(i8* %233)
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %24, align 4
  %236 = load i32, i32* %24, align 4
  %237 = icmp ne i32 %236, -1
  br i1 %237, label %238, label %239

238:                                              ; preds = %224
  br label %334

239:                                              ; preds = %224
  br label %240

240:                                              ; preds = %308, %239
  %241 = load i32, i32* %12, align 4
  %242 = icmp slt i32 %241, 4
  br i1 %242, label %243, label %311

243:                                              ; preds = %240
  %244 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %245 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %244, i32 0, i32 1
  %246 = load %struct.buffer_head**, %struct.buffer_head*** %245, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %246, i64 %248
  %250 = load %struct.buffer_head*, %struct.buffer_head** %249, align 8
  store %struct.buffer_head* %250, %struct.buffer_head** %17, align 8
  %251 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %252 = icmp ne %struct.buffer_head* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %243
  br label %308

254:                                              ; preds = %243
  %255 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %256 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = inttoptr i64 %257 to %struct.sparingTable*
  store %struct.sparingTable* %258, %struct.sparingTable** %8, align 8
  %259 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %260 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %259, i32 0, i32 0
  %261 = load %struct.sparingEntry*, %struct.sparingEntry** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %261, i64 %263
  %265 = bitcast %struct.sparingEntry* %9 to i8*
  %266 = bitcast %struct.sparingEntry* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 16, i1 false)
  %267 = load i32, i32* %10, align 4
  %268 = call i8* @cpu_to_le32(i32 %267)
  %269 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %9, i32 0, i32 1
  store i8* %268, i8** %269, align 8
  %270 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %271 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %270, i32 0, i32 0
  %272 = load %struct.sparingEntry*, %struct.sparingEntry** %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %272, i64 %275
  %277 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %278 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %277, i32 0, i32 0
  %279 = load %struct.sparingEntry*, %struct.sparingEntry** %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %279, i64 %281
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %13, align 4
  %285 = sub nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = mul i64 %286, 16
  %288 = trunc i64 %287 to i32
  %289 = call i32 @memmove(%struct.sparingEntry* %276, %struct.sparingEntry* %282, i32 %288)
  %290 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %291 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %290, i32 0, i32 0
  %292 = load %struct.sparingEntry*, %struct.sparingEntry** %291, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %292, i64 %294
  %296 = bitcast %struct.sparingEntry* %295 to i8*
  %297 = bitcast %struct.sparingEntry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %296, i8* align 8 %297, i64 16, i1 false)
  %298 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %299 = bitcast %struct.sparingTable* %298 to i8*
  %300 = load i32, i32* %16, align 4
  %301 = sext i32 %300 to i64
  %302 = mul i64 %301, 16
  %303 = add i64 16, %302
  %304 = trunc i64 %303 to i32
  %305 = call i32 @udf_update_tag(i8* %299, i32 %304)
  %306 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %307 = call i32 @mark_buffer_dirty(%struct.buffer_head* %306)
  br label %308

308:                                              ; preds = %254, %253
  %309 = load i32, i32* %12, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %12, align 4
  br label %240

311:                                              ; preds = %240
  %312 = load %struct.sparingTable*, %struct.sparingTable** %8, align 8
  %313 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %312, i32 0, i32 0
  %314 = load %struct.sparingEntry*, %struct.sparingEntry** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %314, i64 %316
  %318 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i64 @le32_to_cpu(i8* %319)
  %321 = load i64, i64* %5, align 8
  %322 = load %struct.udf_part_map*, %struct.udf_part_map** %19, align 8
  %323 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = sub nsw i64 %321, %324
  %326 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %7, align 8
  %327 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sub nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = and i64 %325, %330
  %332 = add nsw i64 %320, %331
  %333 = load i64*, i64** %6, align 8
  store i64 %332, i64* %333, align 8
  store i32 0, i32* %18, align 4
  br label %350

334:                                              ; preds = %238
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %14, align 4
  br label %220

337:                                              ; preds = %220
  store i32 1, i32* %18, align 4
  br label %350

338:                                              ; preds = %48, %36
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %11, align 4
  br label %30

342:                                              ; preds = %30
  %343 = load i32, i32* %11, align 4
  %344 = load %struct.udf_sb_info*, %struct.udf_sb_info** %15, align 8
  %345 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %343, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  store i32 1, i32* %18, align 4
  br label %349

349:                                              ; preds = %348, %342
  br label %350

350:                                              ; preds = %349, %337, %311, %189, %167, %105
  %351 = load %struct.udf_sb_info*, %struct.udf_sb_info** %15, align 8
  %352 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %351, i32 0, i32 1
  %353 = call i32 @mutex_unlock(i32* %352)
  %354 = load i32, i32* %18, align 4
  ret i32 %354
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @udf_update_tag(i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(%struct.sparingEntry*, %struct.sparingEntry*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

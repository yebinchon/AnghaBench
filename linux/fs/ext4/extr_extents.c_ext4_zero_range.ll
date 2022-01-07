; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_zero_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_zero_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_KEEP_SIZE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CONVERT_UNWRITTEN = common dso_local global i32 0, align 4
@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@EXT4_HT_MISC = common dso_local global i32 0, align 4
@EXT4_INODE_EOFBLOCKS = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i32, i32)* @ext4_zero_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_zero_range(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %22, align 4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @trace_ext4_zero_range(%struct.inode* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @S_ISREG(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %346

41:                                               ; preds = %4
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i64 @ext4_should_journal_data(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ext4_force_commit(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %5, align 8
  br label %346

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %22, align 4
  %59 = shl i32 1, %58
  %60 = call i32 @round_up(i32 %57, i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %22, align 4
  %65 = shl i32 1, %64
  %66 = call i32 @round_down(i32 %63, i32 %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %56
  %77 = load i64, i64* @EINVAL, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %5, align 8
  br label %346

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %22, align 4
  %82 = shl i32 1, %81
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %80, %83
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %22, align 4
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %87, %90
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %22, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %22, align 4
  %97 = ashr i32 %95, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %79
  store i32 0, i32* %12, align 4
  br label %106

102:                                              ; preds = %79
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sub i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %102, %101
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @inode_lock(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %111 = call i32 @ext4_test_inode_flag(%struct.inode* %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @EOPNOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %14, align 4
  br label %341

116:                                              ; preds = %106
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %122, %123
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = call i32 @i_size_read(%struct.inode* %125)
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %129, %130
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %131, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %128, %121
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %13, align 4
  %141 = load %struct.inode*, %struct.inode** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @inode_newsize_ok(%struct.inode* %141, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %341

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %128, %116
  %149 = load i32, i32* @EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT, align 4
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* @EXT4_GET_BLOCKS_KEEP_SIZE, align 4
  %156 = load i32, i32* %15, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %154, %148
  %159 = load %struct.inode*, %struct.inode** %10, align 8
  %160 = call i32 @inode_dio_wait(%struct.inode* %159)
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %163, %158
  %167 = load %struct.file*, %struct.file** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %22, align 4
  %170 = shl i32 1, %169
  %171 = call i32 @round_down(i32 %168, i32 %170)
  %172 = load i32, i32* %22, align 4
  %173 = lshr i32 %171, %172
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %22, align 4
  %178 = shl i32 1, %177
  %179 = call i32 @round_up(i32 %176, i32 %178)
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %22, align 4
  %182 = shl i32 1, %181
  %183 = call i32 @round_down(i32 %180, i32 %182)
  %184 = sub i32 %179, %183
  %185 = load i32, i32* %22, align 4
  %186 = lshr i32 %184, %185
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @ext4_alloc_file_blocks(%struct.file* %167, i32 %173, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %166
  br label %341

193:                                              ; preds = %166
  br label %194

194:                                              ; preds = %193, %163
  %195 = load i32, i32* %12, align 4
  %196 = icmp ugt i32 %195, 0
  br i1 %196, label %197, label %254

197:                                              ; preds = %194
  %198 = load i32, i32* @EXT4_GET_BLOCKS_CONVERT_UNWRITTEN, align 4
  %199 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %15, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %15, align 4
  %203 = load %struct.inode*, %struct.inode** %10, align 8
  %204 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = call i32 @down_write(i32* %205)
  %207 = load %struct.inode*, %struct.inode** %10, align 8
  %208 = call i32 @ext4_break_layouts(%struct.inode* %207)
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %197
  %212 = load %struct.inode*, %struct.inode** %10, align 8
  %213 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %212)
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 1
  %215 = call i32 @up_write(i32* %214)
  br label %341

216:                                              ; preds = %197
  %217 = load %struct.inode*, %struct.inode** %10, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @ext4_update_disksize_before_punch(%struct.inode* %217, i32 %218, i32 %219)
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %216
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %224)
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = call i32 @up_write(i32* %226)
  br label %341

228:                                              ; preds = %216
  %229 = load %struct.inode*, %struct.inode** %10, align 8
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = sub nsw i32 %231, 1
  %233 = call i32 @truncate_pagecache_range(%struct.inode* %229, i32 %230, i32 %232)
  %234 = load %struct.inode*, %struct.inode** %10, align 8
  %235 = call i8* @current_time(%struct.inode* %234)
  %236 = load %struct.inode*, %struct.inode** %10, align 8
  %237 = getelementptr inbounds %struct.inode, %struct.inode* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  %238 = load %struct.inode*, %struct.inode** %10, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 2
  store i8* %235, i8** %239, align 8
  %240 = load %struct.file*, %struct.file** %6, align 8
  %241 = load i32, i32* %21, align 4
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @ext4_alloc_file_blocks(%struct.file* %240, i32 %241, i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %14, align 4
  %246 = load %struct.inode*, %struct.inode** %10, align 8
  %247 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %246)
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = call i32 @up_write(i32* %248)
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %228
  br label %341

253:                                              ; preds = %228
  br label %254

254:                                              ; preds = %253, %194
  %255 = load i32, i32* %17, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  br label %341

261:                                              ; preds = %257, %254
  %262 = load %struct.inode*, %struct.inode** %10, align 8
  %263 = call i32 @ext4_ext_index_trans_blocks(%struct.inode* %262, i32 2)
  %264 = mul nsw i32 2, %263
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %16, align 4
  %266 = load %struct.inode*, %struct.inode** %10, align 8
  %267 = call i64 @ext4_should_journal_data(%struct.inode* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %261
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 2
  store i32 %271, i32* %16, align 4
  br label %272

272:                                              ; preds = %269, %261
  %273 = load %struct.inode*, %struct.inode** %10, align 8
  %274 = load i32, i32* @EXT4_HT_MISC, align 4
  %275 = load i32, i32* %16, align 4
  %276 = call i32* @ext4_journal_start(%struct.inode* %273, i32 %274, i32 %275)
  store i32* %276, i32** %11, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = call i64 @IS_ERR(i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %272
  %281 = load i32*, i32** %11, align 8
  %282 = call i32 @PTR_ERR(i32* %281)
  store i32 %282, i32* %14, align 4
  %283 = load %struct.inode*, %struct.inode** %10, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @ext4_std_error(i32 %285, i32 %286)
  br label %341

288:                                              ; preds = %272
  %289 = load %struct.inode*, %struct.inode** %10, align 8
  %290 = call i8* @current_time(%struct.inode* %289)
  %291 = load %struct.inode*, %struct.inode** %10, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  %293 = load %struct.inode*, %struct.inode** %10, align 8
  %294 = getelementptr inbounds %struct.inode, %struct.inode* %293, i32 0, i32 2
  store i8* %290, i8** %294, align 8
  %295 = load i32, i32* %13, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %288
  %298 = load %struct.inode*, %struct.inode** %10, align 8
  %299 = load i32, i32* %13, align 4
  %300 = call i32 @ext4_update_inode_size(%struct.inode* %298, i32 %299)
  br label %313

301:                                              ; preds = %288
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* %8, align 4
  %304 = add nsw i32 %302, %303
  %305 = load %struct.inode*, %struct.inode** %10, align 8
  %306 = call i32 @i_size_read(%struct.inode* %305)
  %307 = icmp sgt i32 %304, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %301
  %309 = load %struct.inode*, %struct.inode** %10, align 8
  %310 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %311 = call i32 @ext4_set_inode_flag(%struct.inode* %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %301
  br label %313

313:                                              ; preds = %312, %297
  %314 = load i32*, i32** %11, align 8
  %315 = load %struct.inode*, %struct.inode** %10, align 8
  %316 = call i32 @ext4_mark_inode_dirty(i32* %314, %struct.inode* %315)
  %317 = load i32*, i32** %11, align 8
  %318 = load %struct.inode*, %struct.inode** %10, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %8, align 4
  %321 = call i32 @ext4_zero_partial_blocks(i32* %317, %struct.inode* %318, i32 %319, i32 %320)
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %313
  %325 = load i32*, i32** %11, align 8
  %326 = load %struct.inode*, %struct.inode** %10, align 8
  %327 = call i32 @ext4_update_inode_fsync_trans(i32* %325, %struct.inode* %326, i32 1)
  br label %328

328:                                              ; preds = %324, %313
  %329 = load %struct.file*, %struct.file** %6, align 8
  %330 = getelementptr inbounds %struct.file, %struct.file* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @O_SYNC, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %328
  %336 = load i32*, i32** %11, align 8
  %337 = call i32 @ext4_handle_sync(i32* %336)
  br label %338

338:                                              ; preds = %335, %328
  %339 = load i32*, i32** %11, align 8
  %340 = call i32 @ext4_journal_stop(i32* %339)
  br label %341

341:                                              ; preds = %338, %280, %260, %252, %223, %211, %192, %146, %113
  %342 = load %struct.inode*, %struct.inode** %10, align 8
  %343 = call i32 @inode_unlock(%struct.inode* %342)
  %344 = load i32, i32* %14, align 4
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %5, align 8
  br label %346

346:                                              ; preds = %341, %76, %52, %38
  %347 = load i64, i64* %5, align 8
  ret i64 %347
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @trace_ext4_zero_range(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_force_commit(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @ext4_alloc_file_blocks(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_break_layouts(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_update_disksize_before_punch(%struct.inode*, i32, i32) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i32, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_ext_index_trans_blocks(%struct.inode*, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

declare dso_local i32 @ext4_update_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_zero_partial_blocks(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

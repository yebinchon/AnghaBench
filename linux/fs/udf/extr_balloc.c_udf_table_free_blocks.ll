; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_table_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_table_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32 }
%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i64, i64 }
%struct.udf_sb_info = type { i32, i32, %struct.udf_part_map* }
%struct.udf_part_map = type { i64 }
%struct.extent_position = type { i32, i32*, i32 }
%struct.udf_inode_info = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%u < %d || %u + %u > %u\0A\00", align 1
@EXT_RECORDED_ALLOCATED = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.inode*, %struct.kernel_lb_addr*, i64, i64)* @udf_table_free_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_table_free_blocks(%struct.super_block* %0, %struct.inode* %1, %struct.kernel_lb_addr* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.kernel_lb_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.udf_sb_info*, align 8
  %12 = alloca %struct.udf_part_map*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.kernel_lb_addr, align 8
  %17 = alloca %struct.extent_position, align 8
  %18 = alloca %struct.extent_position, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.udf_inode_info*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %24)
  store %struct.udf_sb_info* %25, %struct.udf_sb_info** %11, align 8
  %26 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %27 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %30 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %29, i32 0, i32 2
  %31 = load %struct.udf_part_map*, %struct.udf_part_map** %30, align 8
  %32 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %33 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %31, i64 %34
  store %struct.udf_part_map* %35, %struct.udf_part_map** %12, align 8
  %36 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %37 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %5
  %44 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %45 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %50 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %43, %5
  %54 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %55 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %58 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %62 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @udf_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %56, i32 0, i64 %59, i64 %60, i64 %63)
  br label %325

65:                                               ; preds = %43
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %66)
  store %struct.udf_inode_info* %67, %struct.udf_inode_info** %20, align 8
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %70 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @udf_add_free_space(%struct.super_block* %68, i32 %71, i64 %72)
  %74 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %75 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %76, %77
  store i64 %78, i64* %13, align 8
  %79 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %80 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %14, align 8
  %87 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 0
  store i32 4, i32* %87, align 8
  %88 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 0
  store i32 4, i32* %88, align 8
  store i64 0, i64* %15, align 8
  %89 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %90 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 1
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %251, %65
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = call i32 @udf_next_aext(%struct.inode* %100, %struct.extent_position* %18, %struct.kernel_lb_addr* %16, i64* %15, i32 1)
  store i32 %101, i32* %19, align 4
  %102 = icmp ne i32 %101, -1
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %105, label %252

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = ashr i64 %108, %111
  %113 = add nsw i64 %107, %112
  %114 = load i64, i64* %13, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %165

116:                                              ; preds = %105
  %117 = load i64, i64* %15, align 8
  %118 = sub nsw i64 1073741823, %117
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.super_block*, %struct.super_block** %6, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = shl i64 %119, %122
  %124 = icmp slt i64 %118, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %116
  %126 = load i64, i64* %15, align 8
  %127 = sub nsw i64 1073741823, %126
  %128 = load %struct.super_block*, %struct.super_block** %6, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = ashr i64 %127, %130
  store i64 %131, i64* %21, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub nsw i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* %13, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %13, align 8
  %138 = load i32, i32* %19, align 4
  %139 = shl i32 %138, 30
  %140 = load %struct.super_block*, %struct.super_block** %6, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 1073741824, %142
  %144 = or i32 %139, %143
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %15, align 8
  br label %161

146:                                              ; preds = %116
  %147 = load i32, i32* %19, align 4
  %148 = shl i32 %147, 30
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.super_block*, %struct.super_block** %6, align 8
  %153 = getelementptr inbounds %struct.super_block, %struct.super_block* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = shl i64 %151, %154
  %156 = add nsw i64 %150, %155
  %157 = or i64 %149, %156
  store i64 %157, i64* %15, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %13, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %161

161:                                              ; preds = %146, %125
  %162 = load %struct.inode*, %struct.inode** %7, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @udf_write_aext(%struct.inode* %162, %struct.extent_position* %17, %struct.kernel_lb_addr* %16, i64 %163, i32 1)
  br label %227

165:                                              ; preds = %105
  %166 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %14, align 8
  %169 = add nsw i64 %168, 1
  %170 = icmp eq i64 %167, %169
  br i1 %170, label %171, label %226

171:                                              ; preds = %165
  %172 = load i64, i64* %15, align 8
  %173 = sub nsw i64 1073741823, %172
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.super_block*, %struct.super_block** %6, align 8
  %176 = getelementptr inbounds %struct.super_block, %struct.super_block* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = shl i64 %174, %177
  %179 = icmp slt i64 %173, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %171
  %181 = load i64, i64* %15, align 8
  %182 = sub nsw i64 1073741823, %181
  %183 = load %struct.super_block*, %struct.super_block** %6, align 8
  %184 = getelementptr inbounds %struct.super_block, %struct.super_block* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = ashr i64 %182, %185
  store i64 %186, i64* %22, align 8
  %187 = load i64, i64* %22, align 8
  %188 = load i64, i64* %10, align 8
  %189 = sub nsw i64 %188, %187
  store i64 %189, i64* %10, align 8
  %190 = load i64, i64* %22, align 8
  %191 = load i64, i64* %14, align 8
  %192 = sub nsw i64 %191, %190
  store i64 %192, i64* %14, align 8
  %193 = load i64, i64* %22, align 8
  %194 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %195, %193
  store i64 %196, i64* %194, align 8
  %197 = load i32, i32* %19, align 4
  %198 = shl i32 %197, 30
  %199 = load %struct.super_block*, %struct.super_block** %6, align 8
  %200 = getelementptr inbounds %struct.super_block, %struct.super_block* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 1073741824, %201
  %203 = or i32 %198, %202
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %15, align 8
  br label %222

205:                                              ; preds = %171
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  store i64 %206, i64* %207, align 8
  %208 = load i32, i32* %19, align 4
  %209 = shl i32 %208, 30
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %15, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load %struct.super_block*, %struct.super_block** %6, align 8
  %214 = getelementptr inbounds %struct.super_block, %struct.super_block* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = shl i64 %212, %215
  %217 = add nsw i64 %211, %216
  %218 = or i64 %210, %217
  store i64 %218, i64* %15, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* %14, align 8
  %221 = sub nsw i64 %220, %219
  store i64 %221, i64* %14, align 8
  store i64 0, i64* %10, align 8
  br label %222

222:                                              ; preds = %205, %180
  %223 = load %struct.inode*, %struct.inode** %7, align 8
  %224 = load i64, i64* %15, align 8
  %225 = call i32 @udf_write_aext(%struct.inode* %223, %struct.extent_position* %17, %struct.kernel_lb_addr* %16, i64 %224, i32 1)
  br label %226

226:                                              ; preds = %222, %165
  br label %227

227:                                              ; preds = %226, %161
  %228 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %229, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 2
  store i32 %235, i32* %236, align 8
  %237 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @brelse(i32* %238)
  %240 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @get_bh(i32* %241)
  %243 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  store i32* %244, i32** %245, align 8
  %246 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 0
  store i32 0, i32* %246, align 8
  br label %251

247:                                              ; preds = %227
  %248 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 0
  store i32 %249, i32* %250, align 8
  br label %251

251:                                              ; preds = %247, %233
  br label %96

252:                                              ; preds = %103
  %253 = load i64, i64* %10, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %318

255:                                              ; preds = %252
  %256 = load i64, i64* %13, align 8
  %257 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  store i64 %256, i64* %257, align 8
  %258 = load i64, i64* @EXT_RECORDED_ALLOCATED, align 8
  %259 = load i64, i64* %10, align 8
  %260 = load %struct.super_block*, %struct.super_block** %6, align 8
  %261 = getelementptr inbounds %struct.super_block, %struct.super_block* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = shl i64 %259, %262
  %264 = or i64 %258, %263
  store i64 %264, i64* %15, align 8
  %265 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %266 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %255
  store i32 4, i32* %23, align 4
  br label %286

271:                                              ; preds = %255
  %272 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %273 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  store i32 4, i32* %23, align 4
  br label %285

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = call i32 @brelse(i32* %280)
  %282 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @brelse(i32* %283)
  br label %325

285:                                              ; preds = %277
  br label %286

286:                                              ; preds = %285, %270
  %287 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %23, align 4
  %290 = mul nsw i32 2, %289
  %291 = add nsw i32 %288, %290
  %292 = load %struct.super_block*, %struct.super_block** %6, align 8
  %293 = getelementptr inbounds %struct.super_block, %struct.super_block* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = icmp sgt i32 %291, %294
  br i1 %295, label %296, label %310

296:                                              ; preds = %286
  %297 = load %struct.inode*, %struct.inode** %7, align 8
  %298 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @udf_setup_indirect_aext(%struct.inode* %297, i64 %299, %struct.extent_position* %18)
  %301 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, 1
  store i64 %303, i64* %301, align 8
  %304 = load %struct.super_block*, %struct.super_block** %6, align 8
  %305 = getelementptr inbounds %struct.super_block, %struct.super_block* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %15, align 8
  %309 = sub nsw i64 %308, %307
  store i64 %309, i64* %15, align 8
  br label %310

310:                                              ; preds = %296, %286
  %311 = load i64, i64* %15, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load %struct.inode*, %struct.inode** %7, align 8
  %315 = load i64, i64* %15, align 8
  %316 = call i32 @__udf_add_aext(%struct.inode* %314, %struct.extent_position* %18, %struct.kernel_lb_addr* %16, i64 %315, i32 1)
  br label %317

317:                                              ; preds = %313, %310
  br label %318

318:                                              ; preds = %317, %252
  %319 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %18, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @brelse(i32* %320)
  %322 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = call i32 @brelse(i32* %323)
  br label %325

325:                                              ; preds = %318, %278, %53
  %326 = load %struct.udf_sb_info*, %struct.udf_sb_info** %11, align 8
  %327 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %326, i32 0, i32 0
  %328 = call i32 @mutex_unlock(i32* %327)
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_debug(i8*, i64, i32, i64, i64, i64) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i32, i64) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i64*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i64, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @get_bh(i32*) #1

declare dso_local i32 @udf_setup_indirect_aext(%struct.inode*, i64, %struct.extent_position*) #1

declare dso_local i32 @__udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_get_inode_loc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_get_inode_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_iloc = type { i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32, i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.blk_plug = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EXT4_ROOT_INO = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to read itable block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_iloc*, i32)* @__ext4_get_inode_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_get_inode_loc(%struct.inode* %0, %struct.ext4_iloc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_iloc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.blk_plug, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_iloc* %1, %struct.ext4_iloc** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %10, align 8
  %26 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %26, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EXT4_ROOT_INO, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %10, align 8
  %38 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = icmp sgt i32 %36, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33, %3
  %46 = load i32, i32* @EFSCORRUPTED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %304

48:                                               ; preds = %33
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.super_block*, %struct.super_block** %10, align 8
  %54 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %53)
  %55 = sdiv i32 %52, %54
  %56 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %57 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.super_block*, %struct.super_block** %10, align 8
  %59 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %60 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %58, i32 %61, i32* null)
  store %struct.ext4_group_desc* %62, %struct.ext4_group_desc** %8, align 8
  %63 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %64 = icmp ne %struct.ext4_group_desc* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %48
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %304

68:                                               ; preds = %48
  %69 = load %struct.super_block*, %struct.super_block** %10, align 8
  %70 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.super_block*, %struct.super_block** %10, align 8
  %78 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %77)
  %79 = srem i32 %76, %78
  store i32 %79, i32* %14, align 4
  %80 = load %struct.super_block*, %struct.super_block** %10, align 8
  %81 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %82 = call i32 @ext4_inode_table(%struct.super_block* %80, %struct.ext4_group_desc* %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sdiv i32 %83, %84
  %86 = add i32 %82, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = srem i32 %87, %88
  %90 = load %struct.super_block*, %struct.super_block** %10, align 8
  %91 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %90)
  %92 = mul nsw i32 %89, %91
  %93 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %94 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.super_block*, %struct.super_block** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %95, i32 %96)
  store %struct.buffer_head* %97, %struct.buffer_head** %9, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %99 = icmp ne %struct.buffer_head* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %68
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %304

107:                                              ; preds = %68
  %108 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %109 = call i64 @buffer_uptodate(%struct.buffer_head* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %299, label %111

111:                                              ; preds = %107
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @lock_buffer(%struct.buffer_head* %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = call i64 @buffer_write_io_error(%struct.buffer_head* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %119 = call i64 @buffer_uptodate(%struct.buffer_head* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %123 = call i32 @set_buffer_uptodate(%struct.buffer_head* %122)
  br label %124

124:                                              ; preds = %121, %117, %111
  %125 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %126 = call i64 @buffer_uptodate(%struct.buffer_head* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = call i32 @unlock_buffer(%struct.buffer_head* %129)
  br label %300

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %205

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %136, 1
  %138 = xor i32 %137, -1
  %139 = and i32 %135, %138
  store i32 %139, i32* %17, align 4
  %140 = load %struct.super_block*, %struct.super_block** %10, align 8
  %141 = load %struct.super_block*, %struct.super_block** %10, align 8
  %142 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %143 = call i32 @ext4_inode_bitmap(%struct.super_block* %141, %struct.ext4_group_desc* %142)
  %144 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %140, i32 %143)
  store %struct.buffer_head* %144, %struct.buffer_head** %15, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %146 = icmp ne %struct.buffer_head* %145, null
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  br label %206

152:                                              ; preds = %134
  %153 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %154 = call i64 @buffer_uptodate(%struct.buffer_head* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %158 = call i32 @brelse(%struct.buffer_head* %157)
  br label %206

159:                                              ; preds = %152
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %181, %159
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %163, %164
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %161
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %181

172:                                              ; preds = %167
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %175 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @ext4_test_bit(i32 %173, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %184

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %171
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %161

184:                                              ; preds = %179, %161
  %185 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %186 = call i32 @brelse(%struct.buffer_head* %185)
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %188, %189
  %191 = icmp eq i32 %187, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %184
  %193 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %194 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %197 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @memset(i32 %195, i32 0, i32 %198)
  %200 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %201 = call i32 @set_buffer_uptodate(%struct.buffer_head* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %203 = call i32 @unlock_buffer(%struct.buffer_head* %202)
  br label %300

204:                                              ; preds = %184
  br label %205

205:                                              ; preds = %204, %131
  br label %206

206:                                              ; preds = %205, %156, %151
  %207 = call i32 @blk_start_plug(%struct.blk_plug* %12)
  %208 = load %struct.super_block*, %struct.super_block** %10, align 8
  %209 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %208)
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %270

213:                                              ; preds = %206
  %214 = load %struct.super_block*, %struct.super_block** %10, align 8
  %215 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %214)
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %22, align 4
  %218 = load %struct.super_block*, %struct.super_block** %10, align 8
  %219 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %220 = call i32 @ext4_inode_table(%struct.super_block* %218, %struct.ext4_group_desc* %219)
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %22, align 4
  %223 = sub i32 %222, 1
  %224 = xor i32 %223, -1
  %225 = and i32 %221, %224
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* %18, align 4
  %228 = icmp ugt i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %213
  %230 = load i32, i32* %20, align 4
  store i32 %230, i32* %18, align 4
  br label %231

231:                                              ; preds = %229, %213
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %22, align 4
  %234 = add i32 %232, %233
  store i32 %234, i32* %19, align 4
  %235 = load %struct.super_block*, %struct.super_block** %10, align 8
  %236 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %235)
  store i32 %236, i32* %21, align 4
  %237 = load %struct.super_block*, %struct.super_block** %10, align 8
  %238 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %231
  %241 = load %struct.super_block*, %struct.super_block** %10, align 8
  %242 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %243 = call i64 @ext4_itable_unused_count(%struct.super_block* %241, %struct.ext4_group_desc* %242)
  %244 = load i32, i32* %21, align 4
  %245 = zext i32 %244 to i64
  %246 = sub nsw i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %21, align 4
  br label %248

248:                                              ; preds = %240, %231
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %13, align 4
  %251 = udiv i32 %249, %250
  %252 = load i32, i32* %20, align 4
  %253 = add i32 %252, %251
  store i32 %253, i32* %20, align 4
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* %20, align 4
  %256 = icmp ugt i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i32, i32* %20, align 4
  store i32 %258, i32* %19, align 4
  br label %259

259:                                              ; preds = %257, %248
  br label %260

260:                                              ; preds = %264, %259
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %19, align 4
  %263 = icmp ule i32 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.super_block*, %struct.super_block** %10, align 8
  %266 = load i32, i32* %18, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %18, align 4
  %268 = call i32 @sb_breadahead(%struct.super_block* %265, i32 %266)
  br label %260

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269, %206
  %271 = load %struct.inode*, %struct.inode** %5, align 8
  %272 = call i32 @trace_ext4_load_inode(%struct.inode* %271)
  %273 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %274 = call i32 @get_bh(%struct.buffer_head* %273)
  %275 = load i32, i32* @end_buffer_read_sync, align 4
  %276 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %277 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* @REQ_OP_READ, align 4
  %279 = load i32, i32* @REQ_META, align 4
  %280 = load i32, i32* @REQ_PRIO, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %283 = call i32 @submit_bh(i32 %278, i32 %281, %struct.buffer_head* %282)
  %284 = call i32 @blk_finish_plug(%struct.blk_plug* %12)
  %285 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %286 = call i32 @wait_on_buffer(%struct.buffer_head* %285)
  %287 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %288 = call i64 @buffer_uptodate(%struct.buffer_head* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %270
  %291 = load %struct.inode*, %struct.inode** %5, align 8
  %292 = load i32, i32* %11, align 4
  %293 = call i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode* %291, i32 %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %294 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %295 = call i32 @brelse(%struct.buffer_head* %294)
  %296 = load i32, i32* @EIO, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %4, align 4
  br label %304

298:                                              ; preds = %270
  br label %299

299:                                              ; preds = %298, %107
  br label %300

300:                                              ; preds = %299, %192, %128
  %301 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %302 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %303 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %302, i32 0, i32 2
  store %struct.buffer_head* %301, %struct.buffer_head** %303, align 8
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %300, %290, %104, %65, %45
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @EXT4_INODE_SIZE(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ext4_test_bit(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i64 @ext4_itable_unused_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @sb_breadahead(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ext4_load_inode(%struct.inode*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

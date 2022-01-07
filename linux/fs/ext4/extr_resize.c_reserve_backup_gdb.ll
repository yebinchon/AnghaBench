; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_reserve_backup_gdb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_reserve_backup_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_DIND_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"reserved block %llu not at offset %ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32)* @reserve_backup_gdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_backup_gdb(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ext4_iloc, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %8, align 8
  %26 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.super_block*, %struct.super_block** %8, align 8
  %33 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %17, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @GFP_NOFS, align 4
  %38 = call %struct.buffer_head** @kmalloc_array(i32 %36, i32 8, i32 %37)
  store %struct.buffer_head** %38, %struct.buffer_head*** %11, align 8
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %40 = icmp ne %struct.buffer_head** %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %297

44:                                               ; preds = %3
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @EXT4_DIND_BLOCK, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %15, align 8
  %52 = load %struct.super_block*, %struct.super_block** %8, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = call %struct.buffer_head* @ext4_sb_bread(%struct.super_block* %52, i32 %55, i32 0)
  store %struct.buffer_head* %56, %struct.buffer_head** %12, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %58 = call i64 @IS_ERR(%struct.buffer_head* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %62 = call i32 @PTR_ERR(%struct.buffer_head* %61)
  store i32 %62, i32* %20, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %293

63:                                               ; preds = %44
  %64 = load %struct.super_block*, %struct.super_block** %8, align 8
  %65 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %64)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.super_block*, %struct.super_block** %8, align 8
  %72 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %71)
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  store i32 %75, i32* %14, align 4
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.super_block*, %struct.super_block** %8, align 8
  %81 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.super_block*, %struct.super_block** %8, align 8
  %85 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block* %84)
  %86 = srem i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %79, i64 %87
  store i32* %88, i32** %15, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.super_block*, %struct.super_block** %8, align 8
  %94 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block* %93)
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32* %96, i32** %16, align 8
  store i32 0, i32* %18, align 4
  br label %97

97:                                               ; preds = %178, %63
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %183

101:                                              ; preds = %97
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load %struct.super_block*, %struct.super_block** %8, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = ptrtoint i32* %110 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = call i32 @ext4_warning(%struct.super_block* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %109, i64 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %20, align 4
  br label %278

122:                                              ; preds = %101
  %123 = load %struct.super_block*, %struct.super_block** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call %struct.buffer_head* @ext4_sb_bread(%struct.super_block* %123, i32 %124, i32 0)
  %126 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %126, i64 %128
  store %struct.buffer_head* %125, %struct.buffer_head** %129, align 8
  %130 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %130, i64 %132
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = call i64 @IS_ERR(%struct.buffer_head* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %122
  %138 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %138, i64 %140
  %142 = load %struct.buffer_head*, %struct.buffer_head** %141, align 8
  %143 = call i32 @PTR_ERR(%struct.buffer_head* %142)
  store i32 %143, i32* %20, align 4
  %144 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %144, i64 %146
  store %struct.buffer_head* null, %struct.buffer_head** %147, align 8
  br label %278

148:                                              ; preds = %122
  %149 = load %struct.super_block*, %struct.super_block** %8, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %151, i64 %153
  %155 = load %struct.buffer_head*, %struct.buffer_head** %154, align 8
  %156 = call i32 @verify_reserved_gdb(%struct.super_block* %149, i32 %150, %struct.buffer_head* %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %148
  %160 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %160, i64 %162
  %164 = load %struct.buffer_head*, %struct.buffer_head** %163, align 8
  %165 = call i32 @brelse(%struct.buffer_head* %164)
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %20, align 4
  br label %278

167:                                              ; preds = %148
  %168 = load i32*, i32** %15, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %15, align 8
  %170 = load i32*, i32** %16, align 8
  %171 = icmp uge i32* %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %174 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i32*
  store i32* %176, i32** %15, align 8
  br label %177

177:                                              ; preds = %172, %167
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %97

183:                                              ; preds = %97
  store i32 0, i32* %19, align 4
  br label %184

184:                                              ; preds = %205, %183
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %184
  %189 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %189, i64 %191
  %193 = load %struct.buffer_head*, %struct.buffer_head** %192, align 8
  %194 = call i32 @BUFFER_TRACE(%struct.buffer_head* %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %196, i64 %198
  %200 = load %struct.buffer_head*, %struct.buffer_head** %199, align 8
  %201 = call i32 @ext4_journal_get_write_access(i32* %195, %struct.buffer_head* %200)
  store i32 %201, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %188
  br label %278

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %184

208:                                              ; preds = %184
  %209 = load i32*, i32** %5, align 8
  %210 = load %struct.inode*, %struct.inode** %6, align 8
  %211 = call i32 @ext4_reserve_inode_write(i32* %209, %struct.inode* %210, %struct.ext4_iloc* %13)
  store i32 %211, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %278

214:                                              ; preds = %208
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.super_block*, %struct.super_block** %8, align 8
  %217 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %216)
  %218 = mul nsw i32 %215, %217
  store i32 %218, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %219

219:                                              ; preds = %259, %214
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %262

223:                                              ; preds = %219
  %224 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %224, i64 %226
  %228 = load %struct.buffer_head*, %struct.buffer_head** %227, align 8
  %229 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = inttoptr i64 %230 to i32*
  store i32* %231, i32** %15, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %234, i64 %236
  %238 = load %struct.buffer_head*, %struct.buffer_head** %237, align 8
  %239 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %233, %240
  %242 = call i32 @cpu_to_le32(i64 %241)
  %243 = load i32*, i32** %15, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  %247 = load i32*, i32** %5, align 8
  %248 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %248, i64 %250
  %252 = load %struct.buffer_head*, %struct.buffer_head** %251, align 8
  %253 = call i32 @ext4_handle_dirty_metadata(i32* %247, i32* null, %struct.buffer_head* %252)
  store i32 %253, i32* %21, align 4
  %254 = load i32, i32* %20, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %223
  %257 = load i32, i32* %21, align 4
  store i32 %257, i32* %20, align 4
  br label %258

258:                                              ; preds = %256, %223
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %19, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %19, align 4
  br label %219

262:                                              ; preds = %219
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.super_block*, %struct.super_block** %8, align 8
  %265 = getelementptr inbounds %struct.super_block, %struct.super_block* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %263, %266
  %268 = load i32, i32* %10, align 4
  %269 = sub nsw i32 9, %268
  %270 = ashr i32 %267, %269
  %271 = load %struct.inode*, %struct.inode** %6, align 8
  %272 = getelementptr inbounds %struct.inode, %struct.inode* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load i32*, i32** %5, align 8
  %276 = load %struct.inode*, %struct.inode** %6, align 8
  %277 = call i32 @ext4_mark_iloc_dirty(i32* %275, %struct.inode* %276, %struct.ext4_iloc* %13)
  br label %278

278:                                              ; preds = %262, %213, %203, %159, %137, %107
  br label %279

279:                                              ; preds = %283, %278
  %280 = load i32, i32* %18, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %18, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %279
  %284 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %284, i64 %286
  %288 = load %struct.buffer_head*, %struct.buffer_head** %287, align 8
  %289 = call i32 @brelse(%struct.buffer_head* %288)
  br label %279

290:                                              ; preds = %279
  %291 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %292 = call i32 @brelse(%struct.buffer_head* %291)
  br label %293

293:                                              ; preds = %290, %60
  %294 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %295 = call i32 @kfree(%struct.buffer_head** %294)
  %296 = load i32, i32* %20, align 4
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %293, %41
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head** @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(%struct.super_block*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i32 @verify_reserved_gdb(%struct.super_block*, i32, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

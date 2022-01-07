; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_aops.c_ntfs_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_aops.c_ntfs_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_15__ = type { i32, i8, %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8, i64 }
%struct.TYPE_14__ = type { i8, i8, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i8, i32 }
%struct.buffer_head = type { i32, i32 (%struct.buffer_head*, i32)*, i32, %struct.buffer_head* }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i8 0, align 1
@LCN_RL_NOT_MAPPED = common dso_local global i32 0, align 4
@LCN_HOLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LCN_ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [150 x i8] c"Failed to read from inode 0x%lx, attribute type 0x%x, vcn 0x%llx, offset 0x%x because its location on disk could not be determined%s (error code %i).\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" even after retrying\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @ntfs_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_block(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %29 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca %struct.buffer_head*, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %36, align 8
  store %struct.inode* %37, %struct.inode** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call %struct.TYPE_15__* @NTFS_I(%struct.inode* %38)
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %9, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %10, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = call i32 @NInoAttr(%struct.TYPE_15__* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %53, %48, %1
  %59 = phi i1 [ false, %48 ], [ false, %1 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %20, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 4
  store i8 %71, i8* %24, align 1
  %72 = load %struct.page*, %struct.page** %3, align 8
  %73 = call i32 @page_has_buffers(%struct.page* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %58
  %76 = load %struct.page*, %struct.page** %3, align 8
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @create_empty_buffers(%struct.page* %76, i32 %77, i32 0)
  %79 = load %struct.page*, %struct.page** %3, align 8
  %80 = call i32 @page_has_buffers(%struct.page* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.page*, %struct.page** %3, align 8
  %88 = call i32 @unlock_page(%struct.page* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %468

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %58
  %93 = load %struct.page*, %struct.page** %3, align 8
  %94 = call %struct.buffer_head* @page_buffers(%struct.page* %93)
  store %struct.buffer_head* %94, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %12, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %96 = icmp ne %struct.buffer_head* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load %struct.page*, %struct.page** %3, align 8
  %101 = getelementptr inbounds %struct.page, %struct.page* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i8
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @PAGE_SHIFT, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* %24, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %106, %108
  %110 = shl i32 %104, %109
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %16, align 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 5
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @read_lock_irqsave(i32* %113, i64 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %20, align 4
  %120 = add i32 %118, %119
  %121 = sub i32 %120, 1
  %122 = load i8, i8* %24, align 1
  %123 = zext i8 %122 to i32
  %124 = lshr i32 %121, %123
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %17, align 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i8, i8* %127, align 4
  store i8 %128, i8* %7, align 1
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call zeroext i8 @i_size_read(%struct.inode* %129)
  store i8 %130, i8* %4, align 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 5
  %133 = load i64, i64* %19, align 8
  %134 = call i32 @read_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load i8, i8* %7, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %4, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp sgt i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %92
  %144 = load i8, i8* %4, align 1
  store i8 %144, i8* %7, align 1
  br label %145

145:                                              ; preds = %143, %92
  %146 = load i8, i8* %7, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32, i32* %20, align 4
  %149 = add i32 %147, %148
  %150 = sub i32 %149, 1
  %151 = load i8, i8* %24, align 1
  %152 = zext i8 %151 to i32
  %153 = lshr i32 %150, %152
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %18, align 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %155

155:                                              ; preds = %381, %145
  store i32 0, i32* %26, align 4
  %156 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %157 = call i32 @buffer_uptodate(%struct.buffer_head* %156)
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %381

161:                                              ; preds = %155
  %162 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %163 = call i32 @buffer_mapped(%struct.buffer_head* %162)
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %168 = load i32, i32* %23, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %23, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %32, i64 %170
  store %struct.buffer_head* %167, %struct.buffer_head** %171, align 8
  br label %381

172:                                              ; preds = %161
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %179 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i8, i8* %16, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* %17, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %358

185:                                              ; preds = %172
  store i32 0, i32* %27, align 4
  %186 = load i8, i8* %16, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* %24, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %187, %189
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i8, i8* %192, align 8
  %194 = zext i8 %193 to i32
  %195 = ashr i32 %190, %194
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %5, align 1
  %197 = load i8, i8* %16, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* %24, align 1
  %200 = zext i8 %199 to i32
  %201 = shl i32 %198, %200
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %201, %205
  store i32 %206, i32* %21, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %208 = icmp ne %struct.TYPE_13__* %207, null
  br i1 %208, label %219, label %209

209:                                              ; preds = %185
  br label %210

210:                                              ; preds = %308, %209
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = call i32 @down_read(i32* %213)
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  store %struct.TYPE_13__* %218, %struct.TYPE_13__** %11, align 8
  br label %219

219:                                              ; preds = %210, %185
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %221 = icmp ne %struct.TYPE_13__* %220, null
  %222 = zext i1 %221 to i32
  %223 = call i64 @likely(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %249

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %242, %225
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i8, i8* %234, align 8
  %236 = zext i8 %235 to i32
  %237 = load i8, i8* %5, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp sle i32 %236, %238
  br label %240

240:                                              ; preds = %231, %226
  %241 = phi i1 [ false, %226 ], [ %239, %231 ]
  br i1 %241, label %242, label %245

242:                                              ; preds = %240
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 1
  store %struct.TYPE_13__* %244, %struct.TYPE_13__** %11, align 8
  br label %226

245:                                              ; preds = %240
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %247 = load i8, i8* %5, align 1
  %248 = call i32 @ntfs_rl_vcn_to_lcn(%struct.TYPE_13__* %246, i8 zeroext %247)
  store i32 %248, i32* %6, align 4
  br label %251

249:                                              ; preds = %219
  %250 = load i32, i32* @LCN_RL_NOT_MAPPED, align 4
  store i32 %250, i32* %6, align 4
  br label %251

251:                                              ; preds = %249, %245
  %252 = load i32, i32* %6, align 4
  %253 = icmp uge i32 %252, 0
  br i1 %253, label %254, label %282

254:                                              ; preds = %251
  %255 = load i32, i32* %6, align 4
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load i8, i8* %257, align 8
  %259 = zext i8 %258 to i32
  %260 = shl i32 %255, %259
  %261 = load i32, i32* %21, align 4
  %262 = add i32 %260, %261
  %263 = load i8, i8* %24, align 1
  %264 = zext i8 %263 to i32
  %265 = lshr i32 %262, %264
  %266 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %267 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %269 = call i32 @set_buffer_mapped(%struct.buffer_head* %268)
  %270 = load i8, i8* %16, align 1
  %271 = zext i8 %270 to i32
  %272 = load i8, i8* %18, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %254
  %276 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %277 = load i32, i32* %23, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %23, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %32, i64 %279
  store %struct.buffer_head* %276, %struct.buffer_head** %280, align 8
  br label %381

281:                                              ; preds = %254
  br label %364

282:                                              ; preds = %251
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @LCN_HOLE, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  br label %359

287:                                              ; preds = %282
  %288 = load i32, i32* %27, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %310, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @LCN_RL_NOT_MAPPED, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %310

294:                                              ; preds = %290
  store i32 1, i32* %27, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = call i32 @up_read(i32* %297)
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %300 = load i8, i8* %5, align 1
  %301 = call i32 @ntfs_map_runlist(%struct.TYPE_15__* %299, i8 zeroext %300)
  store i32 %301, i32* %26, align 4
  %302 = load i32, i32* %26, align 4
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i64 @likely(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %294
  br label %210

309:                                              ; preds = %294
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %319

310:                                              ; preds = %290, %287
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %312 = icmp ne %struct.TYPE_13__* %311, null
  br i1 %312, label %318, label %313

313:                                              ; preds = %310
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = call i32 @up_read(i32* %316)
  br label %318

318:                                              ; preds = %313, %310
  br label %319

319:                                              ; preds = %318, %309
  %320 = load i32, i32* %26, align 4
  %321 = load i32, i32* @ENOENT, align 4
  %322 = sub nsw i32 0, %321
  %323 = icmp eq i32 %320, %322
  br i1 %323, label %328, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @LCN_ENOENT, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %324, %319
  store i32 0, i32* %26, align 4
  br label %359

329:                                              ; preds = %324
  %330 = load i32, i32* %26, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* @EIO, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %26, align 4
  br label %335

335:                                              ; preds = %332, %329
  %336 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %337 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %336, i32 0, i32 0
  store i32 -1, i32* %337, align 8
  %338 = load %struct.page*, %struct.page** %3, align 8
  %339 = call i32 @SetPageError(%struct.page* %338)
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %341, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = load i8, i8* %5, align 1
  %350 = zext i8 %349 to i64
  %351 = load i32, i32* %21, align 4
  %352 = load i32, i32* %27, align 4
  %353 = icmp ne i32 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %356 = load i32, i32* %26, align 4
  %357 = call i32 @ntfs_error(%struct.TYPE_16__* %342, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0), i32 %345, i32 %348, i64 %350, i32 %351, i8* %355, i32 %356)
  br label %358

358:                                              ; preds = %335, %172
  br label %359

359:                                              ; preds = %358, %328, %286
  %360 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %361 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %360, i32 0, i32 0
  store i32 -1, i32* %361, align 8
  %362 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %363 = call i32 @clear_buffer_mapped(%struct.buffer_head* %362)
  br label %364

364:                                              ; preds = %359, %281
  %365 = load %struct.page*, %struct.page** %3, align 8
  %366 = load i32, i32* %22, align 4
  %367 = load i32, i32* %20, align 4
  %368 = mul i32 %366, %367
  %369 = load i32, i32* %20, align 4
  %370 = call i32 @zero_user(%struct.page* %365, i32 %368, i32 %369)
  %371 = load i32, i32* %26, align 4
  %372 = icmp ne i32 %371, 0
  %373 = xor i1 %372, true
  %374 = zext i1 %373 to i32
  %375 = call i64 @likely(i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %364
  %378 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %379 = call i32 @set_buffer_uptodate(%struct.buffer_head* %378)
  br label %380

380:                                              ; preds = %377, %364
  br label %381

381:                                              ; preds = %380, %275, %166, %160
  %382 = load i32, i32* %22, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %22, align 4
  %384 = load i8, i8* %16, align 1
  %385 = add i8 %384, 1
  store i8 %385, i8* %16, align 1
  %386 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %387 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %386, i32 0, i32 3
  %388 = load %struct.buffer_head*, %struct.buffer_head** %387, align 8
  store %struct.buffer_head* %388, %struct.buffer_head** %12, align 8
  %389 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %390 = icmp ne %struct.buffer_head* %388, %389
  br i1 %390, label %155, label %391

391:                                              ; preds = %381
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %393 = icmp ne %struct.TYPE_13__* %392, null
  br i1 %393, label %394, label %399

394:                                              ; preds = %391
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 0
  %398 = call i32 @up_read(i32* %397)
  br label %399

399:                                              ; preds = %394, %391
  %400 = load i32, i32* %23, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %450

402:                                              ; preds = %399
  store i32 0, i32* %22, align 4
  br label %403

403:                                              ; preds = %418, %402
  %404 = load i32, i32* %22, align 4
  %405 = load i32, i32* %23, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %421

407:                                              ; preds = %403
  %408 = load i32, i32* %22, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %32, i64 %409
  %411 = load %struct.buffer_head*, %struct.buffer_head** %410, align 8
  store %struct.buffer_head* %411, %struct.buffer_head** %28, align 8
  %412 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %413 = call i32 @lock_buffer(%struct.buffer_head* %412)
  %414 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %415 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %414, i32 0, i32 1
  store i32 (%struct.buffer_head*, i32)* @ntfs_end_buffer_async_read, i32 (%struct.buffer_head*, i32)** %415, align 8
  %416 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %417 = call i32 @set_buffer_async_read(%struct.buffer_head* %416)
  br label %418

418:                                              ; preds = %407
  %419 = load i32, i32* %22, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %22, align 4
  br label %403

421:                                              ; preds = %403
  store i32 0, i32* %22, align 4
  br label %422

422:                                              ; preds = %446, %421
  %423 = load i32, i32* %22, align 4
  %424 = load i32, i32* %23, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %449

426:                                              ; preds = %422
  %427 = load i32, i32* %22, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %32, i64 %428
  %430 = load %struct.buffer_head*, %struct.buffer_head** %429, align 8
  store %struct.buffer_head* %430, %struct.buffer_head** %28, align 8
  %431 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %432 = call i32 @buffer_uptodate(%struct.buffer_head* %431)
  %433 = icmp ne i32 %432, 0
  %434 = xor i1 %433, true
  %435 = zext i1 %434 to i32
  %436 = call i64 @likely(i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %426
  %439 = load i32, i32* @REQ_OP_READ, align 4
  %440 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %441 = call i32 @submit_bh(i32 %439, i32 0, %struct.buffer_head* %440)
  br label %445

442:                                              ; preds = %426
  %443 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %444 = call i32 @ntfs_end_buffer_async_read(%struct.buffer_head* %443, i32 1)
  br label %445

445:                                              ; preds = %442, %438
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %22, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %22, align 4
  br label %422

449:                                              ; preds = %422
  store i32 0, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %468

450:                                              ; preds = %399
  %451 = load %struct.page*, %struct.page** %3, align 8
  %452 = call i32 @PageError(%struct.page* %451)
  %453 = icmp ne i32 %452, 0
  %454 = xor i1 %453, true
  %455 = zext i1 %454 to i32
  %456 = call i64 @likely(i32 %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %450
  %459 = load %struct.page*, %struct.page** %3, align 8
  %460 = call i32 @SetPageUptodate(%struct.page* %459)
  br label %464

461:                                              ; preds = %450
  %462 = load i32, i32* @EIO, align 4
  %463 = sub nsw i32 0, %462
  store i32 %463, i32* %23, align 4
  br label %464

464:                                              ; preds = %461, %458
  %465 = load %struct.page*, %struct.page** %3, align 8
  %466 = call i32 @unlock_page(%struct.page* %465)
  %467 = load i32, i32* %23, align 4
  store i32 %467, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %468

468:                                              ; preds = %464, %449, %86
  %469 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %469)
  %470 = load i32, i32* %2, align 4
  ret i32 %470
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @NTFS_I(%struct.inode*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @NInoAttr(%struct.TYPE_15__*) #2

declare dso_local i32 @page_has_buffers(%struct.page*) #2

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #2

declare dso_local i32 @read_lock_irqsave(i32*, i64) #2

declare dso_local zeroext i8 @i_size_read(%struct.inode*) #2

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @ntfs_rl_vcn_to_lcn(%struct.TYPE_13__*, i8 zeroext) #2

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @ntfs_map_runlist(%struct.TYPE_15__*, i8 zeroext) #2

declare dso_local i32 @SetPageError(%struct.page*) #2

declare dso_local i32 @ntfs_error(%struct.TYPE_16__*, i8*, i32, i32, i64, i32, i8*, i32) #2

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #2

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #2

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #2

declare dso_local i32 @ntfs_end_buffer_async_read(%struct.buffer_head*, i32) #2

declare dso_local i32 @set_buffer_async_read(%struct.buffer_head*) #2

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #2

declare dso_local i32 @PageError(%struct.page*) #2

declare dso_local i32 @SetPageUptodate(%struct.page*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

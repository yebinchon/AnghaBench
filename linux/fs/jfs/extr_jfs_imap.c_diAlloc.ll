; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAlloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.metapage = type { i64 }
%struct.iag = type { i32*, i32*, i32*, i32*, i64, i64 }
%struct.inomap = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, %struct.inode* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, %struct.inode*, %struct.inomap* }

@FILESYSTEM_I = common dso_local global i32 0, align 4
@INOSPERIAG = common dso_local global i32 0, align 4
@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXTSPERIAG = common dso_local global i32 0, align 4
@EXTSPERSUM = common dso_local global i32 0, align 4
@SMAPSZ = common dso_local global i32 0, align 4
@L2EXTSPERSUM = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't find free bit in wmap\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diAlloc(%struct.inode* %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %22 = alloca %struct.inode*, align 8
  %23 = alloca %struct.metapage*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.iag*, align 8
  %26 = alloca %struct.inomap*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_8__* @JFS_SBI(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %22, align 8
  %33 = load %struct.inode*, %struct.inode** %22, align 8
  %34 = call %struct.TYPE_9__* @JFS_IP(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load %struct.inomap*, %struct.inomap** %35, align 8
  store %struct.inomap* %36, %struct.inomap** %26, align 8
  %37 = load %struct.inode*, %struct.inode** %22, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call %struct.TYPE_9__* @JFS_IP(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store %struct.inode* %37, %struct.inode** %40, align 8
  %41 = load i32, i32* @FILESYSTEM_I, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call %struct.TYPE_9__* @JFS_IP(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %3
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_8__* @JFS_SBI(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dbNextAG(i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.inomap*, %struct.inomap** %26, align 8
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @AG_LOCK(%struct.inomap* %55, i32 %56)
  br label %453

58:                                               ; preds = %3
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_9__* @JFS_IP(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_8__* @JFS_SBI(i32 %65)
  %67 = call i32 @BLKTOAG(i32 %62, %struct.TYPE_8__* %66)
  store i32 %67, i32* %18, align 4
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_8__* @JFS_SBI(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i64 @atomic_read(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %58
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_8__* @JFS_SBI(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dbNextAG(i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load %struct.inomap*, %struct.inomap** %26, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @AG_LOCK(%struct.inomap* %89, i32 %90)
  br label %453

92:                                               ; preds = %58
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %24, align 4
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* @INOSPERIAG, align 4
  %99 = sub nsw i32 %98, 1
  %100 = and i32 %97, %99
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %24, align 4
  br label %107

107:                                              ; preds = %103, %92
  %108 = load %struct.inomap*, %struct.inomap** %26, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @AG_LOCK(%struct.inomap* %108, i32 %109)
  %111 = load %struct.inode*, %struct.inode** %22, align 8
  %112 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %113 = call i32 @IREAD_LOCK(%struct.inode* %111, i32 %112)
  %114 = load i32, i32* %24, align 4
  %115 = call i32 @INOTOIAG(i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load %struct.inomap*, %struct.inomap** %26, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @diIAGRead(%struct.inomap* %116, i32 %117, %struct.metapage** %23)
  store i32 %118, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %107
  %121 = load %struct.inode*, %struct.inode** %22, align 8
  %122 = call i32 @IREAD_UNLOCK(%struct.inode* %121)
  %123 = load %struct.inomap*, %struct.inomap** %26, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @AG_UNLOCK(%struct.inomap* %123, i32 %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %474

127:                                              ; preds = %107
  %128 = load %struct.metapage*, %struct.metapage** %23, align 8
  %129 = getelementptr inbounds %struct.metapage, %struct.metapage* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.iag*
  store %struct.iag* %131, %struct.iag** %25, align 8
  %132 = load %struct.inomap*, %struct.inomap** %26, align 8
  %133 = getelementptr inbounds %struct.inomap, %struct.inomap* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 32
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load %struct.iag*, %struct.iag** %25, align 8
  %143 = getelementptr inbounds %struct.iag, %struct.iag* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %141, %127
  %147 = phi i1 [ false, %127 ], [ %145, %141 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load %struct.iag*, %struct.iag** %25, align 8
  %150 = getelementptr inbounds %struct.iag, %struct.iag* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %448

156:                                              ; preds = %153, %146
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @L2INOSPEREXT, align 4
  %159 = ashr i32 %157, %158
  store i32 %159, i32* %12, align 4
  %160 = load %struct.iag*, %struct.iag** %25, align 8
  %161 = getelementptr inbounds %struct.iag, %struct.iag* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = call i64 @addressPXD(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %237

168:                                              ; preds = %156
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @INOSPEREXT, align 4
  %171 = sub nsw i32 %170, 1
  %172 = and i32 %169, %171
  store i32 %172, i32* %13, align 4
  %173 = load %struct.iag*, %struct.iag** %25, align 8
  %174 = getelementptr inbounds %struct.iag, %struct.iag* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le32_to_cpu(i32 %179)
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @diFindFree(i32 %180, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* @INOSPEREXT, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %222

185:                                              ; preds = %168
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @L2INOSPEREXT, align 4
  %188 = shl i32 %186, %187
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %9, align 4
  %191 = load %struct.inomap*, %struct.inomap** %26, align 8
  %192 = load %struct.iag*, %struct.iag** %25, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @diAllocBit(%struct.inomap* %191, %struct.iag* %192, i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load %struct.inode*, %struct.inode** %22, align 8
  %196 = call i32 @IREAD_UNLOCK(%struct.inode* %195)
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %185
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %200, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  br label %215

206:                                              ; preds = %185
  %207 = load %struct.inode*, %struct.inode** %7, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.iag*, %struct.iag** %25, align 8
  %212 = call i32 @diInitInode(%struct.inode* %207, i32 %208, i32 %209, i32 %210, %struct.iag* %211)
  %213 = load %struct.metapage*, %struct.metapage** %23, align 8
  %214 = call i32 @mark_metapage_dirty(%struct.metapage* %213)
  br label %215

215:                                              ; preds = %206, %199
  %216 = load %struct.metapage*, %struct.metapage** %23, align 8
  %217 = call i32 @release_metapage(%struct.metapage* %216)
  %218 = load %struct.inomap*, %struct.inomap** %26, align 8
  %219 = load i32, i32* %18, align 4
  %220 = call i32 @AG_UNLOCK(%struct.inomap* %218, i32 %219)
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %4, align 4
  br label %474

222:                                              ; preds = %168
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* @EXTSPERIAG, align 4
  %228 = sub nsw i32 %227, 1
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %234

231:                                              ; preds = %225
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  br label %234

234:                                              ; preds = %231, %230
  %235 = phi i32 [ 0, %230 ], [ %233, %231 ]
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %234, %222
  br label %237

237:                                              ; preds = %236, %156
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* @EXTSPERSUM, align 4
  %240 = sub nsw i32 %239, 1
  %241 = and i32 %238, %240
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = load i32, i32* @SMAPSZ, align 4
  br label %249

246:                                              ; preds = %237
  %247 = load i32, i32* @SMAPSZ, align 4
  %248 = add nsw i32 %247, 1
  br label %249

249:                                              ; preds = %246, %244
  %250 = phi i32 [ %245, %244 ], [ %248, %246 ]
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @L2EXTSPERSUM, align 4
  %253 = ashr i32 %251, %252
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  br label %263

257:                                              ; preds = %249
  %258 = load i32, i32* @ONES, align 4
  %259 = load i32, i32* @EXTSPERSUM, align 4
  %260 = load i32, i32* %13, align 4
  %261 = sub nsw i32 %259, %260
  %262 = shl i32 %258, %261
  br label %263

263:                                              ; preds = %257, %256
  %264 = phi i32 [ 0, %256 ], [ %262, %257 ]
  store i32 %264, i32* %19, align 4
  %265 = load %struct.iag*, %struct.iag** %25, align 8
  %266 = getelementptr inbounds %struct.iag, %struct.iag* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @le32_to_cpu(i32 %271)
  %273 = load i32, i32* %19, align 4
  %274 = or i32 %272, %273
  store i32 %274, i32* %20, align 4
  %275 = load %struct.iag*, %struct.iag** %25, align 8
  %276 = getelementptr inbounds %struct.iag, %struct.iag* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @le32_to_cpu(i32 %281)
  %283 = load i32, i32* %19, align 4
  %284 = or i32 %282, %283
  store i32 %284, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %285

285:                                              ; preds = %444, %263
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %15, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %447

289:                                              ; preds = %285
  %290 = load i32, i32* %20, align 4
  %291 = xor i32 %290, -1
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %364

293:                                              ; preds = %289
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @diFindFree(i32 %294, i32 0)
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* @L2EXTSPERSUM, align 4
  %298 = shl i32 %296, %297
  %299 = load i32, i32* %16, align 4
  %300 = add nsw i32 %298, %299
  store i32 %300, i32* %12, align 4
  %301 = load %struct.iag*, %struct.iag** %25, align 8
  %302 = getelementptr inbounds %struct.iag, %struct.iag* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @le32_to_cpu(i32 %307)
  %309 = call i32 @diFindFree(i32 %308, i32 0)
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* @INOSPEREXT, align 4
  %312 = icmp sge i32 %310, %311
  br i1 %312, label %313, label %327

313:                                              ; preds = %293
  %314 = load %struct.inode*, %struct.inode** %22, align 8
  %315 = call i32 @IREAD_UNLOCK(%struct.inode* %314)
  %316 = load %struct.metapage*, %struct.metapage** %23, align 8
  %317 = call i32 @release_metapage(%struct.metapage* %316)
  %318 = load %struct.inomap*, %struct.inomap** %26, align 8
  %319 = load i32, i32* %18, align 4
  %320 = call i32 @AG_UNLOCK(%struct.inomap* %318, i32 %319)
  %321 = load %struct.inode*, %struct.inode** %7, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @jfs_error(i32 %323, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %325 = load i32, i32* @EIO, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %4, align 4
  br label %474

327:                                              ; preds = %293
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* @L2INOSPEREXT, align 4
  %330 = shl i32 %328, %329
  %331 = load i32, i32* %16, align 4
  %332 = add nsw i32 %330, %331
  store i32 %332, i32* %9, align 4
  %333 = load %struct.inomap*, %struct.inomap** %26, align 8
  %334 = load %struct.iag*, %struct.iag** %25, align 8
  %335 = load i32, i32* %9, align 4
  %336 = call i32 @diAllocBit(%struct.inomap* %333, %struct.iag* %334, i32 %335)
  store i32 %336, i32* %8, align 4
  %337 = load %struct.inode*, %struct.inode** %22, align 8
  %338 = call i32 @IREAD_UNLOCK(%struct.inode* %337)
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %327
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* @EIO, align 4
  %344 = sub nsw i32 0, %343
  %345 = icmp eq i32 %342, %344
  %346 = zext i1 %345 to i32
  %347 = call i32 @assert(i32 %346)
  br label %357

348:                                              ; preds = %327
  %349 = load %struct.inode*, %struct.inode** %7, align 8
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %12, align 4
  %353 = load %struct.iag*, %struct.iag** %25, align 8
  %354 = call i32 @diInitInode(%struct.inode* %349, i32 %350, i32 %351, i32 %352, %struct.iag* %353)
  %355 = load %struct.metapage*, %struct.metapage** %23, align 8
  %356 = call i32 @mark_metapage_dirty(%struct.metapage* %355)
  br label %357

357:                                              ; preds = %348, %341
  %358 = load %struct.metapage*, %struct.metapage** %23, align 8
  %359 = call i32 @release_metapage(%struct.metapage* %358)
  %360 = load %struct.inomap*, %struct.inomap** %26, align 8
  %361 = load i32, i32* %18, align 4
  %362 = call i32 @AG_UNLOCK(%struct.inomap* %360, i32 %361)
  %363 = load i32, i32* %8, align 4
  store i32 %363, i32* %4, align 4
  br label %474

364:                                              ; preds = %289
  %365 = load i32, i32* %11, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %417

367:                                              ; preds = %364
  %368 = load i32, i32* %21, align 4
  %369 = xor i32 %368, -1
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %417

371:                                              ; preds = %367
  %372 = load i32, i32* %21, align 4
  %373 = call i32 @diFindFree(i32 %372, i32 0)
  store i32 %373, i32* %16, align 4
  %374 = load i32, i32* %14, align 4
  %375 = load i32, i32* @L2EXTSPERSUM, align 4
  %376 = shl i32 %374, %375
  %377 = load i32, i32* %16, align 4
  %378 = add nsw i32 %376, %377
  store i32 %378, i32* %12, align 4
  %379 = load %struct.inomap*, %struct.inomap** %26, align 8
  %380 = load %struct.iag*, %struct.iag** %25, align 8
  %381 = load i32, i32* %12, align 4
  %382 = call i32 @diNewExt(%struct.inomap* %379, %struct.iag* %380, i32 %381)
  store i32 %382, i32* %8, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %397

384:                                              ; preds = %371
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* @ENOSPC, align 4
  %387 = sub nsw i32 0, %386
  %388 = icmp eq i32 %385, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  br label %447

390:                                              ; preds = %384
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @EIO, align 4
  %393 = sub nsw i32 0, %392
  %394 = icmp eq i32 %391, %393
  %395 = zext i1 %394 to i32
  %396 = call i32 @assert(i32 %395)
  br label %408

397:                                              ; preds = %371
  %398 = load %struct.inode*, %struct.inode** %7, align 8
  %399 = load i32, i32* %10, align 4
  %400 = load i32, i32* %12, align 4
  %401 = load i32, i32* @L2INOSPEREXT, align 4
  %402 = shl i32 %400, %401
  %403 = load i32, i32* %12, align 4
  %404 = load %struct.iag*, %struct.iag** %25, align 8
  %405 = call i32 @diInitInode(%struct.inode* %398, i32 %399, i32 %402, i32 %403, %struct.iag* %404)
  %406 = load %struct.metapage*, %struct.metapage** %23, align 8
  %407 = call i32 @mark_metapage_dirty(%struct.metapage* %406)
  br label %408

408:                                              ; preds = %397, %390
  %409 = load %struct.metapage*, %struct.metapage** %23, align 8
  %410 = call i32 @release_metapage(%struct.metapage* %409)
  %411 = load %struct.inode*, %struct.inode** %22, align 8
  %412 = call i32 @IREAD_UNLOCK(%struct.inode* %411)
  %413 = load %struct.inomap*, %struct.inomap** %26, align 8
  %414 = load i32, i32* %18, align 4
  %415 = call i32 @AG_UNLOCK(%struct.inomap* %413, i32 %414)
  %416 = load i32, i32* %8, align 4
  store i32 %416, i32* %4, align 4
  br label %474

417:                                              ; preds = %367, %364
  %418 = load i32, i32* %14, align 4
  %419 = load i32, i32* @SMAPSZ, align 4
  %420 = sub nsw i32 %419, 1
  %421 = icmp eq i32 %418, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  br label %426

423:                                              ; preds = %417
  %424 = load i32, i32* %14, align 4
  %425 = add nsw i32 %424, 1
  br label %426

426:                                              ; preds = %423, %422
  %427 = phi i32 [ 0, %422 ], [ %425, %423 ]
  store i32 %427, i32* %14, align 4
  %428 = load %struct.iag*, %struct.iag** %25, align 8
  %429 = getelementptr inbounds %struct.iag, %struct.iag* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %14, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @le32_to_cpu(i32 %434)
  store i32 %435, i32* %20, align 4
  %436 = load %struct.iag*, %struct.iag** %25, align 8
  %437 = getelementptr inbounds %struct.iag, %struct.iag* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %14, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @le32_to_cpu(i32 %442)
  store i32 %443, i32* %21, align 4
  br label %444

444:                                              ; preds = %426
  %445 = load i32, i32* %17, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %17, align 4
  br label %285

447:                                              ; preds = %389, %285
  br label %448

448:                                              ; preds = %447, %153
  %449 = load %struct.inode*, %struct.inode** %22, align 8
  %450 = call i32 @IREAD_UNLOCK(%struct.inode* %449)
  %451 = load %struct.metapage*, %struct.metapage** %23, align 8
  %452 = call i32 @release_metapage(%struct.metapage* %451)
  br label %453

453:                                              ; preds = %448, %81, %47
  %454 = load %struct.inomap*, %struct.inomap** %26, align 8
  %455 = load i32, i32* %18, align 4
  %456 = load i32, i32* %6, align 4
  %457 = load %struct.inode*, %struct.inode** %7, align 8
  %458 = call i32 @diAllocAG(%struct.inomap* %454, i32 %455, i32 %456, %struct.inode* %457)
  store i32 %458, i32* %8, align 4
  %459 = load %struct.inomap*, %struct.inomap** %26, align 8
  %460 = load i32, i32* %18, align 4
  %461 = call i32 @AG_UNLOCK(%struct.inomap* %459, i32 %460)
  %462 = load i32, i32* %8, align 4
  %463 = load i32, i32* @ENOSPC, align 4
  %464 = sub nsw i32 0, %463
  %465 = icmp ne i32 %462, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %453
  %467 = load i32, i32* %8, align 4
  store i32 %467, i32* %4, align 4
  br label %474

468:                                              ; preds = %453
  %469 = load %struct.inomap*, %struct.inomap** %26, align 8
  %470 = load i32, i32* %18, align 4
  %471 = load i32, i32* %6, align 4
  %472 = load %struct.inode*, %struct.inode** %7, align 8
  %473 = call i32 @diAllocAny(%struct.inomap* %469, i32 %470, i32 %471, %struct.inode* %472)
  store i32 %473, i32* %4, align 4
  br label %474

474:                                              ; preds = %468, %466, %408, %357, %313, %215, %120
  %475 = load i32, i32* %4, align 4
  ret i32 %475
}

declare dso_local %struct.TYPE_8__* @JFS_SBI(i32) #1

declare dso_local %struct.TYPE_9__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @dbNextAG(i32) #1

declare dso_local i32 @AG_LOCK(%struct.inomap*, i32) #1

declare dso_local i32 @BLKTOAG(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @INOTOIAG(i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @AG_UNLOCK(%struct.inomap*, i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @diFindFree(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @diAllocBit(%struct.inomap*, %struct.iag*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diInitInode(%struct.inode*, i32, i32, i32, %struct.iag*) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @diNewExt(%struct.inomap*, %struct.iag*, i32) #1

declare dso_local i32 @diAllocAG(%struct.inomap*, i32, i32, %struct.inode*) #1

declare dso_local i32 @diAllocAny(%struct.inomap*, i32, i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

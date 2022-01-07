; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rbm_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rbm_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32* }
%struct.gfs2_bitmap = type { i32, i32, i32, i32*, %struct.buffer_head* }
%struct.gfs2_extent = type { i64, %struct.gfs2_rbm }

@GBF_FULL = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4
@BFITNOENT = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*, i32, i64*, %struct.gfs2_inode*, i32)* @gfs2_rbm_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rbm_find(%struct.gfs2_rbm* %0, i32 %1, i64* %2, %struct.gfs2_inode* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_rbm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gfs2_bitmap*, align 8
  %20 = alloca %struct.gfs2_extent, align 8
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store %struct.gfs2_inode* %3, %struct.gfs2_inode** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %22 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %25, %5
  %31 = phi i1 [ false, %5 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %33 = bitcast %struct.gfs2_extent* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 32, i1 false)
  %34 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %20, i32 0, i32 1
  %35 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %34, i32 0, i32 2
  %36 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %37 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %35, align 8
  %39 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %40 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = sub nsw i32 %41, %46
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %30, %215
  %49 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %50 = call %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm* %49)
  store %struct.gfs2_bitmap* %50, %struct.gfs2_bitmap** %19, align 8
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %52 = icmp eq %struct.gfs2_inode* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 0
  %56 = call i32 @gfs2_rs_active(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @GBF_FULL, align 4
  %60 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %61 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %170

69:                                               ; preds = %64, %58, %53
  %70 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %71 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %70, i32 0, i32 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %71, align 8
  store %struct.buffer_head* %72, %struct.buffer_head** %13, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %77 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32* %80, i32** %16, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %82 = call i32 @buffer_uptodate(%struct.buffer_head* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %69
  %91 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %92 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %97 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %100 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  store i32* %103, i32** %16, align 8
  br label %104

104:                                              ; preds = %95, %90, %69
  %105 = load i32*, i32** %16, align 8
  %106 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %107 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %110 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @gfs2_bitfit(i32* %105, i32 %108, i64 %111, i32 %112)
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* @BFITNOENT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %104
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %123 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* @GBF_FULL, align 4
  %128 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %19, align 8
  %129 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %128, i32 0, i32 1
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %126, %121, %117
  br label %170

132:                                              ; preds = %104
  %133 = load i64, i64* %15, align 8
  %134 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %135 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %137 = icmp eq %struct.gfs2_inode* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %269

139:                                              ; preds = %132
  %140 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %141 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = icmp ne i64* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i64*, i64** %9, align 8
  %146 = load i64, i64* %145, align 8
  br label %148

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %144
  %149 = phi i64 [ %146, %144 ], [ 0, %147 ]
  %150 = call i32 @gfs2_reservation_check_and_update(%struct.gfs2_rbm* %140, %struct.gfs2_inode* %141, i64 %149, %struct.gfs2_extent* %20)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 0, i32* %6, align 4
  br label %269

154:                                              ; preds = %148
  %155 = load i32, i32* %18, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %205

158:                                              ; preds = %154
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @E2BIG, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %165 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %167 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %190

168:                                              ; preds = %158
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %6, align 4
  br label %269

170:                                              ; preds = %131, %68
  %171 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %172 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %174 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %178 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %181 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %179, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %170
  %187 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %188 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %170
  br label %190

190:                                              ; preds = %189, %163
  %191 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %192 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %216

199:                                              ; preds = %195
  store i32 1, i32* %17, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %216

203:                                              ; preds = %199
  br label %204

204:                                              ; preds = %203, %190
  br label %205

205:                                              ; preds = %204, %157
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %210 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %216

215:                                              ; preds = %208, %205
  br label %48

216:                                              ; preds = %214, %202, %198
  %217 = load i64*, i64** %9, align 8
  %218 = icmp eq i64* %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219, %216
  %224 = load i32, i32* @ENOSPC, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %6, align 4
  br label %269

226:                                              ; preds = %219
  %227 = load i32, i32* %17, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %254

229:                                              ; preds = %226
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %229
  %233 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %234 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %254

238:                                              ; preds = %232, %229
  %239 = load i64*, i64** %9, align 8
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %242 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %241, i32 0, i32 2
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp slt i64 %240, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %238
  %248 = load i64*, i64** %9, align 8
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %251 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %250, i32 0, i32 2
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  store i64 %249, i64* %253, align 8
  br label %254

254:                                              ; preds = %247, %238, %232, %226
  %255 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %20, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %254
  %259 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %7, align 8
  %260 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %20, i32 0, i32 1
  %261 = bitcast %struct.gfs2_rbm* %259 to i8*
  %262 = bitcast %struct.gfs2_rbm* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 24, i1 false)
  %263 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %20, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** %9, align 8
  store i64 %264, i64* %265, align 8
  store i32 0, i32* %6, align 4
  br label %269

266:                                              ; preds = %254
  %267 = load i32, i32* @ENOSPC, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %266, %258, %223, %168, %153, %138
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm*) #2

declare dso_local i32 @gfs2_rs_active(i32*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i64 @gfs2_bitfit(i32*, i32, i64, i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @gfs2_reservation_check_and_update(%struct.gfs2_rbm*, %struct.gfs2_inode*, i64, %struct.gfs2_extent*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

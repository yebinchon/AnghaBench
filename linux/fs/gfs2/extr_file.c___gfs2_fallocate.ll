; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c___gfs2_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c___gfs2_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i32 0, align 4
@RES_QUOTA = common dso_local global i32 0, align 4
@RES_RG_HDR = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@__O_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i32, i32)* @__gfs2_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__gfs2_fallocate(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_alloc_parms, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = call %struct.inode* @file_inode(%struct.file* %26)
  store %struct.inode* %27, %struct.inode** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %28)
  store %struct.gfs2_sbd* %29, %struct.gfs2_sbd** %11, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %30)
  store %struct.gfs2_inode* %31, %struct.gfs2_inode** %12, align 8
  %32 = bitcast %struct.gfs2_alloc_parms* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 16, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %22, align 4
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = xor i32 %39, -1
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %46 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %44, %48
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* @UINT_MAX, align 4
  %51 = load i32, i32* %23, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %24, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %56 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %54, %58
  store i32 %59, i32* %24, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %68, %72
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %4
  %78 = load i32, i32* @UINT_MAX, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %77, %4
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %17, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %87 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %85, %79
  %91 = load %struct.file*, %struct.file** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @gfs2_size_hint(%struct.file* %91, i32 %92, i32 %93)
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %95, i32 %96, i32* %14, i32* %15)
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add i32 %98, %99
  %101 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %229, %117, %90
  %103 = load i32, i32* %9, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %240

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %112, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %102

124:                                              ; preds = %111
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %25, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %25, align 4
  br label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %18, align 4
  %134 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %134, i32 %135, i32* %14, i32* %15)
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = add i32 %137, %138
  %140 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  %141 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %142 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %141, %struct.gfs2_alloc_parms* %13)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %132
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %5, align 8
  br label %303

148:                                              ; preds = %132
  %149 = load i32, i32* @UINT_MAX, align 4
  store i32 %149, i32* %19, align 4
  %150 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %158 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %157, %struct.gfs2_alloc_parms* %13)
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %298

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %19, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %13, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %171, %166, %162
  %175 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %176 = load i32, i32* %19, align 4
  %177 = call i32 @calc_max_reserv(%struct.gfs2_inode* %175, i32* %18, i32* %14, i32* %15, i32 %176)
  %178 = load i32, i32* @RES_DINODE, align 4
  %179 = load i32, i32* %15, align 4
  %180 = add i32 %178, %179
  %181 = load i32, i32* @RES_STATFS, align 4
  %182 = add i32 %180, %181
  %183 = load i32, i32* @RES_QUOTA, align 4
  %184 = add i32 %182, %183
  %185 = load i32, i32* @RES_RG_HDR, align 4
  %186 = add i32 %184, %185
  %187 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %15, align 4
  %190 = add i32 %188, %189
  %191 = call i32 @gfs2_rg_blocks(%struct.gfs2_inode* %187, i32 %190)
  %192 = add i32 %186, %191
  store i32 %192, i32* %16, align 4
  %193 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %194 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %174
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  br label %202

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i32 [ %200, %199 ], [ 1, %201 ]
  %204 = load i32, i32* %16, align 4
  %205 = add i32 %204, %203
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %202, %174
  %207 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @PAGE_SIZE, align 4
  %210 = load %struct.inode*, %struct.inode** %10, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %209, %212
  %214 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %207, i32 %208, i32 %213)
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  br label %295

218:                                              ; preds = %206
  %219 = load %struct.inode*, %struct.inode** %10, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @fallocate_chunk(%struct.inode* %219, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %20, align 4
  %224 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %225 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %224)
  %226 = load i32, i32* %20, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %295

229:                                              ; preds = %218
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %9, align 4
  %232 = sub nsw i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %8, align 4
  %236 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %237 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %236)
  %238 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %239 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %238)
  br label %102

240:                                              ; preds = %102
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %259, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* %22, align 4
  %248 = add nsw i32 %246, %247
  %249 = load %struct.inode*, %struct.inode** %10, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %245
  %254 = load %struct.inode*, %struct.inode** %10, align 8
  %255 = load i32, i32* %21, align 4
  %256 = load i32, i32* %22, align 4
  %257 = add nsw i32 %255, %256
  %258 = call i32 @i_size_write(%struct.inode* %254, i32 %257)
  br label %259

259:                                              ; preds = %253, %245, %240
  %260 = load %struct.file*, %struct.file** %6, align 8
  %261 = call i32 @file_update_time(%struct.file* %260)
  %262 = load %struct.inode*, %struct.inode** %10, align 8
  %263 = call i32 @mark_inode_dirty(%struct.inode* %262)
  %264 = load %struct.file*, %struct.file** %6, align 8
  %265 = getelementptr inbounds %struct.file, %struct.file* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @O_DSYNC, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %259
  %271 = load %struct.file*, %struct.file** %6, align 8
  %272 = getelementptr inbounds %struct.file, %struct.file* %271, i32 0, i32 1
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @IS_SYNC(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %294

278:                                              ; preds = %270, %259
  %279 = load %struct.file*, %struct.file** %6, align 8
  %280 = load i32, i32* %21, align 4
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %22, align 4
  %283 = add nsw i32 %281, %282
  %284 = sub nsw i32 %283, 1
  %285 = load %struct.file*, %struct.file** %6, align 8
  %286 = getelementptr inbounds %struct.file, %struct.file* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @__O_SYNC, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 0, i32 1
  %293 = call i64 @vfs_fsync_range(%struct.file* %279, i32 %280, i32 %284, i32 %292)
  store i64 %293, i64* %5, align 8
  br label %303

294:                                              ; preds = %270
  store i64 0, i64* %5, align 8
  br label %303

295:                                              ; preds = %228, %217
  %296 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %297 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %296)
  br label %298

298:                                              ; preds = %295, %161
  %299 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %300 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %299)
  %301 = load i32, i32* %20, align 4
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %5, align 8
  br label %303

303:                                              ; preds = %298, %294, %278, %145
  %304 = load i64, i64* %5, align 8
  ret i64 %304
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_size_hint(%struct.file*, i32, i32) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @calc_max_reserv(%struct.gfs2_inode*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @fallocate_chunk(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(i32) #1

declare dso_local i64 @vfs_fsync_range(%struct.file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

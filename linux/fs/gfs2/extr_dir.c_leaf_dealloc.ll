; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_leaf_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_leaf_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_leaf = type { i32 }
%struct.gfs2_rgrp_list = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.gfs2_rgrpd = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NO_UID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@NO_GID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i32, i64, %struct.buffer_head*, i32)* @leaf_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_dealloc(%struct.gfs2_inode* %0, i32 %1, i32 %2, i64 %3, %struct.buffer_head* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_sbd*, align 8
  %15 = alloca %struct.gfs2_leaf*, align 8
  %16 = alloca %struct.gfs2_rgrp_list, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.gfs2_rgrpd*, align 8
  %28 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store i32 %5, i32* %13, align 4
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %30)
  store %struct.gfs2_sbd* %31, %struct.gfs2_sbd** %14, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %25, align 4
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %37 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %36)
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* %26, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %26, align 4
  store i32 %41, i32* %7, align 4
  br label %281

42:                                               ; preds = %6
  %43 = call i32 @memset(%struct.gfs2_rgrp_list* %16, i32 0, i32 16)
  %44 = load i32, i32* %25, align 4
  %45 = load i32, i32* @GFP_NOFS, align 4
  %46 = load i32, i32* @__GFP_NOWARN, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @kzalloc(i32 %44, i32 %47)
  store i8* %48, i8** %23, align 8
  %49 = load i8*, i8** %23, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i32, i32* %25, align 4
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = load i32, i32* @__GFP_NOWARN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @__GFP_ZERO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PAGE_KERNEL, align 4
  %59 = call i8* @__vmalloc(i32 %52, i32 %57, i32 %58)
  store i8* %59, i8** %23, align 8
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i8*, i8** %23, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %281

66:                                               ; preds = %60
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %68 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %69 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %70 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %67, i32 %68, i32 %69)
  store i32 %70, i32* %26, align 4
  %71 = load i32, i32* %26, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %277

74:                                               ; preds = %66
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %17, align 8
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %19, align 8
  br label %77

77:                                               ; preds = %113, %74
  %78 = load i64, i64* %19, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %115

80:                                               ; preds = %77
  %81 = load i64, i64* %19, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %86 = load i64, i64* %19, align 8
  %87 = call i32 @get_leaf(%struct.gfs2_inode* %85, i64 %86, %struct.buffer_head** %17)
  store i32 %87, i32* %26, align 4
  %88 = load i32, i32* %26, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %273

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %96, %struct.gfs2_leaf** %15, align 8
  %97 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %98 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @be64_to_cpu(i32 %99)
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %104, %92
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %109 = load i64, i64* %19, align 8
  %110 = call i32 @gfs2_rlist_add(%struct.gfs2_inode* %108, %struct.gfs2_rgrp_list* %16, i64 %109)
  %111 = load i32, i32* %22, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %20, align 8
  store i64 %114, i64* %19, align 8
  br label %77

115:                                              ; preds = %77
  %116 = call i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list* %16)
  store i32 0, i32* %24, align 4
  br label %117

117:                                              ; preds = %138, %115
  %118 = load i32, i32* %24, align 4
  %119 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %24, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.gfs2_rgrpd* @gfs2_glock2rgrp(i32 %129)
  store %struct.gfs2_rgrpd* %130, %struct.gfs2_rgrpd** %27, align 8
  %131 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %27, align 8
  %132 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %21, align 4
  %135 = zext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %21, align 4
  br label %138

138:                                              ; preds = %122
  %139 = load i32, i32* %24, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %24, align 4
  br label %117

141:                                              ; preds = %117
  %142 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = call i32 @gfs2_glock_nq_m(i32 %143, %struct.TYPE_5__* %145)
  store i32 %146, i32* %26, align 4
  %147 = load i32, i32* %26, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %273

150:                                              ; preds = %141
  %151 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %152 = load i32, i32* %21, align 4
  %153 = zext i32 %152 to i64
  %154 = load i32, i32* %25, align 4
  %155 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %156 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @DIV_ROUND_UP(i32 %154, i32 %157)
  %159 = add nsw i64 %158, 1
  %160 = add nsw i64 %153, %159
  %161 = load i64, i64* @RES_DINODE, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i64, i64* @RES_STATFS, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i64, i64* @RES_QUOTA, align 8
  %166 = add nsw i64 %164, %165
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %151, i64 %166, i32 %167)
  store i32 %168, i32* %26, align 4
  %169 = load i32, i32* %26, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %150
  br label %267

172:                                              ; preds = %150
  %173 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %173, %struct.buffer_head** %17, align 8
  %174 = load i64, i64* %11, align 8
  store i64 %174, i64* %19, align 8
  br label %175

175:                                              ; preds = %216, %172
  %176 = load i64, i64* %19, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %218

178:                                              ; preds = %175
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %11, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %184 = load i64, i64* %19, align 8
  %185 = call i32 @get_leaf(%struct.gfs2_inode* %183, i64 %184, %struct.buffer_head** %17)
  store i32 %185, i32* %26, align 4
  %186 = load i32, i32* %26, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %264

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %178
  %191 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %192 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %194, %struct.gfs2_leaf** %15, align 8
  %195 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %15, align 8
  %196 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @be64_to_cpu(i32 %197)
  store i64 %198, i64* %20, align 8
  %199 = load i64, i64* %19, align 8
  %200 = load i64, i64* %11, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %190
  %203 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %204 = call i32 @brelse(%struct.buffer_head* %203)
  br label %205

205:                                              ; preds = %202, %190
  %206 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %207 = load i64, i64* %19, align 8
  %208 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %206, i64 %207, i32 1)
  store %struct.gfs2_rgrpd* %208, %struct.gfs2_rgrpd** %28, align 8
  %209 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %210 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %28, align 8
  %211 = load i64, i64* %19, align 8
  %212 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %209, %struct.gfs2_rgrpd* %210, i64 %211, i32 1)
  %213 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %214 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %213, i32 0, i32 0
  %215 = call i32 @gfs2_add_inode_blocks(%struct.TYPE_6__* %214, i32 -1)
  br label %216

216:                                              ; preds = %205
  %217 = load i64, i64* %20, align 8
  store i64 %217, i64* %19, align 8
  br label %175

218:                                              ; preds = %175
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %220 = load i8*, i8** %23, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 8
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* %25, align 4
  %226 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %219, i8* %220, i32 %224, i32 %225)
  store i32 %226, i32* %26, align 4
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* %25, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %218
  %231 = load i32, i32* %26, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* @EIO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %26, align 4
  br label %236

236:                                              ; preds = %233, %230
  br label %264

237:                                              ; preds = %218
  %238 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %239 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %238, %struct.buffer_head** %18)
  store i32 %239, i32* %26, align 4
  %240 = load i32, i32* %26, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %264

243:                                              ; preds = %237
  %244 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %245 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %248 = call i32 @gfs2_trans_add_meta(i32 %246, %struct.buffer_head* %247)
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %243
  %252 = load i32, i32* @S_IFREG, align 4
  %253 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %254 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  store i32 %252, i32* %255, align 4
  br label %256

256:                                              ; preds = %251, %243
  %257 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %258 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %259 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %257, i64 %260)
  %262 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %263 = call i32 @brelse(%struct.buffer_head* %262)
  br label %264

264:                                              ; preds = %256, %242, %236, %188
  %265 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %266 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %265)
  br label %267

267:                                              ; preds = %264, %171
  %268 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 1
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %270, align 8
  %272 = call i32 @gfs2_glock_dq_m(i32 %269, %struct.TYPE_5__* %271)
  br label %273

273:                                              ; preds = %267, %149, %90
  %274 = call i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list* %16)
  %275 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %276 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %275)
  br label %277

277:                                              ; preds = %273, %73
  %278 = load i8*, i8** %23, align 8
  %279 = call i32 @kvfree(i8* %278)
  %280 = load i32, i32* %26, align 4
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %277, %63, %40
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @memset(%struct.gfs2_rgrp_list*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_rlist_add(%struct.gfs2_inode*, %struct.gfs2_rgrp_list*, i64) #1

declare dso_local i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_glock2rgrp(i32) #1

declare dso_local i32 @gfs2_glock_nq_m(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_free_meta(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i64, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gfs2_dir_write_data(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_m(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

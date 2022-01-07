; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_3__*, %struct.page* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i64, i64 }
%struct.inode = type { i64, i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@GIF_SW_PAGED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @gfs2_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_alloc_parms, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gfs2_holder, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %16 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 1
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %3, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.inode* @file_inode(i32 %23)
  store %struct.inode* %24, %struct.inode** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %25)
  store %struct.gfs2_inode* %26, %struct.gfs2_inode** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %27)
  store %struct.gfs2_sbd* %28, %struct.gfs2_sbd** %6, align 8
  %29 = bitcast %struct.gfs2_alloc_parms* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @page_offset(%struct.page* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sb_start_pagefault(i32 %34)
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %251

41:                                               ; preds = %1
  %42 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %43 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @gfs2_size_hint(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %54 = call i32 @gfs2_holder_init(%struct.TYPE_4__* %52, i32 %53, i32 0, %struct.gfs2_holder* %13)
  %55 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %13)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %241

59:                                               ; preds = %41
  %60 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %61 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @file_update_time(i32 %64)
  %66 = load i32, i32* @GLF_DIRTY, align 4
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @set_bit(i32 %66, i32* %70)
  %72 = load i32, i32* @GIF_SW_PAGED, align 4
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %59
  %82 = load %struct.page*, %struct.page** %3, align 8
  %83 = call i32 @lock_page(%struct.page* %82)
  %84 = load %struct.page*, %struct.page** %3, align 8
  %85 = call i32 @PageUptodate(%struct.page* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.page*, %struct.page** %3, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87, %81
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %15, align 4
  %98 = load %struct.page*, %struct.page** %3, align 8
  %99 = call i32 @unlock_page(%struct.page* %98)
  br label %100

100:                                              ; preds = %95, %87
  br label %239

101:                                              ; preds = %59
  %102 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %103 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %239

107:                                              ; preds = %101
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %108, i32 %109, i32* %10, i32* %11)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %111, %112
  %114 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %7, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %116 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %115, %struct.gfs2_alloc_parms* %7)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %239

120:                                              ; preds = %107
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %122 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %121, %struct.gfs2_alloc_parms* %7)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %236

126:                                              ; preds = %120
  %127 = load i32, i32* @RES_DINODE, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %127, %128
  store i32 %129, i32* %12, align 4
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %131 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  br label %139

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 1, %138 ]
  %141 = load i32, i32* %12, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %139, %126
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146, %143
  %150 = load i64, i64* @RES_STATFS, align 8
  %151 = load i64, i64* @RES_QUOTA, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = zext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %12, align 4
  %157 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %158, %159
  %161 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %157, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %149, %146
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %167, i32 %168, i32 0)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %233

173:                                              ; preds = %166
  %174 = load %struct.page*, %struct.page** %3, align 8
  %175 = call i32 @lock_page(%struct.page* %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %15, align 4
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = call i32 @i_size_read(%struct.inode* %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* @PAGE_SHIFT, align 4
  %183 = ashr i32 %181, %182
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %8, align 8
  %185 = load i32, i32* %14, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %173
  %188 = load %struct.page*, %struct.page** %3, align 8
  %189 = getelementptr inbounds %struct.page, %struct.page* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %8, align 8
  %192 = icmp ugt i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187, %173
  br label %224

194:                                              ; preds = %187
  %195 = load i32, i32* @EAGAIN, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %15, align 4
  %197 = load %struct.page*, %struct.page** %3, align 8
  %198 = call i32 @PageUptodate(%struct.page* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %194
  %201 = load %struct.page*, %struct.page** %3, align 8
  %202 = getelementptr inbounds %struct.page, %struct.page* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.inode*, %struct.inode** %4, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %200, %194
  br label %224

209:                                              ; preds = %200
  store i32 0, i32* %15, align 4
  %210 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %211 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %215 = load %struct.page*, %struct.page** %3, align 8
  %216 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %214, %struct.page* %215)
  store i32 %216, i32* %15, align 4
  br label %217

217:                                              ; preds = %213, %209
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load %struct.page*, %struct.page** %3, align 8
  %222 = call i32 @gfs2_allocate_page_backing(%struct.page* %221)
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223, %208, %193
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.page*, %struct.page** %3, align 8
  %229 = call i32 @unlock_page(%struct.page* %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %232 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %231)
  br label %233

233:                                              ; preds = %230, %172
  %234 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %235 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %234)
  br label %236

236:                                              ; preds = %233, %125
  %237 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %238 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %237)
  br label %239

239:                                              ; preds = %236, %119, %106, %100
  %240 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %13)
  br label %241

241:                                              ; preds = %239, %58
  %242 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %13)
  %243 = load i32, i32* %15, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load %struct.page*, %struct.page** %3, align 8
  %247 = call i32 @set_page_dirty(%struct.page* %246)
  %248 = load %struct.page*, %struct.page** %3, align 8
  %249 = call i32 @wait_for_stable_page(%struct.page* %248)
  br label %250

250:                                              ; preds = %245, %241
  br label %251

251:                                              ; preds = %250, %40
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @sb_end_pagefault(i32 %254)
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @block_page_mkwrite_return(i32 %256)
  ret i32 %257
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_size_hint(i32, i32, i32) #1

declare dso_local i32 @gfs2_holder_init(%struct.TYPE_4__*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @file_update_time(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, %struct.page*) #1

declare dso_local i32 @gfs2_allocate_page_backing(%struct.page*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

declare dso_local i32 @block_page_mkwrite_return(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

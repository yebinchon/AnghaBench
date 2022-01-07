; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_security_xattr_info = type { i32, i32 }
%struct.inode = type { i64, i32 }
%struct.dentry = type { %struct.ocfs2_dentry_lock*, %struct.TYPE_3__ }
%struct.ocfs2_dentry_lock = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_4__ = type { i32, i64 }

@__const.ocfs2_mknod.si = private unnamed_addr constant %struct.ocfs2_security_xattr_info { i32 1, i32 0 }, align 4
@ENOENT = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INODE_SKIP_ORPHAN_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i64)* @ocfs2_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_alloc_context*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_security_xattr_info, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.inode* null, %struct.inode** %16, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %18, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %29 = bitcast %struct.ocfs2_security_xattr_info* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.ocfs2_security_xattr_info* @__const.ocfs2_mknod.si to i8*), i64 8, i1 false)
  store i32 0, i32* %24, align 4
  %30 = bitcast %struct.ocfs2_dir_lookup_result* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  store i32 0, i32* %27, align 4
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %28, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @trace_ocfs2_mknod(%struct.inode* %31, %struct.dentry* %32, i32 %36, i32 %40, i64 %44, i64 %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @dquot_initialize(%struct.inode* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %462

56:                                               ; preds = %4
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.ocfs2_super* @OCFS2_SB(i32 %59)
  store %struct.ocfs2_super* %60, %struct.ocfs2_super** %13, align 8
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i32 @ocfs2_inode_lock(%struct.inode* %61, %struct.buffer_head** %11, i32 1)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %462

75:                                               ; preds = %56
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @S_ISDIR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %84 = call i64 @ocfs2_link_max(%struct.ocfs2_super* %83)
  %85 = icmp sge i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @EMLINK, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %380

89:                                               ; preds = %79, %75
  %90 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %93, %struct.ocfs2_dinode** %14, align 8
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %95 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %380

100:                                              ; preds = %89
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = load %struct.dentry*, %struct.dentry** %7, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dentry*, %struct.dentry** %7, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %101, i32 %105, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %380

114:                                              ; preds = %100
  %115 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %118 = load %struct.dentry*, %struct.dentry** %7, align 8
  %119 = getelementptr inbounds %struct.dentry, %struct.dentry* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dentry*, %struct.dentry** %7, align 8
  %123 = getelementptr inbounds %struct.dentry, %struct.dentry* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %115, %struct.inode* %116, %struct.buffer_head* %117, i32 %121, i32 %125, %struct.ocfs2_dir_lookup_result* %25)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %380

132:                                              ; preds = %114
  %133 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %134 = call i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %133, %struct.ocfs2_alloc_context** %17)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @ENOSPC, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @mlog_errno(i32 %143)
  br label %145

145:                                              ; preds = %142, %137
  br label %380

146:                                              ; preds = %132
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call %struct.inode* @ocfs2_get_init_inode(%struct.inode* %147, i32 %148)
  store %struct.inode* %149, %struct.inode** %16, align 8
  %150 = load %struct.inode*, %struct.inode** %16, align 8
  %151 = call i64 @IS_ERR(%struct.inode* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.inode*, %struct.inode** %16, align 8
  %155 = call i32 @PTR_ERR(%struct.inode* %154)
  store i32 %155, i32* %10, align 4
  store %struct.inode* null, %struct.inode** %16, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @mlog_errno(i32 %156)
  br label %380

158:                                              ; preds = %146
  %159 = load %struct.inode*, %struct.inode** %16, align 8
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = load %struct.dentry*, %struct.dentry** %7, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 1
  %163 = call i32 @ocfs2_init_security_get(%struct.inode* %159, %struct.inode* %160, %struct.TYPE_3__* %162, %struct.ocfs2_security_xattr_info* %23)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %158
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @EOPNOTSUPP, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 0
  store i32 0, i32* %172, align 4
  br label %176

173:                                              ; preds = %166
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @mlog_errno(i32 %174)
  br label %380

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %158
  %178 = load %struct.inode*, %struct.inode** %6, align 8
  %179 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @ocfs2_calc_xattr_init(%struct.inode* %178, %struct.buffer_head* %179, i32 %180, %struct.ocfs2_security_xattr_info* %23, i32* %20, i32* %22, i32* %21)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @mlog_errno(i32 %185)
  br label %380

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = call i64 @S_ISDIR(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %187
  %192 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %193 = call i32 @ocfs2_supports_inline_data(%struct.ocfs2_super* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %191
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %20, align 4
  %198 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %199 = call i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %21, align 4
  br label %204

204:                                              ; preds = %201, %195
  br label %205

205:                                              ; preds = %204, %191, %187
  %206 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %207 = load i32, i32* %21, align 4
  %208 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %206, i32 %207, %struct.ocfs2_alloc_context** %19)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @ENOSPC, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @mlog_errno(i32 %217)
  br label %219

219:                                              ; preds = %216, %211
  br label %380

220:                                              ; preds = %205
  %221 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %222 = load i32, i32* %20, align 4
  %223 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %221, i32 %222, %struct.ocfs2_alloc_context** %18)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @ENOSPC, align 4
  %229 = sub nsw i32 0, %228
  %230 = icmp ne i32 %227, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @mlog_errno(i32 %232)
  br label %234

234:                                              ; preds = %231, %226
  br label %380

235:                                              ; preds = %220
  %236 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %237 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %238 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %8, align 4
  %241 = call i64 @S_ISDIR(i32 %240)
  %242 = load i32, i32* %22, align 4
  %243 = call i32 @ocfs2_mknod_credits(i32 %239, i64 %241, i32 %242)
  %244 = call %struct.inode* @ocfs2_start_trans(%struct.ocfs2_super* %236, i32 %243)
  store %struct.inode* %244, %struct.inode** %12, align 8
  %245 = load %struct.inode*, %struct.inode** %12, align 8
  %246 = call i64 @IS_ERR(%struct.inode* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %235
  %249 = load %struct.inode*, %struct.inode** %12, align 8
  %250 = call i32 @PTR_ERR(%struct.inode* %249)
  store i32 %250, i32* %10, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @mlog_errno(i32 %251)
  br label %380

253:                                              ; preds = %235
  %254 = call i32 @ocfs2_block_signals(i32* %26)
  store i32 1, i32* %27, align 4
  %255 = load %struct.inode*, %struct.inode** %16, align 8
  %256 = call i32 @dquot_alloc_inode(%struct.inode* %255)
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  br label %380

260:                                              ; preds = %253
  store i32 1, i32* %24, align 4
  %261 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %262 = load %struct.inode*, %struct.inode** %6, align 8
  %263 = load %struct.inode*, %struct.inode** %16, align 8
  %264 = load i64, i64* %9, align 8
  %265 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %266 = load %struct.inode*, %struct.inode** %12, align 8
  %267 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %268 = call i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %261, %struct.inode* %262, %struct.inode* %263, i64 %264, %struct.buffer_head** %15, %struct.buffer_head* %265, %struct.inode* %266, %struct.ocfs2_alloc_context* %267)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %260
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @mlog_errno(i32 %272)
  br label %380

274:                                              ; preds = %260
  %275 = load i32, i32* %8, align 4
  %276 = call i64 @S_ISDIR(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %312

278:                                              ; preds = %274
  %279 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %280 = load %struct.inode*, %struct.inode** %12, align 8
  %281 = load %struct.inode*, %struct.inode** %6, align 8
  %282 = load %struct.inode*, %struct.inode** %16, align 8
  %283 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %284 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %285 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %286 = call i32 @ocfs2_fill_new_dir(%struct.ocfs2_super* %279, %struct.inode* %280, %struct.inode* %281, %struct.inode* %282, %struct.buffer_head* %283, %struct.ocfs2_alloc_context* %284, %struct.ocfs2_alloc_context* %285)
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* %10, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %278
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @mlog_errno(i32 %290)
  br label %380

292:                                              ; preds = %278
  %293 = load %struct.inode*, %struct.inode** %12, align 8
  %294 = load %struct.inode*, %struct.inode** %6, align 8
  %295 = call i32 @INODE_CACHE(%struct.inode* %294)
  %296 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %297 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %298 = call i32 @ocfs2_journal_access_di(%struct.inode* %293, i32 %295, %struct.buffer_head* %296, i32 %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %292
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @mlog_errno(i32 %302)
  br label %380

304:                                              ; preds = %292
  %305 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %306 = call i32 @ocfs2_add_links_count(%struct.ocfs2_dinode* %305, i32 1)
  %307 = load %struct.inode*, %struct.inode** %12, align 8
  %308 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %309 = call i32 @ocfs2_journal_dirty(%struct.inode* %307, %struct.buffer_head* %308)
  %310 = load %struct.inode*, %struct.inode** %6, align 8
  %311 = call i32 @inc_nlink(%struct.inode* %310)
  br label %312

312:                                              ; preds = %304, %274
  %313 = load %struct.inode*, %struct.inode** %12, align 8
  %314 = load %struct.inode*, %struct.inode** %16, align 8
  %315 = load %struct.inode*, %struct.inode** %6, align 8
  %316 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %317 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %318 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %319 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %320 = call i32 @ocfs2_init_acl(%struct.inode* %313, %struct.inode* %314, %struct.inode* %315, %struct.buffer_head* %316, %struct.buffer_head* %317, %struct.ocfs2_alloc_context* %318, %struct.ocfs2_alloc_context* %319)
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %312
  %324 = load i32, i32* %10, align 4
  %325 = call i32 @mlog_errno(i32 %324)
  br label %380

326:                                              ; preds = %312
  %327 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %326
  %331 = load %struct.inode*, %struct.inode** %12, align 8
  %332 = load %struct.inode*, %struct.inode** %16, align 8
  %333 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %334 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %335 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %336 = call i32 @ocfs2_init_security_set(%struct.inode* %331, %struct.inode* %332, %struct.buffer_head* %333, %struct.ocfs2_security_xattr_info* %23, %struct.ocfs2_alloc_context* %334, %struct.ocfs2_alloc_context* %335)
  store i32 %336, i32* %10, align 4
  %337 = load i32, i32* %10, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %330
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @mlog_errno(i32 %340)
  br label %380

342:                                              ; preds = %330
  br label %343

343:                                              ; preds = %342, %326
  %344 = load %struct.dentry*, %struct.dentry** %7, align 8
  %345 = load %struct.inode*, %struct.inode** %16, align 8
  %346 = load %struct.inode*, %struct.inode** %6, align 8
  %347 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %346)
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %344, %struct.inode* %345, i64 %349)
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* %10, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %343
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @mlog_errno(i32 %354)
  br label %380

356:                                              ; preds = %343
  %357 = load %struct.dentry*, %struct.dentry** %7, align 8
  %358 = getelementptr inbounds %struct.dentry, %struct.dentry* %357, i32 0, i32 0
  %359 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %358, align 8
  store %struct.ocfs2_dentry_lock* %359, %struct.ocfs2_dentry_lock** %28, align 8
  %360 = load %struct.inode*, %struct.inode** %12, align 8
  %361 = load %struct.dentry*, %struct.dentry** %7, align 8
  %362 = load %struct.inode*, %struct.inode** %16, align 8
  %363 = load %struct.inode*, %struct.inode** %16, align 8
  %364 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %363)
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %368 = call i32 @ocfs2_add_entry(%struct.inode* %360, %struct.dentry* %361, %struct.inode* %362, i64 %366, %struct.buffer_head* %367, %struct.ocfs2_dir_lookup_result* %25)
  store i32 %368, i32* %10, align 4
  %369 = load i32, i32* %10, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %356
  %372 = load i32, i32* %10, align 4
  %373 = call i32 @mlog_errno(i32 %372)
  br label %380

374:                                              ; preds = %356
  %375 = load %struct.inode*, %struct.inode** %16, align 8
  %376 = call i32 @insert_inode_hash(%struct.inode* %375)
  %377 = load %struct.dentry*, %struct.dentry** %7, align 8
  %378 = load %struct.inode*, %struct.inode** %16, align 8
  %379 = call i32 @d_instantiate(%struct.dentry* %377, %struct.inode* %378)
  store i32 0, i32* %10, align 4
  br label %380

380:                                              ; preds = %374, %371, %353, %339, %323, %301, %289, %271, %259, %248, %234, %219, %184, %173, %153, %145, %129, %113, %97, %86
  %381 = load i32, i32* %10, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load i32, i32* %24, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load %struct.inode*, %struct.inode** %16, align 8
  %388 = call i32 @dquot_free_inode(%struct.inode* %387)
  br label %389

389:                                              ; preds = %386, %383, %380
  %390 = load %struct.inode*, %struct.inode** %12, align 8
  %391 = icmp ne %struct.inode* %390, null
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %394 = load %struct.inode*, %struct.inode** %12, align 8
  %395 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %393, %struct.inode* %394)
  br label %396

396:                                              ; preds = %392, %389
  %397 = load %struct.inode*, %struct.inode** %6, align 8
  %398 = call i32 @ocfs2_inode_unlock(%struct.inode* %397, i32 1)
  %399 = load i32, i32* %27, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %396
  %402 = call i32 @ocfs2_unblock_signals(i32* %26)
  br label %403

403:                                              ; preds = %401, %396
  %404 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %405 = call i32 @brelse(%struct.buffer_head* %404)
  %406 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %407 = call i32 @brelse(%struct.buffer_head* %406)
  %408 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %23, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @kfree(i32 %409)
  %411 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %25)
  %412 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %413 = icmp ne %struct.ocfs2_alloc_context* %412, null
  br i1 %413, label %414, label %417

414:                                              ; preds = %403
  %415 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %416 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %415)
  br label %417

417:                                              ; preds = %414, %403
  %418 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %419 = icmp ne %struct.ocfs2_alloc_context* %418, null
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %422 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %421)
  br label %423

423:                                              ; preds = %420, %417
  %424 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %425 = icmp ne %struct.ocfs2_alloc_context* %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %428 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %427)
  br label %429

429:                                              ; preds = %426, %423
  %430 = load i32, i32* %10, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %454

432:                                              ; preds = %429
  %433 = load %struct.inode*, %struct.inode** %16, align 8
  %434 = icmp ne %struct.inode* %433, null
  br i1 %434, label %435, label %454

435:                                              ; preds = %432
  %436 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %28, align 8
  %437 = icmp ne %struct.ocfs2_dentry_lock* %436, null
  br i1 %437, label %438, label %443

438:                                              ; preds = %435
  %439 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %440 = load %struct.dentry*, %struct.dentry** %7, align 8
  %441 = load %struct.inode*, %struct.inode** %16, align 8
  %442 = call i32 @ocfs2_cleanup_add_entry_failure(%struct.ocfs2_super* %439, %struct.dentry* %440, %struct.inode* %441)
  br label %443

443:                                              ; preds = %438, %435
  %444 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %445 = load %struct.inode*, %struct.inode** %16, align 8
  %446 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %445)
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = or i32 %448, %444
  store i32 %449, i32* %447, align 8
  %450 = load %struct.inode*, %struct.inode** %16, align 8
  %451 = call i32 @clear_nlink(%struct.inode* %450)
  %452 = load %struct.inode*, %struct.inode** %16, align 8
  %453 = call i32 @iput(%struct.inode* %452)
  br label %454

454:                                              ; preds = %443, %432, %429
  %455 = load i32, i32* %10, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load i32, i32* %10, align 4
  %459 = call i32 @mlog_errno(i32 %458)
  br label %460

460:                                              ; preds = %457, %454
  %461 = load i32, i32* %10, align 4
  store i32 %461, i32* %5, align 4
  br label %462

462:                                              ; preds = %460, %73, %52
  %463 = load i32, i32* %5, align 4
  ret i32 %463
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trace_ocfs2_mknod(%struct.inode*, %struct.dentry*, i32, i32, i64, i64, i32) #2

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #2

declare dso_local i32 @dquot_initialize(%struct.inode*) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #2

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @ocfs2_link_max(%struct.ocfs2_super*) #2

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #2

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #2

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**) #2

declare dso_local %struct.inode* @ocfs2_get_init_inode(%struct.inode*, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @ocfs2_init_security_get(%struct.inode*, %struct.inode*, %struct.TYPE_3__*, %struct.ocfs2_security_xattr_info*) #2

declare dso_local i32 @ocfs2_calc_xattr_init(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_security_xattr_info*, i32*, i32*, i32*) #2

declare dso_local i32 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #2

declare dso_local i64 @ocfs2_supports_indexed_dirs(%struct.ocfs2_super*) #2

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #2

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #2

declare dso_local %struct.inode* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #2

declare dso_local i32 @ocfs2_mknod_credits(i32, i64, i32) #2

declare dso_local i32 @ocfs2_block_signals(i32*) #2

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #2

declare dso_local i32 @ocfs2_mknod_locked(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i64, %struct.buffer_head**, %struct.buffer_head*, %struct.inode*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_fill_new_dir(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_journal_access_di(%struct.inode*, i32, %struct.buffer_head*, i32) #2

declare dso_local i32 @INODE_CACHE(%struct.inode*) #2

declare dso_local i32 @ocfs2_add_links_count(%struct.ocfs2_dinode*, i32) #2

declare dso_local i32 @ocfs2_journal_dirty(%struct.inode*, %struct.buffer_head*) #2

declare dso_local i32 @inc_nlink(%struct.inode*) #2

declare dso_local i32 @ocfs2_init_acl(%struct.inode*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_init_security_set(%struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_security_xattr_info*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i64) #2

declare dso_local i32 @ocfs2_add_entry(%struct.inode*, %struct.dentry*, %struct.inode*, i64, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @insert_inode_hash(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @dquot_free_inode(%struct.inode*) #2

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, %struct.inode*) #2

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #2

declare dso_local i32 @ocfs2_unblock_signals(i32*) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_cleanup_add_entry_failure(%struct.ocfs2_super*, %struct.dentry*, %struct.inode*) #2

declare dso_local i32 @clear_nlink(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

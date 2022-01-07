; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_security_xattr_info = type { i32, i32 }
%struct.inode = type { i64, %struct.TYPE_5__*, i32*, i64, i32, %struct.super_block* }
%struct.TYPE_5__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.ocfs2_dentry_lock*, %struct.TYPE_7__ }
%struct.ocfs2_dentry_lock = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_8__ = type { i32, i64 }

@__const.ocfs2_symlink.si = private unnamed_addr constant %struct.ocfs2_security_xattr_info { i32 1, i32 0 }, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ocfs2_symlink_inode_operations = common dso_local global i32 0, align 4
@ocfs2_aops = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to extend file to %llu\0A\00", align 1
@ocfs2_fast_symlink_aops = common dso_local global i32 0, align 4
@OCFS2_INODE_SKIP_ORPHAN_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ocfs2_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.ocfs2_alloc_context*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  %22 = alloca %struct.ocfs2_alloc_context*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.ocfs2_security_xattr_info, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.ocfs2_dentry_lock*, align 8
  %32 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ocfs2_super* null, %struct.ocfs2_super** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %17, align 8
  store %struct.inode* null, %struct.inode** %19, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %21, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %33 = bitcast %struct.ocfs2_security_xattr_info* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.ocfs2_security_xattr_info* @__const.ocfs2_symlink.si to i8*), i64 8, i1 false)
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %34 = bitcast %struct.ocfs2_dir_lookup_result* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  store i32 0, i32* %30, align 4
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %31, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @trace_ocfs2_symlink_begin(%struct.inode* %35, %struct.dentry* %36, i8* %37, i32 %41, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @dquot_initialize(%struct.inode* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %423

54:                                               ; preds = %3
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 5
  %57 = load %struct.super_block*, %struct.super_block** %56, align 8
  store %struct.super_block* %57, %struct.super_block** %14, align 8
  %58 = load %struct.super_block*, %struct.super_block** %14, align 8
  %59 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %58)
  store %struct.ocfs2_super* %59, %struct.ocfs2_super** %12, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load %struct.super_block*, %struct.super_block** %14, align 8
  %64 = call i32 @ocfs2_calc_symlink_credits(%struct.super_block* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i32 @ocfs2_inode_lock(%struct.inode* %65, %struct.buffer_head** %16, i32 1)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %54
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %518

79:                                               ; preds = %54
  %80 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %83, %struct.ocfs2_dinode** %18, align 8
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %85 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %423

90:                                               ; preds = %79
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = load %struct.dentry*, %struct.dentry** %6, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %91, i32 %95, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %423

104:                                              ; preds = %90
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %108 = load %struct.dentry*, %struct.dentry** %6, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dentry*, %struct.dentry** %6, align 8
  %113 = getelementptr inbounds %struct.dentry, %struct.dentry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %105, %struct.inode* %106, %struct.buffer_head* %107, i32 %111, i32 %115, %struct.ocfs2_dir_lookup_result* %28)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %423

122:                                              ; preds = %104
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %124 = call i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %123, %struct.ocfs2_alloc_context** %20)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @ENOSPC, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  br label %135

135:                                              ; preds = %132, %127
  br label %423

136:                                              ; preds = %122
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = load i32, i32* @S_IFLNK, align 4
  %139 = load i32, i32* @S_IRWXUGO, align 4
  %140 = or i32 %138, %139
  %141 = call %struct.inode* @ocfs2_get_init_inode(%struct.inode* %137, i32 %140)
  store %struct.inode* %141, %struct.inode** %13, align 8
  %142 = load %struct.inode*, %struct.inode** %13, align 8
  %143 = call i64 @IS_ERR(%struct.inode* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load %struct.inode*, %struct.inode** %13, align 8
  %147 = call i32 @PTR_ERR(%struct.inode* %146)
  store i32 %147, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %13, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %423

150:                                              ; preds = %136
  %151 = load %struct.inode*, %struct.inode** %13, align 8
  %152 = load %struct.inode*, %struct.inode** %5, align 8
  %153 = load %struct.dentry*, %struct.dentry** %6, align 8
  %154 = getelementptr inbounds %struct.dentry, %struct.dentry* %153, i32 0, i32 1
  %155 = call i32 @ocfs2_init_security_get(%struct.inode* %151, %struct.inode* %152, %struct.TYPE_7__* %154, %struct.ocfs2_security_xattr_info* %25)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %150
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @EOPNOTSUPP, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 0
  store i32 0, i32* %164, align 4
  br label %168

165:                                              ; preds = %158
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %423

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168, %150
  %170 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load %struct.inode*, %struct.inode** %5, align 8
  %175 = call i32 @ocfs2_calc_security_init(%struct.inode* %174, %struct.ocfs2_security_xattr_info* %25, i32* %23, i32* %24, %struct.ocfs2_alloc_context** %22)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @mlog_errno(i32 %179)
  br label %423

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %169
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.super_block*, %struct.super_block** %14, align 8
  %185 = call i32 @ocfs2_fast_symlink_chars(%struct.super_block* %184)
  %186 = icmp sgt i32 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %23, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %23, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %192 = load i32, i32* %23, align 4
  %193 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %191, i32 %192, %struct.ocfs2_alloc_context** %21)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @ENOSPC, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp ne i32 %197, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @mlog_errno(i32 %202)
  br label %204

204:                                              ; preds = %201, %196
  br label %423

205:                                              ; preds = %190
  %206 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %24, align 4
  %209 = add nsw i32 %207, %208
  %210 = call %struct.inode* @ocfs2_start_trans(%struct.ocfs2_super* %206, i32 %209)
  store %struct.inode* %210, %struct.inode** %19, align 8
  %211 = load %struct.inode*, %struct.inode** %19, align 8
  %212 = call i64 @IS_ERR(%struct.inode* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %205
  %215 = load %struct.inode*, %struct.inode** %19, align 8
  %216 = call i32 @PTR_ERR(%struct.inode* %215)
  store i32 %216, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %19, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @mlog_errno(i32 %217)
  br label %423

219:                                              ; preds = %205
  %220 = call i32 @ocfs2_block_signals(i32* %29)
  store i32 1, i32* %30, align 4
  %221 = load %struct.inode*, %struct.inode** %13, align 8
  %222 = call i32 @dquot_alloc_inode(%struct.inode* %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  br label %423

226:                                              ; preds = %219
  store i32 1, i32* %27, align 4
  %227 = load %struct.inode*, %struct.inode** %5, align 8
  %228 = load %struct.dentry*, %struct.dentry** %6, align 8
  %229 = load %struct.dentry*, %struct.dentry** %6, align 8
  %230 = getelementptr inbounds %struct.dentry, %struct.dentry* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.dentry*, %struct.dentry** %6, align 8
  %234 = getelementptr inbounds %struct.dentry, %struct.dentry* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.inode*, %struct.inode** %5, align 8
  %238 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %237)
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.inode*, %struct.inode** %13, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @trace_ocfs2_symlink_create(%struct.inode* %227, %struct.dentry* %228, i32 %232, i32 %236, i64 %240, i32 %243)
  %245 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %246 = load %struct.inode*, %struct.inode** %5, align 8
  %247 = load %struct.inode*, %struct.inode** %13, align 8
  %248 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %249 = load %struct.inode*, %struct.inode** %19, align 8
  %250 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %251 = call i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %245, %struct.inode* %246, %struct.inode* %247, i32 0, %struct.buffer_head** %15, %struct.buffer_head* %248, %struct.inode* %249, %struct.ocfs2_alloc_context* %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %226
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @mlog_errno(i32 %255)
  br label %423

257:                                              ; preds = %226
  %258 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %259 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %261, %struct.ocfs2_dinode** %17, align 8
  %262 = load %struct.inode*, %struct.inode** %13, align 8
  %263 = getelementptr inbounds %struct.inode, %struct.inode* %262, i32 0, i32 3
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %11, align 4
  %266 = load %struct.inode*, %struct.inode** %13, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 2
  store i32* @ocfs2_symlink_inode_operations, i32** %267, align 8
  %268 = load %struct.inode*, %struct.inode** %13, align 8
  %269 = call i32 @inode_nohighmem(%struct.inode* %268)
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.super_block*, %struct.super_block** %14, align 8
  %272 = call i32 @ocfs2_fast_symlink_chars(%struct.super_block* %271)
  %273 = icmp sgt i32 %270, %272
  br i1 %273, label %274, label %325

274:                                              ; preds = %257
  store i32 0, i32* %32, align 4
  %275 = load %struct.inode*, %struct.inode** %13, align 8
  %276 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %277 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @ocfs2_clusters_to_bytes(i32 %278, i32 1)
  %280 = call i32 @dquot_alloc_space_nodirty(%struct.inode* %275, i32 %279)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  br label %423

284:                                              ; preds = %274
  store i32 1, i32* %26, align 4
  %285 = load %struct.inode*, %struct.inode** %13, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 1
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  store i32* @ocfs2_aops, i32** %288, align 8
  %289 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %290 = load %struct.inode*, %struct.inode** %13, align 8
  %291 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %292 = load %struct.inode*, %struct.inode** %19, align 8
  %293 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %294 = call i32 @ocfs2_add_inode_data(%struct.ocfs2_super* %289, %struct.inode* %290, i32* %32, i32 1, i32 0, %struct.buffer_head* %291, %struct.inode* %292, %struct.ocfs2_alloc_context* %293, i32* null, i32* null)
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* %8, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %317

297:                                              ; preds = %284
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* @ENOSPC, align 4
  %300 = sub nsw i32 0, %299
  %301 = icmp ne i32 %298, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %297
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* @EINTR, align 4
  %305 = sub nsw i32 0, %304
  %306 = icmp ne i32 %303, %305
  br i1 %306, label %307, label %316

307:                                              ; preds = %302
  %308 = load i32, i32* @ML_ERROR, align 4
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = call i32 @mlog(i32 %308, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %310)
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @mlog_errno(i32 %312)
  %314 = load i32, i32* @ENOSPC, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %8, align 4
  br label %316

316:                                              ; preds = %307, %302, %297
  br label %423

317:                                              ; preds = %284
  %318 = load %struct.inode*, %struct.inode** %13, align 8
  %319 = load i32, i32* %11, align 4
  %320 = call i32 @i_size_write(%struct.inode* %318, i32 %319)
  %321 = load %struct.inode*, %struct.inode** %13, align 8
  %322 = call i64 @ocfs2_inode_sector_count(%struct.inode* %321)
  %323 = load %struct.inode*, %struct.inode** %13, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 0
  store i64 %322, i64* %324, align 8
  br label %343

325:                                              ; preds = %257
  %326 = load %struct.inode*, %struct.inode** %13, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 1
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  store i32* @ocfs2_fast_symlink_aops, i32** %329, align 8
  %330 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %331 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = inttoptr i64 %333 to i8*
  %335 = load i8*, i8** %7, align 8
  %336 = load i32, i32* %9, align 4
  %337 = call i32 @memcpy(i8* %334, i8* %335, i32 %336)
  %338 = load %struct.inode*, %struct.inode** %13, align 8
  %339 = load i32, i32* %11, align 4
  %340 = call i32 @i_size_write(%struct.inode* %338, i32 %339)
  %341 = load %struct.inode*, %struct.inode** %13, align 8
  %342 = getelementptr inbounds %struct.inode, %struct.inode* %341, i32 0, i32 0
  store i64 0, i64* %342, align 8
  br label %343

343:                                              ; preds = %325, %317
  %344 = load %struct.inode*, %struct.inode** %19, align 8
  %345 = load %struct.inode*, %struct.inode** %13, align 8
  %346 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %347 = call i32 @ocfs2_mark_inode_dirty(%struct.inode* %344, %struct.inode* %345, %struct.buffer_head* %346)
  store i32 %347, i32* %8, align 4
  %348 = load i32, i32* %8, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %343
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @mlog_errno(i32 %351)
  br label %423

353:                                              ; preds = %343
  %354 = load %struct.inode*, %struct.inode** %13, align 8
  %355 = call i32 @ocfs2_inode_is_fast_symlink(%struct.inode* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %369, label %357

357:                                              ; preds = %353
  %358 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %359 = load %struct.inode*, %struct.inode** %19, align 8
  %360 = load %struct.inode*, %struct.inode** %13, align 8
  %361 = load i8*, i8** %7, align 8
  %362 = call i32 @ocfs2_create_symlink_data(%struct.ocfs2_super* %358, %struct.inode* %359, %struct.inode* %360, i8* %361)
  store i32 %362, i32* %8, align 4
  %363 = load i32, i32* %8, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %357
  %366 = load i32, i32* %8, align 4
  %367 = call i32 @mlog_errno(i32 %366)
  br label %423

368:                                              ; preds = %357
  br label %369

369:                                              ; preds = %368, %353
  %370 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %386

373:                                              ; preds = %369
  %374 = load %struct.inode*, %struct.inode** %19, align 8
  %375 = load %struct.inode*, %struct.inode** %13, align 8
  %376 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %377 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %378 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %379 = call i32 @ocfs2_init_security_set(%struct.inode* %374, %struct.inode* %375, %struct.buffer_head* %376, %struct.ocfs2_security_xattr_info* %25, %struct.ocfs2_alloc_context* %377, %struct.ocfs2_alloc_context* %378)
  store i32 %379, i32* %8, align 4
  %380 = load i32, i32* %8, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %373
  %383 = load i32, i32* %8, align 4
  %384 = call i32 @mlog_errno(i32 %383)
  br label %423

385:                                              ; preds = %373
  br label %386

386:                                              ; preds = %385, %369
  %387 = load %struct.dentry*, %struct.dentry** %6, align 8
  %388 = load %struct.inode*, %struct.inode** %13, align 8
  %389 = load %struct.inode*, %struct.inode** %5, align 8
  %390 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %389)
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %387, %struct.inode* %388, i64 %392)
  store i32 %393, i32* %8, align 4
  %394 = load i32, i32* %8, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %386
  %397 = load i32, i32* %8, align 4
  %398 = call i32 @mlog_errno(i32 %397)
  br label %423

399:                                              ; preds = %386
  %400 = load %struct.dentry*, %struct.dentry** %6, align 8
  %401 = getelementptr inbounds %struct.dentry, %struct.dentry* %400, i32 0, i32 0
  %402 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %401, align 8
  store %struct.ocfs2_dentry_lock* %402, %struct.ocfs2_dentry_lock** %31, align 8
  %403 = load %struct.inode*, %struct.inode** %19, align 8
  %404 = load %struct.dentry*, %struct.dentry** %6, align 8
  %405 = load %struct.inode*, %struct.inode** %13, align 8
  %406 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %407 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @le64_to_cpu(i32 %408)
  %410 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %411 = call i32 @ocfs2_add_entry(%struct.inode* %403, %struct.dentry* %404, %struct.inode* %405, i32 %409, %struct.buffer_head* %410, %struct.ocfs2_dir_lookup_result* %28)
  store i32 %411, i32* %8, align 4
  %412 = load i32, i32* %8, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %399
  %415 = load i32, i32* %8, align 4
  %416 = call i32 @mlog_errno(i32 %415)
  br label %423

417:                                              ; preds = %399
  %418 = load %struct.inode*, %struct.inode** %13, align 8
  %419 = call i32 @insert_inode_hash(%struct.inode* %418)
  %420 = load %struct.dentry*, %struct.dentry** %6, align 8
  %421 = load %struct.inode*, %struct.inode** %13, align 8
  %422 = call i32 @d_instantiate(%struct.dentry* %420, %struct.inode* %421)
  br label %423

423:                                              ; preds = %417, %414, %396, %382, %365, %350, %316, %283, %254, %225, %214, %204, %178, %165, %145, %135, %119, %103, %87, %51
  %424 = load i32, i32* %8, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %436

426:                                              ; preds = %423
  %427 = load i32, i32* %26, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %436

429:                                              ; preds = %426
  %430 = load %struct.inode*, %struct.inode** %13, align 8
  %431 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %432 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @ocfs2_clusters_to_bytes(i32 %433, i32 1)
  %435 = call i32 @dquot_free_space_nodirty(%struct.inode* %430, i32 %434)
  br label %436

436:                                              ; preds = %429, %426, %423
  %437 = load i32, i32* %8, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %436
  %440 = load i32, i32* %27, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %439
  %443 = load %struct.inode*, %struct.inode** %13, align 8
  %444 = call i32 @dquot_free_inode(%struct.inode* %443)
  br label %445

445:                                              ; preds = %442, %439, %436
  %446 = load %struct.inode*, %struct.inode** %19, align 8
  %447 = icmp ne %struct.inode* %446, null
  br i1 %447, label %448, label %452

448:                                              ; preds = %445
  %449 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %450 = load %struct.inode*, %struct.inode** %19, align 8
  %451 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %449, %struct.inode* %450)
  br label %452

452:                                              ; preds = %448, %445
  %453 = load %struct.inode*, %struct.inode** %5, align 8
  %454 = call i32 @ocfs2_inode_unlock(%struct.inode* %453, i32 1)
  %455 = load i32, i32* %30, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %452
  %458 = call i32 @ocfs2_unblock_signals(i32* %29)
  br label %459

459:                                              ; preds = %457, %452
  %460 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %461 = call i32 @brelse(%struct.buffer_head* %460)
  %462 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %463 = call i32 @brelse(%struct.buffer_head* %462)
  %464 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %25, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @kfree(i32 %465)
  %467 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %28)
  %468 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %469 = icmp ne %struct.ocfs2_alloc_context* %468, null
  br i1 %469, label %470, label %473

470:                                              ; preds = %459
  %471 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  %472 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %471)
  br label %473

473:                                              ; preds = %470, %459
  %474 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %475 = icmp ne %struct.ocfs2_alloc_context* %474, null
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  %478 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %477)
  br label %479

479:                                              ; preds = %476, %473
  %480 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %481 = icmp ne %struct.ocfs2_alloc_context* %480, null
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %484 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %483)
  br label %485

485:                                              ; preds = %482, %479
  %486 = load i32, i32* %8, align 4
  %487 = icmp slt i32 %486, 0
  br i1 %487, label %488, label %510

488:                                              ; preds = %485
  %489 = load %struct.inode*, %struct.inode** %13, align 8
  %490 = icmp ne %struct.inode* %489, null
  br i1 %490, label %491, label %510

491:                                              ; preds = %488
  %492 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %31, align 8
  %493 = icmp ne %struct.ocfs2_dentry_lock* %492, null
  br i1 %493, label %494, label %499

494:                                              ; preds = %491
  %495 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %496 = load %struct.dentry*, %struct.dentry** %6, align 8
  %497 = load %struct.inode*, %struct.inode** %13, align 8
  %498 = call i32 @ocfs2_cleanup_add_entry_failure(%struct.ocfs2_super* %495, %struct.dentry* %496, %struct.inode* %497)
  br label %499

499:                                              ; preds = %494, %491
  %500 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %501 = load %struct.inode*, %struct.inode** %13, align 8
  %502 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %501)
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = or i32 %504, %500
  store i32 %505, i32* %503, align 8
  %506 = load %struct.inode*, %struct.inode** %13, align 8
  %507 = call i32 @clear_nlink(%struct.inode* %506)
  %508 = load %struct.inode*, %struct.inode** %13, align 8
  %509 = call i32 @iput(%struct.inode* %508)
  br label %510

510:                                              ; preds = %499, %488, %485
  %511 = load i32, i32* %8, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %510
  %514 = load i32, i32* %8, align 4
  %515 = call i32 @mlog_errno(i32 %514)
  br label %516

516:                                              ; preds = %513, %510
  %517 = load i32, i32* %8, align 4
  store i32 %517, i32* %4, align 4
  br label %518

518:                                              ; preds = %516, %77
  %519 = load i32, i32* %4, align 4
  ret i32 %519
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trace_ocfs2_symlink_begin(%struct.inode*, %struct.dentry*, i8*, i32, i32) #2

declare dso_local i32 @dquot_initialize(%struct.inode*) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ocfs2_calc_symlink_credits(%struct.super_block*) #2

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #2

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #2

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #2

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**) #2

declare dso_local %struct.inode* @ocfs2_get_init_inode(%struct.inode*, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @ocfs2_init_security_get(%struct.inode*, %struct.inode*, %struct.TYPE_7__*, %struct.ocfs2_security_xattr_info*) #2

declare dso_local i32 @ocfs2_calc_security_init(%struct.inode*, %struct.ocfs2_security_xattr_info*, i32*, i32*, %struct.ocfs2_alloc_context**) #2

declare dso_local i32 @ocfs2_fast_symlink_chars(%struct.super_block*) #2

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #2

declare dso_local %struct.inode* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #2

declare dso_local i32 @ocfs2_block_signals(i32*) #2

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #2

declare dso_local i32 @trace_ocfs2_symlink_create(%struct.inode*, %struct.dentry*, i32, i32, i64, i32) #2

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #2

declare dso_local i32 @ocfs2_mknod_locked(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i32, %struct.buffer_head**, %struct.buffer_head*, %struct.inode*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @inode_nohighmem(%struct.inode*) #2

declare dso_local i32 @dquot_alloc_space_nodirty(%struct.inode*, i32) #2

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #2

declare dso_local i32 @ocfs2_add_inode_data(%struct.ocfs2_super*, %struct.inode*, i32*, i32, i32, %struct.buffer_head*, %struct.inode*, %struct.ocfs2_alloc_context*, i32*, i32*) #2

declare dso_local i32 @mlog(i32, i8*, i64) #2

declare dso_local i32 @i_size_write(%struct.inode*, i32) #2

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @ocfs2_mark_inode_dirty(%struct.inode*, %struct.inode*, %struct.buffer_head*) #2

declare dso_local i32 @ocfs2_inode_is_fast_symlink(%struct.inode*) #2

declare dso_local i32 @ocfs2_create_symlink_data(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i8*) #2

declare dso_local i32 @ocfs2_init_security_set(%struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_security_xattr_info*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*) #2

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i64) #2

declare dso_local i32 @ocfs2_add_entry(%struct.inode*, %struct.dentry*, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @insert_inode_hash(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i32) #2

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

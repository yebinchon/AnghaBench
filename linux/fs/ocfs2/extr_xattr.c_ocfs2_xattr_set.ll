; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_super = type { %struct.inode* }
%struct.ocfs2_xattr_set_ctxt = type { i32, i64, i64, i32, i32*, i32*, i32* }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i8*, i8*, i64, i32 }
%struct.ocfs2_xattr_search = type { i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.TYPE_2__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_set(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ocfs2_super*, align 8
  %22 = alloca %struct.inode*, align 8
  %23 = alloca %struct.ocfs2_xattr_set_ctxt, align 8
  %24 = alloca %struct.ocfs2_refcount_tree*, align 8
  %25 = alloca %struct.ocfs2_lock_holder, align 4
  %26 = alloca %struct.ocfs2_xattr_info, align 8
  %27 = alloca %struct.ocfs2_xattr_search, align 8
  %28 = alloca %struct.ocfs2_xattr_search, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ocfs2_super* @OCFS2_SB(i32 %31)
  store %struct.ocfs2_super* %32, %struct.ocfs2_super** %21, align 8
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  store %struct.inode* %35, %struct.inode** %22, align 8
  %36 = bitcast %struct.ocfs2_xattr_set_ctxt* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 56, i1 false)
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %24, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 1
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %39, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 2
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %41, align 8
  %43 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 3
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %45, align 8
  %48 = bitcast %struct.ocfs2_xattr_search* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %27, i32 0, i32 0
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %49, align 8
  %52 = bitcast %struct.ocfs2_xattr_search* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 24, i1 false)
  %53 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 0
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %57 = call i32 @ocfs2_supports_xattr(%struct.ocfs2_super* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %6
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %299

62:                                               ; preds = %6
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i32 @ocfs2_xattr_bucket_new(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @mlog_errno(i32 %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %299

75:                                               ; preds = %62
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call i32 @ocfs2_inode_lock_tracker(%struct.inode* %76, %struct.buffer_head** %14, i32 1, %struct.ocfs2_lock_holder* %25)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %289

84:                                               ; preds = %75
  %85 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %86 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 3
  store %struct.buffer_head* %85, %struct.buffer_head** %86, align 8
  %87 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %27, i32 0, i32 3
  store %struct.buffer_head* %85, %struct.buffer_head** %87, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %91, %struct.ocfs2_dinode** %15, align 8
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @down_write(i32* %94)
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @ocfs2_xattr_ibody_find(%struct.inode* %96, i32 %97, i8* %98, %struct.ocfs2_xattr_search* %27)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %84
  br label %258

103:                                              ; preds = %84
  %104 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %27, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @ocfs2_xattr_block_find(%struct.inode* %108, i32 %109, i8* %110, %struct.ocfs2_xattr_search* %28)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %258

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %103
  %117 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %27, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i32, i32* @ENODATA, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @XATTR_REPLACE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %258

132:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  br label %258

136:                                              ; preds = %132
  br label %146

137:                                              ; preds = %120, %116
  %138 = load i32, i32* @EEXIST, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @XATTR_CREATE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %258

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %136
  %147 = load %struct.inode*, %struct.inode** %8, align 8
  %148 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %27, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %154, %150
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %161 = call i32 @ocfs2_prepare_refcount_xattr(%struct.inode* %159, %struct.ocfs2_dinode* %160, %struct.ocfs2_xattr_info* %26, %struct.ocfs2_xattr_search* %27, %struct.ocfs2_xattr_search* %28, %struct.ocfs2_refcount_tree** %24, i32* %19, i32* %20)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @mlog_errno(i32 %165)
  br label %258

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %154, %146
  %169 = load %struct.inode*, %struct.inode** %22, align 8
  %170 = call i32 @inode_lock(%struct.inode* %169)
  %171 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %172 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %168
  %175 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %176 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %175)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.inode*, %struct.inode** %22, align 8
  %181 = call i32 @inode_unlock(%struct.inode* %180)
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @mlog_errno(i32 %182)
  br label %258

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %168
  %186 = load %struct.inode*, %struct.inode** %22, align 8
  %187 = call i32 @inode_unlock(%struct.inode* %186)
  %188 = load %struct.inode*, %struct.inode** %8, align 8
  %189 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @ocfs2_init_xattr_set_ctxt(%struct.inode* %188, %struct.ocfs2_dinode* %189, %struct.ocfs2_xattr_info* %26, %struct.ocfs2_xattr_search* %27, %struct.ocfs2_xattr_search* %28, %struct.ocfs2_xattr_set_ctxt* %23, i32 %190, i32* %17)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @mlog_errno(i32 %195)
  br label %258

197:                                              ; preds = %185
  %198 = load i64, i64* @OCFS2_INODE_UPDATE_CREDITS, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %17, align 4
  %203 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %204, %205
  %207 = call i32 @ocfs2_start_trans(%struct.ocfs2_super* %203, i32 %206)
  %208 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 3
  store i32 %207, i32* %208, align 8
  %209 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @IS_ERR(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %197
  %214 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @PTR_ERR(i32 %215)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @mlog_errno(i32 %217)
  br label %231

219:                                              ; preds = %197
  %220 = load %struct.inode*, %struct.inode** %8, align 8
  %221 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %222 = call i32 @__ocfs2_xattr_set_handle(%struct.inode* %220, %struct.ocfs2_dinode* %221, %struct.ocfs2_xattr_info* %26, %struct.ocfs2_xattr_search* %27, %struct.ocfs2_xattr_search* %28, %struct.ocfs2_xattr_set_ctxt* %23)
  store i32 %222, i32* %16, align 4
  %223 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.inode*, %struct.inode** %8, align 8
  %226 = call i32 @ocfs2_update_inode_fsync_trans(i32 %224, %struct.inode* %225, i32 0)
  %227 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %228 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %227, i32 %229)
  br label %231

231:                                              ; preds = %219, %213
  %232 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @ocfs2_free_alloc_context(i64 %237)
  br label %239

239:                                              ; preds = %235, %231
  %240 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @ocfs2_free_alloc_context(i64 %245)
  br label %247

247:                                              ; preds = %243, %239
  %248 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 0
  %249 = call i64 @ocfs2_dealloc_has_cluster(i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %253 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %252, i32 1)
  br label %254

254:                                              ; preds = %251, %247
  %255 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %256 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %23, i32 0, i32 0
  %257 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %255, i32* %256)
  br label %258

258:                                              ; preds = %254, %194, %179, %164, %144, %135, %131, %114, %102
  %259 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %24, align 8
  %260 = icmp ne %struct.ocfs2_refcount_tree* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load %struct.ocfs2_super*, %struct.ocfs2_super** %21, align 8
  %263 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %24, align 8
  %264 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %262, %struct.ocfs2_refcount_tree* %263, i32 1)
  br label %265

265:                                              ; preds = %261, %258
  %266 = load %struct.inode*, %struct.inode** %8, align 8
  %267 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %266)
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = call i32 @up_write(i32* %268)
  %270 = load i8*, i8** %11, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %285, label %272

272:                                              ; preds = %265
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %272
  %276 = load %struct.inode*, %struct.inode** %8, align 8
  %277 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %278 = call i32 @ocfs2_try_remove_refcount_tree(%struct.inode* %276, %struct.buffer_head* %277)
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %16, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @mlog_errno(i32 %282)
  br label %284

284:                                              ; preds = %281, %275
  br label %285

285:                                              ; preds = %284, %272, %265
  %286 = load %struct.inode*, %struct.inode** %8, align 8
  %287 = load i32, i32* %18, align 4
  %288 = call i32 @ocfs2_inode_unlock_tracker(%struct.inode* %286, i32 1, %struct.ocfs2_lock_holder* %25, i32 %287)
  br label %289

289:                                              ; preds = %285, %80
  %290 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %291 = call i32 @brelse(%struct.buffer_head* %290)
  %292 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 2
  %293 = load %struct.buffer_head*, %struct.buffer_head** %292, align 8
  %294 = call i32 @brelse(%struct.buffer_head* %293)
  %295 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %28, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @ocfs2_xattr_bucket_free(i32 %296)
  %298 = load i32, i32* %16, align 4
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %289, %69, %59
  %300 = load i32, i32* %7, align 4
  ret i32 %300
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ocfs2_supports_xattr(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode*, %struct.buffer_head**, i32, %struct.ocfs2_lock_holder*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_ibody_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_block_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i64 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_prepare_refcount_xattr(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_refcount_tree**, i32*, i32*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_xattr_set_ctxt(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*, i32, i32*) #1

declare dso_local i32 @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @__ocfs2_xattr_set_handle(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(i64) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_try_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock_tracker(%struct.inode*, i32, %struct.ocfs2_lock_holder*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

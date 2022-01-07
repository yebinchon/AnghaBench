; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_3__, %struct.dentry* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_4__ = type { i64, i32 }

@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@OI_LS_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ocfs2_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %20 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call %struct.inode* @d_inode(%struct.dentry* %22)
  store %struct.inode* %23, %struct.inode** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %11, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i32* null, i32** %16, align 8
  %28 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = bitcast %struct.ocfs2_dir_lookup_result* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 8, i1 false)
  %34 = bitcast %struct.ocfs2_dir_lookup_result* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @trace_ocfs2_unlink(%struct.inode* %35, %struct.dentry* %36, i32 %40, i32 %44, i64 %48, i64 %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @dquot_initialize(%struct.inode* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %2
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %354

62:                                               ; preds = %2
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 1
  %65 = load %struct.dentry*, %struct.dentry** %64, align 8
  %66 = call %struct.inode* @d_inode(%struct.dentry* %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = icmp ne %struct.inode* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %73 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %72, i32 0, i32 1
  %74 = load %struct.inode*, %struct.inode** %73, align 8
  %75 = icmp eq %struct.inode* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %354

79:                                               ; preds = %62
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load i32, i32* @OI_LS_PARENT, align 4
  %82 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %80, %struct.buffer_head** %15, i32 1, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %354

95:                                               ; preds = %79
  %96 = load %struct.dentry*, %struct.dentry** %5, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dentry*, %struct.dentry** %5, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call i32 @ocfs2_find_files_on_disk(i32 %99, i32 %103, i64* %12, %struct.inode* %104, %struct.ocfs2_dir_lookup_result* %19)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %95
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ENOENT, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @mlog_errno(i32 %114)
  br label %116

116:                                              ; preds = %113, %108
  br label %305

117:                                              ; preds = %95
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load i32, i32* @ENOENT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @trace_ocfs2_unlink_noent(i64 %130, i64 %131, i32 %135)
  br label %305

137:                                              ; preds = %117
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = call i32 @ocfs2_inode_lock(%struct.inode* %138, %struct.buffer_head** %14, i32 1)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @ENOENT, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %150

150:                                              ; preds = %147, %142
  br label %305

151:                                              ; preds = %137
  store i32 1, i32* %7, align 4
  %152 = load %struct.inode*, %struct.inode** %9, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @S_ISDIR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load %struct.inode*, %struct.inode** %9, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 2
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = call i32 @ocfs2_empty_dir(%struct.inode* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162, %157
  %167 = load i32, i32* @ENOTEMPTY, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %305

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.dentry*, %struct.dentry** %5, align 8
  %172 = call i32 @ocfs2_remote_dentry_delete(%struct.dentry* %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @mlog_errno(i32 %176)
  br label %305

178:                                              ; preds = %170
  %179 = load %struct.inode*, %struct.inode** %9, align 8
  %180 = call i64 @ocfs2_inode_is_unlinkable(%struct.inode* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %184 = load %struct.inode*, %struct.inode** %9, align 8
  %185 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %184)
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super* %183, %struct.inode** %10, i64 %187, i8* %32, %struct.ocfs2_dir_lookup_result* %20, i32 0)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @mlog_errno(i32 %192)
  br label %305

194:                                              ; preds = %182
  store i32 1, i32* %8, align 4
  br label %195

195:                                              ; preds = %194, %178
  %196 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %197 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %198 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ocfs2_unlink_credits(i32 %199)
  %201 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %196, i32 %200)
  store i32* %201, i32** %16, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = call i64 @IS_ERR(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %195
  %206 = load i32*, i32** %16, align 8
  %207 = call i32 @PTR_ERR(i32* %206)
  store i32 %207, i32* %6, align 4
  store i32* null, i32** %16, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @mlog_errno(i32 %208)
  br label %305

210:                                              ; preds = %195
  %211 = load i32*, i32** %16, align 8
  %212 = load %struct.inode*, %struct.inode** %9, align 8
  %213 = call i32 @INODE_CACHE(%struct.inode* %212)
  %214 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %215 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %216 = call i32 @ocfs2_journal_access_di(i32* %211, i32 %213, %struct.buffer_head* %214, i32 %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @mlog_errno(i32 %220)
  br label %305

222:                                              ; preds = %210
  %223 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %224 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %226, %struct.ocfs2_dinode** %13, align 8
  %227 = load i32*, i32** %16, align 8
  %228 = load %struct.inode*, %struct.inode** %4, align 8
  %229 = call i32 @ocfs2_delete_entry(i32* %227, %struct.inode* %228, %struct.ocfs2_dir_lookup_result* %19)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %222
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @mlog_errno(i32 %233)
  br label %305

235:                                              ; preds = %222
  %236 = load %struct.inode*, %struct.inode** %9, align 8
  %237 = getelementptr inbounds %struct.inode, %struct.inode* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @S_ISDIR(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load %struct.inode*, %struct.inode** %9, align 8
  %243 = call i32 @drop_nlink(%struct.inode* %242)
  br label %244

244:                                              ; preds = %241, %235
  %245 = load %struct.inode*, %struct.inode** %9, align 8
  %246 = call i32 @drop_nlink(%struct.inode* %245)
  %247 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %248 = load %struct.inode*, %struct.inode** %9, align 8
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ocfs2_set_links_count(%struct.ocfs2_dinode* %247, i32 %250)
  %252 = load i32*, i32** %16, align 8
  %253 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %254 = call i32 @ocfs2_journal_dirty(i32* %252, %struct.buffer_head* %253)
  %255 = load %struct.inode*, %struct.inode** %4, align 8
  %256 = call i32 @current_time(%struct.inode* %255)
  %257 = load %struct.inode*, %struct.inode** %4, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 4
  %259 = load %struct.inode*, %struct.inode** %4, align 8
  %260 = getelementptr inbounds %struct.inode, %struct.inode* %259, i32 0, i32 3
  store i32 %256, i32* %260, align 4
  %261 = load %struct.inode*, %struct.inode** %9, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @S_ISDIR(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %244
  %267 = load %struct.inode*, %struct.inode** %4, align 8
  %268 = call i32 @drop_nlink(%struct.inode* %267)
  br label %269

269:                                              ; preds = %266, %244
  %270 = load i32*, i32** %16, align 8
  %271 = load %struct.inode*, %struct.inode** %4, align 8
  %272 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %273 = call i32 @ocfs2_mark_inode_dirty(i32* %270, %struct.inode* %271, %struct.buffer_head* %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %269
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @mlog_errno(i32 %277)
  %279 = load %struct.inode*, %struct.inode** %9, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @S_ISDIR(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = load %struct.inode*, %struct.inode** %4, align 8
  %286 = call i32 @inc_nlink(%struct.inode* %285)
  br label %287

287:                                              ; preds = %284, %276
  br label %305

288:                                              ; preds = %269
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %288
  %292 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %293 = load i32*, i32** %16, align 8
  %294 = load %struct.inode*, %struct.inode** %9, align 8
  %295 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %296 = load %struct.inode*, %struct.inode** %10, align 8
  %297 = call i32 @ocfs2_orphan_add(%struct.ocfs2_super* %292, i32* %293, %struct.inode* %294, %struct.buffer_head* %295, i8* %32, %struct.ocfs2_dir_lookup_result* %20, %struct.inode* %296, i32 0)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %291
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @mlog_errno(i32 %301)
  br label %303

303:                                              ; preds = %300, %291
  br label %304

304:                                              ; preds = %303, %288
  br label %305

305:                                              ; preds = %304, %287, %232, %219, %205, %191, %175, %166, %150, %124, %116
  %306 = load i32*, i32** %16, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %310 = load i32*, i32** %16, align 8
  %311 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %309, i32* %310)
  br label %312

312:                                              ; preds = %308, %305
  %313 = load %struct.inode*, %struct.inode** %10, align 8
  %314 = icmp ne %struct.inode* %313, null
  br i1 %314, label %315, label %322

315:                                              ; preds = %312
  %316 = load %struct.inode*, %struct.inode** %10, align 8
  %317 = call i32 @ocfs2_inode_unlock(%struct.inode* %316, i32 1)
  %318 = load %struct.inode*, %struct.inode** %10, align 8
  %319 = call i32 @inode_unlock(%struct.inode* %318)
  %320 = load %struct.inode*, %struct.inode** %10, align 8
  %321 = call i32 @iput(%struct.inode* %320)
  br label %322

322:                                              ; preds = %315, %312
  %323 = load i32, i32* %7, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load %struct.inode*, %struct.inode** %9, align 8
  %327 = call i32 @ocfs2_inode_unlock(%struct.inode* %326, i32 1)
  br label %328

328:                                              ; preds = %325, %322
  %329 = load %struct.inode*, %struct.inode** %4, align 8
  %330 = call i32 @ocfs2_inode_unlock(%struct.inode* %329, i32 1)
  %331 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %332 = call i32 @brelse(%struct.buffer_head* %331)
  %333 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %334 = call i32 @brelse(%struct.buffer_head* %333)
  %335 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %20)
  %336 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %19)
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %328
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @ENOTEMPTY, align 4
  %342 = sub nsw i32 0, %341
  %343 = icmp ne i32 %340, %342
  br i1 %343, label %344, label %352

344:                                              ; preds = %339
  %345 = load i32, i32* %6, align 4
  %346 = load i32, i32* @ENOENT, align 4
  %347 = sub nsw i32 0, %346
  %348 = icmp ne i32 %345, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @mlog_errno(i32 %350)
  br label %352

352:                                              ; preds = %349, %344, %339, %328
  %353 = load i32, i32* %6, align 4
  store i32 %353, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %354

354:                                              ; preds = %352, %93, %76, %58
  %355 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %355)
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @trace_ocfs2_unlink(%struct.inode*, %struct.dentry*, i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @ocfs2_find_files_on_disk(i32, i32, i64*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @trace_ocfs2_unlink_noent(i64, i64, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_empty_dir(%struct.inode*) #1

declare dso_local i32 @ocfs2_remote_dentry_delete(%struct.dentry*) #1

declare dso_local i64 @ocfs2_inode_is_unlinkable(%struct.inode*) #1

declare dso_local i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super*, %struct.inode**, i64, i8*, %struct.ocfs2_dir_lookup_result*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_unlink_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_delete_entry(i32*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_orphan_add(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, i8*, %struct.ocfs2_dir_lookup_result*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

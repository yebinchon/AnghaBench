; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_cross_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_cross_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i8*, i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dir_entry = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@F2FS_LINK_MAX = common dso_local global i64 0, align 8
@FSYNC_MODE_STRICT = common dso_local global i64 0, align 8
@TRANS_DIR_INO = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @f2fs_cross_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_cross_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.f2fs_dir_entry*, align 8
  %18 = alloca %struct.f2fs_dir_entry*, align 8
  %19 = alloca %struct.f2fs_dir_entry*, align 8
  %20 = alloca %struct.f2fs_dir_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_3__, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %25)
  store %struct.f2fs_sb_info* %26, %struct.f2fs_sb_info** %10, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call %struct.inode* @d_inode(%struct.dentry* %27)
  store %struct.inode* %28, %struct.inode** %11, align 8
  %29 = load %struct.dentry*, %struct.dentry** %9, align 8
  %30 = call %struct.inode* @d_inode(%struct.dentry* %29)
  store %struct.inode* %30, %struct.inode** %12, align 8
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %17, align 8
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %32 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %371

38:                                               ; preds = %4
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %40 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %371

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %48 = call i64 @is_inode_flag_set(%struct.inode* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 1
  %57 = load %struct.inode*, %struct.inode** %56, align 8
  %58 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @projid_eq(i32 %54, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %50, %45
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %66 = call i64 @is_inode_flag_set(%struct.inode* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dentry*, %struct.dentry** %9, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 1
  %75 = load %struct.inode*, %struct.inode** %74, align 8
  %76 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @projid_eq(i32 %72, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %68, %50
  %82 = load i32, i32* @EXDEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %371

84:                                               ; preds = %68, %63
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = call i32 @dquot_initialize(%struct.inode* %85)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %369

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i32 @dquot_initialize(%struct.inode* %91)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %369

96:                                               ; preds = %90
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %23, align 4
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = load %struct.dentry*, %struct.dentry** %7, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 0
  %102 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %99, i32* %101, %struct.page** %15)
  store %struct.f2fs_dir_entry* %102, %struct.f2fs_dir_entry** %19, align 8
  %103 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %104 = icmp ne %struct.f2fs_dir_entry* %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %96
  %106 = load %struct.page*, %struct.page** %15, align 8
  %107 = call i64 @IS_ERR(%struct.page* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.page*, %struct.page** %15, align 8
  %111 = call i32 @PTR_ERR(%struct.page* %110)
  store i32 %111, i32* %23, align 4
  br label %112

112:                                              ; preds = %109, %105
  br label %369

113:                                              ; preds = %96
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = load %struct.dentry*, %struct.dentry** %9, align 8
  %116 = getelementptr inbounds %struct.dentry, %struct.dentry* %115, i32 0, i32 0
  %117 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %114, i32* %116, %struct.page** %16)
  store %struct.f2fs_dir_entry* %117, %struct.f2fs_dir_entry** %20, align 8
  %118 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %20, align 8
  %119 = icmp ne %struct.f2fs_dir_entry* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %113
  %121 = load %struct.page*, %struct.page** %16, align 8
  %122 = call i64 @IS_ERR(%struct.page* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.page*, %struct.page** %16, align 8
  %126 = call i32 @PTR_ERR(%struct.page* %125)
  store i32 %126, i32* %23, align 4
  br label %127

127:                                              ; preds = %124, %120
  br label %366

128:                                              ; preds = %113
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = icmp ne %struct.inode* %129, %130
  br i1 %131, label %132, label %173

132:                                              ; preds = %128
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @S_ISDIR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %132
  %139 = load %struct.inode*, %struct.inode** %11, align 8
  %140 = call %struct.f2fs_dir_entry* @f2fs_parent_dir(%struct.inode* %139, %struct.page** %13)
  store %struct.f2fs_dir_entry* %140, %struct.f2fs_dir_entry** %17, align 8
  %141 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %142 = icmp ne %struct.f2fs_dir_entry* %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.page*, %struct.page** %13, align 8
  %145 = call i64 @IS_ERR(%struct.page* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.page*, %struct.page** %13, align 8
  %149 = call i32 @PTR_ERR(%struct.page* %148)
  store i32 %149, i32* %23, align 4
  br label %150

150:                                              ; preds = %147, %143
  br label %363

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %132
  %153 = load %struct.inode*, %struct.inode** %12, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @S_ISDIR(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %152
  %159 = load %struct.inode*, %struct.inode** %12, align 8
  %160 = call %struct.f2fs_dir_entry* @f2fs_parent_dir(%struct.inode* %159, %struct.page** %14)
  store %struct.f2fs_dir_entry* %160, %struct.f2fs_dir_entry** %18, align 8
  %161 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %18, align 8
  %162 = icmp ne %struct.f2fs_dir_entry* %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %158
  %164 = load %struct.page*, %struct.page** %14, align 8
  %165 = call i64 @IS_ERR(%struct.page* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.page*, %struct.page** %14, align 8
  %169 = call i32 @PTR_ERR(%struct.page* %168)
  store i32 %169, i32* %23, align 4
  br label %170

170:                                              ; preds = %167, %163
  br label %356

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171, %152
  br label %173

173:                                              ; preds = %172, %128
  %174 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %175 = icmp ne %struct.f2fs_dir_entry* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %18, align 8
  %178 = icmp ne %struct.f2fs_dir_entry* %177, null
  br i1 %178, label %211, label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %181 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %18, align 8
  %182 = icmp ne %struct.f2fs_dir_entry* %180, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %179
  %184 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %185 = icmp ne %struct.f2fs_dir_entry* %184, null
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 -1, i32 1
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %21, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %22, align 4
  %190 = load i32, i32* @EMLINK, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %23, align 4
  %192 = load i32, i32* %21, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %183
  %195 = load %struct.inode*, %struct.inode** %6, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @F2FS_LINK_MAX, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %209, label %200

200:                                              ; preds = %194, %183
  %201 = load i32, i32* %22, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.inode*, %struct.inode** %8, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @F2FS_LINK_MAX, align 8
  %208 = icmp sge i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %203, %194
  br label %349

210:                                              ; preds = %203, %200
  br label %211

211:                                              ; preds = %210, %179, %176
  %212 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %213 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %212, i32 1)
  %214 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %215 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %214)
  %216 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %217 = icmp ne %struct.f2fs_dir_entry* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %211
  %219 = load %struct.inode*, %struct.inode** %11, align 8
  %220 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %221 = load %struct.page*, %struct.page** %13, align 8
  %222 = load %struct.inode*, %struct.inode** %8, align 8
  %223 = call i32 @f2fs_set_link(%struct.inode* %219, %struct.f2fs_dir_entry* %220, %struct.page* %221, %struct.inode* %222)
  br label %224

224:                                              ; preds = %218, %211
  %225 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %18, align 8
  %226 = icmp ne %struct.f2fs_dir_entry* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load %struct.inode*, %struct.inode** %12, align 8
  %229 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %18, align 8
  %230 = load %struct.page*, %struct.page** %14, align 8
  %231 = load %struct.inode*, %struct.inode** %6, align 8
  %232 = call i32 @f2fs_set_link(%struct.inode* %228, %struct.f2fs_dir_entry* %229, %struct.page* %230, %struct.inode* %231)
  br label %233

233:                                              ; preds = %227, %224
  %234 = load %struct.inode*, %struct.inode** %6, align 8
  %235 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %236 = load %struct.page*, %struct.page** %15, align 8
  %237 = load %struct.inode*, %struct.inode** %12, align 8
  %238 = call i32 @f2fs_set_link(%struct.inode* %234, %struct.f2fs_dir_entry* %235, %struct.page* %236, %struct.inode* %237)
  %239 = load %struct.inode*, %struct.inode** %11, align 8
  %240 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %239)
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = call i32 @down_write(i32* %241)
  %243 = load %struct.inode*, %struct.inode** %11, align 8
  %244 = call i32 @file_lost_pino(%struct.inode* %243)
  %245 = load %struct.inode*, %struct.inode** %11, align 8
  %246 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %245)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = call i32 @up_write(i32* %247)
  %249 = load %struct.inode*, %struct.inode** %6, align 8
  %250 = call i8* @current_time(%struct.inode* %249)
  %251 = load %struct.inode*, %struct.inode** %6, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 2
  store i8* %250, i8** %252, align 8
  %253 = load i32, i32* %21, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %233
  %256 = load %struct.inode*, %struct.inode** %6, align 8
  %257 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %256)
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = call i32 @down_write(i32* %258)
  %260 = load %struct.inode*, %struct.inode** %6, align 8
  %261 = load i32, i32* %21, align 4
  %262 = icmp sgt i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i32 @f2fs_i_links_write(%struct.inode* %260, i32 %263)
  %265 = load %struct.inode*, %struct.inode** %6, align 8
  %266 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %265)
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = call i32 @up_write(i32* %267)
  br label %269

269:                                              ; preds = %255, %233
  %270 = load %struct.inode*, %struct.inode** %6, align 8
  %271 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %270, i32 0)
  %272 = load %struct.inode*, %struct.inode** %8, align 8
  %273 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %20, align 8
  %274 = load %struct.page*, %struct.page** %16, align 8
  %275 = load %struct.inode*, %struct.inode** %11, align 8
  %276 = call i32 @f2fs_set_link(%struct.inode* %272, %struct.f2fs_dir_entry* %273, %struct.page* %274, %struct.inode* %275)
  %277 = load %struct.inode*, %struct.inode** %12, align 8
  %278 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %277)
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = call i32 @down_write(i32* %279)
  %281 = load %struct.inode*, %struct.inode** %12, align 8
  %282 = call i32 @file_lost_pino(%struct.inode* %281)
  %283 = load %struct.inode*, %struct.inode** %12, align 8
  %284 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %283)
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = call i32 @up_write(i32* %285)
  %287 = load %struct.inode*, %struct.inode** %8, align 8
  %288 = call i8* @current_time(%struct.inode* %287)
  %289 = load %struct.inode*, %struct.inode** %8, align 8
  %290 = getelementptr inbounds %struct.inode, %struct.inode* %289, i32 0, i32 2
  store i8* %288, i8** %290, align 8
  %291 = load i32, i32* %22, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %307

293:                                              ; preds = %269
  %294 = load %struct.inode*, %struct.inode** %8, align 8
  %295 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %294)
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = call i32 @down_write(i32* %296)
  %298 = load %struct.inode*, %struct.inode** %8, align 8
  %299 = load i32, i32* %22, align 4
  %300 = icmp sgt i32 %299, 0
  %301 = zext i1 %300 to i32
  %302 = call i32 @f2fs_i_links_write(%struct.inode* %298, i32 %301)
  %303 = load %struct.inode*, %struct.inode** %8, align 8
  %304 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %303)
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = call i32 @up_write(i32* %305)
  br label %307

307:                                              ; preds = %293, %269
  %308 = load %struct.inode*, %struct.inode** %8, align 8
  %309 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %308, i32 0)
  %310 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %311 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %310)
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %311, i64* %312, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @FSYNC_MODE_STRICT, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %330

317:                                              ; preds = %307
  %318 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %319 = load %struct.inode*, %struct.inode** %6, align 8
  %320 = getelementptr inbounds %struct.inode, %struct.inode* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @TRANS_DIR_INO, align 4
  %323 = call i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info* %318, i32 %321, i32 %322)
  %324 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %325 = load %struct.inode*, %struct.inode** %8, align 8
  %326 = getelementptr inbounds %struct.inode, %struct.inode* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @TRANS_DIR_INO, align 4
  %329 = call i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info* %324, i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %317, %307
  %331 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %332 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %331)
  %333 = load %struct.inode*, %struct.inode** %6, align 8
  %334 = call i64 @IS_DIRSYNC(%struct.inode* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %330
  %337 = load %struct.inode*, %struct.inode** %8, align 8
  %338 = call i64 @IS_DIRSYNC(%struct.inode* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %336, %330
  %341 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %342 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @f2fs_sync_fs(i32 %343, i32 1)
  br label %345

345:                                              ; preds = %340, %336
  %346 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %347 = load i32, i32* @REQ_TIME, align 4
  %348 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %346, i32 %347)
  store i32 0, i32* %5, align 4
  br label %371

349:                                              ; preds = %209
  %350 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %18, align 8
  %351 = icmp ne %struct.f2fs_dir_entry* %350, null
  br i1 %351, label %352, label %355

352:                                              ; preds = %349
  %353 = load %struct.page*, %struct.page** %14, align 8
  %354 = call i32 @f2fs_put_page(%struct.page* %353, i32 0)
  br label %355

355:                                              ; preds = %352, %349
  br label %356

356:                                              ; preds = %355, %170
  %357 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %17, align 8
  %358 = icmp ne %struct.f2fs_dir_entry* %357, null
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load %struct.page*, %struct.page** %13, align 8
  %361 = call i32 @f2fs_put_page(%struct.page* %360, i32 0)
  br label %362

362:                                              ; preds = %359, %356
  br label %363

363:                                              ; preds = %362, %150
  %364 = load %struct.page*, %struct.page** %16, align 8
  %365 = call i32 @f2fs_put_page(%struct.page* %364, i32 0)
  br label %366

366:                                              ; preds = %363, %127
  %367 = load %struct.page*, %struct.page** %15, align 8
  %368 = call i32 @f2fs_put_page(%struct.page* %367, i32 0)
  br label %369

369:                                              ; preds = %366, %112, %95, %89
  %370 = load i32, i32* %23, align 4
  store i32 %370, i32* %5, align 4
  br label %371

371:                                              ; preds = %369, %345, %81, %42, %35
  %372 = load i32, i32* %5, align 4
  ret i32 %372
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @projid_eq(i32, i32) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode*, i32*, %struct.page**) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.f2fs_dir_entry* @f2fs_parent_dir(%struct.inode*, %struct.page**) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_set_link(%struct.inode*, %struct.f2fs_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @file_lost_pino(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_i_links_write(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

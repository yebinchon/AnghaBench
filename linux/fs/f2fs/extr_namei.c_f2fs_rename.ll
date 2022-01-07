; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i8*, i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dir_entry = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RENAME_WHITEOUT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@I_LINKABLE = common dso_local global i32 0, align 4
@FI_INC_LINK = common dso_local global i32 0, align 4
@FSYNC_MODE_STRICT = common dso_local global i64 0, align 8
@TRANS_DIR_INO = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @f2fs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.f2fs_sb_info*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.f2fs_dir_entry*, align 8
  %20 = alloca %struct.f2fs_dir_entry*, align 8
  %21 = alloca %struct.f2fs_dir_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_3__, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %25)
  store %struct.f2fs_sb_info* %26, %struct.f2fs_sb_info** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = call %struct.inode* @d_inode(%struct.dentry* %27)
  store %struct.inode* %28, %struct.inode** %13, align 8
  %29 = load %struct.dentry*, %struct.dentry** %10, align 8
  %30 = call %struct.inode* @d_inode(%struct.dentry* %29)
  store %struct.inode* %30, %struct.inode** %14, align 8
  store %struct.inode* null, %struct.inode** %15, align 8
  store %struct.page* null, %struct.page** %18, align 8
  store %struct.f2fs_dir_entry* null, %struct.f2fs_dir_entry** %19, align 8
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call i32 @f2fs_has_inline_dentry(%struct.inode* %31)
  store i32 %32, i32* %22, align 4
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %34 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %423

40:                                               ; preds = %5
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %42 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %423

47:                                               ; preds = %40
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %50 = call i64 @is_inode_flag_set(%struct.inode* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 1
  %59 = load %struct.inode*, %struct.inode** %58, align 8
  %60 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @projid_eq(i32 %56, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* @EXDEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %423

68:                                               ; preds = %52, %47
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = call i32 @dquot_initialize(%struct.inode* %69)
  store i32 %70, i32* %23, align 4
  %71 = load i32, i32* %23, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %421

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = call i32 @dquot_initialize(%struct.inode* %75)
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %23, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %421

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %14, align 8
  %82 = icmp ne %struct.inode* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.inode*, %struct.inode** %14, align 8
  %85 = call i32 @dquot_initialize(%struct.inode* %84)
  store i32 %85, i32* %23, align 4
  %86 = load i32, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %421

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %23, align 4
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = load %struct.dentry*, %struct.dentry** %8, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %93, i32* %95, %struct.page** %17)
  store %struct.f2fs_dir_entry* %96, %struct.f2fs_dir_entry** %20, align 8
  %97 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %20, align 8
  %98 = icmp ne %struct.f2fs_dir_entry* %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %90
  %100 = load %struct.page*, %struct.page** %17, align 8
  %101 = call i64 @IS_ERR(%struct.page* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.page*, %struct.page** %17, align 8
  %105 = call i32 @PTR_ERR(%struct.page* %104)
  store i32 %105, i32* %23, align 4
  br label %106

106:                                              ; preds = %103, %99
  br label %421

107:                                              ; preds = %90
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISDIR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load %struct.inode*, %struct.inode** %13, align 8
  %115 = call %struct.f2fs_dir_entry* @f2fs_parent_dir(%struct.inode* %114, %struct.page** %16)
  store %struct.f2fs_dir_entry* %115, %struct.f2fs_dir_entry** %19, align 8
  %116 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %117 = icmp ne %struct.f2fs_dir_entry* %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load %struct.page*, %struct.page** %16, align 8
  %120 = call i64 @IS_ERR(%struct.page* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.page*, %struct.page** %16, align 8
  %124 = call i32 @PTR_ERR(%struct.page* %123)
  store i32 %124, i32* %23, align 4
  br label %125

125:                                              ; preds = %122, %118
  br label %418

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %107
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @RENAME_WHITEOUT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = call i32 @f2fs_create_whiteout(%struct.inode* %133, %struct.inode** %15)
  store i32 %134, i32* %23, align 4
  %135 = load i32, i32* %23, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %411

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %127
  %140 = load %struct.inode*, %struct.inode** %14, align 8
  %141 = icmp ne %struct.inode* %140, null
  br i1 %141, label %142, label %216

142:                                              ; preds = %139
  %143 = load i32, i32* @ENOTEMPTY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %23, align 4
  %145 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %146 = icmp ne %struct.f2fs_dir_entry* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.inode*, %struct.inode** %14, align 8
  %149 = call i32 @f2fs_empty_dir(%struct.inode* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  br label %404

152:                                              ; preds = %147, %142
  %153 = load i32, i32* @ENOENT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %23, align 4
  %155 = load %struct.inode*, %struct.inode** %9, align 8
  %156 = load %struct.dentry*, %struct.dentry** %10, align 8
  %157 = getelementptr inbounds %struct.dentry, %struct.dentry* %156, i32 0, i32 0
  %158 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %155, i32* %157, %struct.page** %18)
  store %struct.f2fs_dir_entry* %158, %struct.f2fs_dir_entry** %21, align 8
  %159 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %21, align 8
  %160 = icmp ne %struct.f2fs_dir_entry* %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %152
  %162 = load %struct.page*, %struct.page** %18, align 8
  %163 = call i64 @IS_ERR(%struct.page* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.page*, %struct.page** %18, align 8
  %167 = call i32 @PTR_ERR(%struct.page* %166)
  store i32 %167, i32* %23, align 4
  br label %168

168:                                              ; preds = %165, %161
  br label %404

169:                                              ; preds = %152
  %170 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %171 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %170, i32 1)
  %172 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %173 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %172)
  %174 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %175 = call i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info* %174)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %395

179:                                              ; preds = %169
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %21, align 8
  %182 = load %struct.page*, %struct.page** %18, align 8
  %183 = load %struct.inode*, %struct.inode** %13, align 8
  %184 = call i32 @f2fs_set_link(%struct.inode* %180, %struct.f2fs_dir_entry* %181, %struct.page* %182, %struct.inode* %183)
  %185 = load %struct.inode*, %struct.inode** %14, align 8
  %186 = call i8* @current_time(%struct.inode* %185)
  %187 = load %struct.inode*, %struct.inode** %14, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load %struct.inode*, %struct.inode** %14, align 8
  %190 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %189)
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = call i32 @down_write(i32* %191)
  %193 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %194 = icmp ne %struct.f2fs_dir_entry* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %179
  %196 = load %struct.inode*, %struct.inode** %14, align 8
  %197 = call i32 @f2fs_i_links_write(%struct.inode* %196, i32 0)
  br label %198

198:                                              ; preds = %195, %179
  %199 = load %struct.inode*, %struct.inode** %14, align 8
  %200 = call i32 @f2fs_i_links_write(%struct.inode* %199, i32 0)
  %201 = load %struct.inode*, %struct.inode** %14, align 8
  %202 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = call i32 @up_write(i32* %203)
  %205 = load %struct.inode*, %struct.inode** %14, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %198
  %210 = load %struct.inode*, %struct.inode** %14, align 8
  %211 = call i32 @f2fs_add_orphan_inode(%struct.inode* %210)
  br label %215

212:                                              ; preds = %198
  %213 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %214 = call i32 @f2fs_release_orphan_inode(%struct.f2fs_sb_info* %213)
  br label %215

215:                                              ; preds = %212, %209
  br label %265

216:                                              ; preds = %139
  %217 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %218 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %217, i32 1)
  %219 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %220 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %219)
  %221 = load %struct.dentry*, %struct.dentry** %10, align 8
  %222 = load %struct.inode*, %struct.inode** %13, align 8
  %223 = call i32 @f2fs_add_link(%struct.dentry* %221, %struct.inode* %222)
  store i32 %223, i32* %23, align 4
  %224 = load i32, i32* %23, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %216
  %227 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %228 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %227)
  br label %404

229:                                              ; preds = %216
  %230 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %231 = icmp ne %struct.f2fs_dir_entry* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.inode*, %struct.inode** %9, align 8
  %234 = call i32 @f2fs_i_links_write(%struct.inode* %233, i32 1)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load i32, i32* %22, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %264

238:                                              ; preds = %235
  %239 = load %struct.inode*, %struct.inode** %7, align 8
  %240 = call i32 @f2fs_has_inline_dentry(%struct.inode* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %264, label %242

242:                                              ; preds = %238
  %243 = load %struct.page*, %struct.page** %17, align 8
  %244 = call i32 @f2fs_put_page(%struct.page* %243, i32 0)
  store %struct.page* null, %struct.page** %17, align 8
  %245 = load %struct.inode*, %struct.inode** %7, align 8
  %246 = load %struct.dentry*, %struct.dentry** %8, align 8
  %247 = getelementptr inbounds %struct.dentry, %struct.dentry* %246, i32 0, i32 0
  %248 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %245, i32* %247, %struct.page** %17)
  store %struct.f2fs_dir_entry* %248, %struct.f2fs_dir_entry** %20, align 8
  %249 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %20, align 8
  %250 = icmp ne %struct.f2fs_dir_entry* %249, null
  br i1 %250, label %263, label %251

251:                                              ; preds = %242
  %252 = load i32, i32* @ENOENT, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %23, align 4
  %254 = load %struct.page*, %struct.page** %17, align 8
  %255 = call i64 @IS_ERR(%struct.page* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load %struct.page*, %struct.page** %17, align 8
  %259 = call i32 @PTR_ERR(%struct.page* %258)
  store i32 %259, i32* %23, align 4
  br label %260

260:                                              ; preds = %257, %251
  %261 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %262 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %261)
  br label %404

263:                                              ; preds = %242
  br label %264

264:                                              ; preds = %263, %238, %235
  br label %265

265:                                              ; preds = %264, %215
  %266 = load %struct.inode*, %struct.inode** %13, align 8
  %267 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %266)
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = call i32 @down_write(i32* %268)
  %270 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %271 = icmp ne %struct.f2fs_dir_entry* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load %struct.inode*, %struct.inode** %15, align 8
  %274 = icmp ne %struct.inode* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272, %265
  %276 = load %struct.inode*, %struct.inode** %13, align 8
  %277 = call i32 @file_lost_pino(%struct.inode* %276)
  br label %285

278:                                              ; preds = %272
  %279 = load %struct.inode*, %struct.inode** %9, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.inode*, %struct.inode** %13, align 8
  %283 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %282)
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %278, %275
  %286 = load %struct.inode*, %struct.inode** %13, align 8
  %287 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %286)
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = call i32 @up_write(i32* %288)
  %290 = load %struct.inode*, %struct.inode** %13, align 8
  %291 = call i8* @current_time(%struct.inode* %290)
  %292 = load %struct.inode*, %struct.inode** %13, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 3
  store i8* %291, i8** %293, align 8
  %294 = load %struct.inode*, %struct.inode** %13, align 8
  %295 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %294, i32 0)
  %296 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %20, align 8
  %297 = load %struct.page*, %struct.page** %17, align 8
  %298 = load %struct.inode*, %struct.inode** %7, align 8
  %299 = call i32 @f2fs_delete_entry(%struct.f2fs_dir_entry* %296, %struct.page* %297, %struct.inode* %298, i32* null)
  %300 = load %struct.inode*, %struct.inode** %15, align 8
  %301 = icmp ne %struct.inode* %300, null
  br i1 %301, label %302, label %326

302:                                              ; preds = %285
  %303 = load i32, i32* @I_LINKABLE, align 4
  %304 = load %struct.inode*, %struct.inode** %15, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  %308 = load %struct.inode*, %struct.inode** %15, align 8
  %309 = load i32, i32* @FI_INC_LINK, align 4
  %310 = call i32 @set_inode_flag(%struct.inode* %308, i32 %309)
  %311 = load %struct.dentry*, %struct.dentry** %8, align 8
  %312 = load %struct.inode*, %struct.inode** %15, align 8
  %313 = call i32 @f2fs_add_link(%struct.dentry* %311, %struct.inode* %312)
  store i32 %313, i32* %23, align 4
  %314 = load i32, i32* %23, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %302
  br label %395

317:                                              ; preds = %302
  %318 = load i32, i32* @I_LINKABLE, align 4
  %319 = xor i32 %318, -1
  %320 = load %struct.inode*, %struct.inode** %15, align 8
  %321 = getelementptr inbounds %struct.inode, %struct.inode* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = and i32 %322, %319
  store i32 %323, i32* %321, align 8
  %324 = load %struct.inode*, %struct.inode** %15, align 8
  %325 = call i32 @iput(%struct.inode* %324)
  br label %326

326:                                              ; preds = %317, %285
  %327 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %328 = icmp ne %struct.f2fs_dir_entry* %327, null
  br i1 %328, label %329, label %348

329:                                              ; preds = %326
  %330 = load %struct.inode*, %struct.inode** %7, align 8
  %331 = load %struct.inode*, %struct.inode** %9, align 8
  %332 = icmp ne %struct.inode* %330, %331
  br i1 %332, label %333, label %342

333:                                              ; preds = %329
  %334 = load %struct.inode*, %struct.inode** %15, align 8
  %335 = icmp ne %struct.inode* %334, null
  br i1 %335, label %342, label %336

336:                                              ; preds = %333
  %337 = load %struct.inode*, %struct.inode** %13, align 8
  %338 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %339 = load %struct.page*, %struct.page** %16, align 8
  %340 = load %struct.inode*, %struct.inode** %9, align 8
  %341 = call i32 @f2fs_set_link(%struct.inode* %337, %struct.f2fs_dir_entry* %338, %struct.page* %339, %struct.inode* %340)
  br label %345

342:                                              ; preds = %333, %329
  %343 = load %struct.page*, %struct.page** %16, align 8
  %344 = call i32 @f2fs_put_page(%struct.page* %343, i32 0)
  br label %345

345:                                              ; preds = %342, %336
  %346 = load %struct.inode*, %struct.inode** %7, align 8
  %347 = call i32 @f2fs_i_links_write(%struct.inode* %346, i32 0)
  br label %348

348:                                              ; preds = %345, %326
  %349 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %350 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %349)
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %350, i64* %351, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @FSYNC_MODE_STRICT, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %376

356:                                              ; preds = %348
  %357 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %358 = load %struct.inode*, %struct.inode** %9, align 8
  %359 = getelementptr inbounds %struct.inode, %struct.inode* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @TRANS_DIR_INO, align 4
  %362 = call i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info* %357, i32 %360, i32 %361)
  %363 = load %struct.inode*, %struct.inode** %13, align 8
  %364 = getelementptr inbounds %struct.inode, %struct.inode* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i64 @S_ISDIR(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %356
  %369 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %370 = load %struct.inode*, %struct.inode** %13, align 8
  %371 = getelementptr inbounds %struct.inode, %struct.inode* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @TRANS_DIR_INO, align 4
  %374 = call i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info* %369, i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %368, %356
  br label %376

376:                                              ; preds = %375, %348
  %377 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %378 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %377)
  %379 = load %struct.inode*, %struct.inode** %7, align 8
  %380 = call i64 @IS_DIRSYNC(%struct.inode* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %376
  %383 = load %struct.inode*, %struct.inode** %9, align 8
  %384 = call i64 @IS_DIRSYNC(%struct.inode* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %382, %376
  %387 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %388 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @f2fs_sync_fs(i32 %389, i32 1)
  br label %391

391:                                              ; preds = %386, %382
  %392 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %393 = load i32, i32* @REQ_TIME, align 4
  %394 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %392, i32 %393)
  store i32 0, i32* %6, align 4
  br label %423

395:                                              ; preds = %316, %178
  %396 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %12, align 8
  %397 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %396)
  %398 = load %struct.page*, %struct.page** %18, align 8
  %399 = icmp ne %struct.page* %398, null
  br i1 %399, label %400, label %403

400:                                              ; preds = %395
  %401 = load %struct.page*, %struct.page** %18, align 8
  %402 = call i32 @f2fs_put_page(%struct.page* %401, i32 0)
  br label %403

403:                                              ; preds = %400, %395
  br label %404

404:                                              ; preds = %403, %260, %226, %168, %151
  %405 = load %struct.inode*, %struct.inode** %15, align 8
  %406 = icmp ne %struct.inode* %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = load %struct.inode*, %struct.inode** %15, align 8
  %409 = call i32 @iput(%struct.inode* %408)
  br label %410

410:                                              ; preds = %407, %404
  br label %411

411:                                              ; preds = %410, %137
  %412 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %19, align 8
  %413 = icmp ne %struct.f2fs_dir_entry* %412, null
  br i1 %413, label %414, label %417

414:                                              ; preds = %411
  %415 = load %struct.page*, %struct.page** %16, align 8
  %416 = call i32 @f2fs_put_page(%struct.page* %415, i32 0)
  br label %417

417:                                              ; preds = %414, %411
  br label %418

418:                                              ; preds = %417, %125
  %419 = load %struct.page*, %struct.page** %17, align 8
  %420 = call i32 @f2fs_put_page(%struct.page* %419, i32 0)
  br label %421

421:                                              ; preds = %418, %106, %88, %79, %73
  %422 = load i32, i32* %23, align 4
  store i32 %422, i32* %6, align 4
  br label %423

423:                                              ; preds = %421, %391, %65, %44, %37
  %424 = load i32, i32* %6, align 4
  ret i32 %424
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @f2fs_has_inline_dentry(%struct.inode*) #1

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

declare dso_local i32 @f2fs_create_whiteout(%struct.inode*, %struct.inode**) #1

declare dso_local i32 @f2fs_empty_dir(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_set_link(%struct.inode*, %struct.f2fs_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @f2fs_i_links_write(%struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_add_orphan_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_release_orphan_inode(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @file_lost_pino(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_delete_entry(%struct.f2fs_dir_entry*, %struct.page*, %struct.inode*, i32*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_ino_entry(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

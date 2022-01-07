; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c___ext4_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c___ext4_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i64, i64, i32, i32, i32, i32, i64, %struct.super_block*, i32, i32, i8*, i32 }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32, %struct.TYPE_6__*, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_inode_info = type { i64, i32, i64, i32, i32, i64, i32, i8*, i64, i64, i64, i64, i32, i32, i32 }
%struct.ext4_sb_info = type { i32, i32, i32, %struct.TYPE_5__*, i64, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ext4_group_info = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXT4_EA_INODE_FL = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@FSCRYPT_SET_CONTEXT_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GRPID = common dso_local global i32 0, align 4
@EXT4_INODE_PROJINHERIT = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@EXT4_DEF_PROJID = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"reserved inode found cleared - inode=%lu\00", align 1
@EXT4_GROUP_INFO_IBITMAP_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"get block bitmap access\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"dirty block bitmap\00", align 1
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@EXT4_FL_INHERITED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to insert inode %lu: doubly allocated?\00", align 1
@EXT4_STATE_NEW = common dso_local global i32 0, align 4
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"allocating inode %lu\0A\00", align 1
@S_NOQUOTA = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @__ext4_new_inode(%struct.posix_acl* %0, %struct.inode* %1, i8* %2, %struct.qstr* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.posix_acl*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.qstr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.super_block*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.buffer_head*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.inode*, align 8
  %29 = alloca %struct.ext4_group_desc*, align 8
  %30 = alloca %struct.ext4_inode_info*, align 8
  %31 = alloca %struct.ext4_sb_info*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.inode*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.ext4_group_info*, align 8
  %38 = alloca i32, align 4
  %39 = alloca %struct.buffer_head*, align 8
  %40 = alloca i32, align 4
  %41 = alloca %struct.ext4_group_info*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %12, align 8
  store %struct.inode* %1, %struct.inode** %13, align 8
  store i8* %2, i8** %14, align 8
  store %struct.qstr* %3, %struct.qstr** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %29, align 8
  store i32 0, i32* %38, align 4
  %46 = load %struct.inode*, %struct.inode** %13, align 8
  %47 = icmp ne %struct.inode* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %10
  %49 = load %struct.inode*, %struct.inode** %13, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48, %10
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.inode* @ERR_PTR(i32 %55)
  store %struct.inode* %56, %struct.inode** %11, align 8
  br label %992

57:                                               ; preds = %48
  %58 = load %struct.inode*, %struct.inode** %13, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 7
  %60 = load %struct.super_block*, %struct.super_block** %59, align 8
  store %struct.super_block* %60, %struct.super_block** %22, align 8
  %61 = load %struct.super_block*, %struct.super_block** %22, align 8
  %62 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %61)
  store %struct.ext4_sb_info* %62, %struct.ext4_sb_info** %31, align 8
  %63 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %64 = call i32 @ext4_forced_shutdown(%struct.ext4_sb_info* %63)
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.inode* @ERR_PTR(i32 %69)
  store %struct.inode* %70, %struct.inode** %11, align 8
  br label %992

71:                                               ; preds = %57
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = call i64 @IS_ENCRYPTED(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %77 = call i64 @DUMMY_ENCRYPTION_ENABLED(%struct.ext4_sb_info* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %75, %71
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @S_ISREG(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @S_ISDIR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %14, align 8
  %89 = call i64 @S_ISLNK(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %87, %83, %79
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %91
  %97 = load %struct.inode*, %struct.inode** %13, align 8
  %98 = call i32 @fscrypt_get_encryption_info(%struct.inode* %97)
  store i32 %98, i32* %33, align 4
  %99 = load i32, i32* %33, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %33, align 4
  %103 = call %struct.inode* @ERR_PTR(i32 %102)
  store %struct.inode* %103, %struct.inode** %11, align 8
  br label %992

104:                                              ; preds = %96
  %105 = load %struct.inode*, %struct.inode** %13, align 8
  %106 = call i32 @fscrypt_has_encryption_key(%struct.inode* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @ENOKEY, align 4
  %110 = sub nsw i32 0, %109
  %111 = call %struct.inode* @ERR_PTR(i32 %110)
  store %struct.inode* %111, %struct.inode** %11, align 8
  br label %992

112:                                              ; preds = %104
  store i32 1, i32* %38, align 4
  br label %113

113:                                              ; preds = %112, %91, %87, %75
  %114 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %115 = icmp ne %struct.posix_acl* %114, null
  br i1 %115, label %136, label %116

116:                                              ; preds = %113
  %117 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %118 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %38, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.super_block*, %struct.super_block** %22, align 8
  %131 = load i32, i32* @FSCRYPT_SET_CONTEXT_MAX_SIZE, align 4
  %132 = call i32 @__ext4_xattr_set_credits(%struct.super_block* %130, i32* null, i32* null, i32 %131, i32 1)
  %133 = load i32, i32* %21, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %21, align 4
  br label %135

135:                                              ; preds = %129, %126
  br label %136

136:                                              ; preds = %135, %121, %116, %113
  %137 = load %struct.super_block*, %struct.super_block** %22, align 8
  %138 = call i64 @ext4_get_groups_count(%struct.super_block* %137)
  store i64 %138, i64* %25, align 8
  %139 = load %struct.inode*, %struct.inode** %13, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 @trace_ext4_request_inode(%struct.inode* %139, i8* %140)
  %142 = load %struct.super_block*, %struct.super_block** %22, align 8
  %143 = call %struct.inode* @new_inode(%struct.super_block* %142)
  store %struct.inode* %143, %struct.inode** %28, align 8
  %144 = load %struct.inode*, %struct.inode** %28, align 8
  %145 = icmp ne %struct.inode* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %136
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  %149 = call %struct.inode* @ERR_PTR(i32 %148)
  store %struct.inode* %149, %struct.inode** %11, align 8
  br label %992

150:                                              ; preds = %136
  %151 = load %struct.inode*, %struct.inode** %28, align 8
  %152 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %151)
  store %struct.ext4_inode_info* %152, %struct.ext4_inode_info** %30, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load i8*, i8** %14, align 8
  %157 = load %struct.inode*, %struct.inode** %28, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  %159 = load %struct.inode*, %struct.inode** %28, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @i_uid_write(%struct.inode* %159, i32 %162)
  %164 = load %struct.inode*, %struct.inode** %28, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @i_gid_write(%struct.inode* %164, i32 %167)
  br label %192

169:                                              ; preds = %150
  %170 = load %struct.super_block*, %struct.super_block** %22, align 8
  %171 = load i32, i32* @GRPID, align 4
  %172 = call i64 @test_opt(%struct.super_block* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = load i8*, i8** %14, align 8
  %176 = load %struct.inode*, %struct.inode** %28, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 10
  store i8* %175, i8** %177, align 8
  %178 = call i32 (...) @current_fsuid()
  %179 = load %struct.inode*, %struct.inode** %28, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 9
  store i32 %178, i32* %180, align 4
  %181 = load %struct.inode*, %struct.inode** %13, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.inode*, %struct.inode** %28, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 8
  br label %191

186:                                              ; preds = %169
  %187 = load %struct.inode*, %struct.inode** %28, align 8
  %188 = load %struct.inode*, %struct.inode** %13, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = call i32 @inode_init_owner(%struct.inode* %187, %struct.inode* %188, i8* %189)
  br label %191

191:                                              ; preds = %186, %174
  br label %192

192:                                              ; preds = %191, %155
  %193 = load %struct.super_block*, %struct.super_block** %22, align 8
  %194 = call i64 @ext4_has_feature_project(%struct.super_block* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load %struct.inode*, %struct.inode** %13, align 8
  %198 = load i32, i32* @EXT4_INODE_PROJINHERIT, align 4
  %199 = call i64 @ext4_test_inode_flag(%struct.inode* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.inode*, %struct.inode** %13, align 8
  %203 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %202)
  %204 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %207 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %206, i32 0, i32 14
  store i32 %205, i32* %207, align 8
  br label %213

208:                                              ; preds = %196, %192
  %209 = load i32, i32* @EXT4_DEF_PROJID, align 4
  %210 = call i32 @make_kprojid(i32* @init_user_ns, i32 %209)
  %211 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %212 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %211, i32 0, i32 14
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %208, %201
  %214 = load %struct.inode*, %struct.inode** %28, align 8
  %215 = call i32 @dquot_initialize(%struct.inode* %214)
  store i32 %215, i32* %33, align 4
  %216 = load i32, i32* %33, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %977

219:                                              ; preds = %213
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %224 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %16, align 4
  br label %226

226:                                              ; preds = %222, %219
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %226
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %232 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %231, i32 0, i32 7
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @le32_to_cpu(i32 %235)
  %237 = icmp sle i32 %230, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %229
  %239 = load i32, i32* %16, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = load %struct.super_block*, %struct.super_block** %22, align 8
  %243 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %242)
  %244 = udiv i64 %241, %243
  store i64 %244, i64* %26, align 8
  %245 = load i32, i32* %16, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = load %struct.super_block*, %struct.super_block** %22, align 8
  %249 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %248)
  %250 = urem i64 %247, %249
  store i64 %250, i64* %27, align 8
  store i32 0, i32* %32, align 4
  br label %267

251:                                              ; preds = %229, %226
  %252 = load i8*, i8** %14, align 8
  %253 = call i64 @S_ISDIR(i8* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load %struct.super_block*, %struct.super_block** %22, align 8
  %257 = load %struct.inode*, %struct.inode** %13, align 8
  %258 = load i8*, i8** %14, align 8
  %259 = load %struct.qstr*, %struct.qstr** %15, align 8
  %260 = call i32 @find_group_orlov(%struct.super_block* %256, %struct.inode* %257, i64* %26, i8* %258, %struct.qstr* %259)
  store i32 %260, i32* %32, align 4
  br label %266

261:                                              ; preds = %251
  %262 = load %struct.super_block*, %struct.super_block** %22, align 8
  %263 = load %struct.inode*, %struct.inode** %13, align 8
  %264 = load i8*, i8** %14, align 8
  %265 = call i32 @find_group_other(%struct.super_block* %262, %struct.inode* %263, i64* %26, i8* %264)
  store i32 %265, i32* %32, align 4
  br label %266

266:                                              ; preds = %261, %255
  br label %267

267:                                              ; preds = %266, %238
  %268 = load i64, i64* %26, align 8
  %269 = load %struct.inode*, %struct.inode** %13, align 8
  %270 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %269)
  %271 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %270, i32 0, i32 0
  store i64 %268, i64* %271, align 8
  %272 = load i32, i32* @ENOSPC, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %33, align 4
  %274 = load i32, i32* %32, align 4
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  br label %977

277:                                              ; preds = %267
  store i64 0, i64* %35, align 8
  br label %278

278:                                              ; preds = %440, %277
  %279 = load i64, i64* %35, align 8
  %280 = load i64, i64* %25, align 8
  %281 = icmp ult i64 %279, %280
  br i1 %281, label %282, label %443

282:                                              ; preds = %278
  %283 = load i32, i32* @EIO, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %33, align 4
  %285 = load %struct.super_block*, %struct.super_block** %22, align 8
  %286 = load i64, i64* %26, align 8
  %287 = bitcast %struct.buffer_head** %24 to %struct.posix_acl**
  %288 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %285, i64 %286, %struct.posix_acl** %287)
  store %struct.ext4_group_desc* %288, %struct.ext4_group_desc** %29, align 8
  %289 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %290 = icmp ne %struct.ext4_group_desc* %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %282
  br label %977

292:                                              ; preds = %282
  %293 = load %struct.super_block*, %struct.super_block** %22, align 8
  %294 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %295 = call i64 @ext4_free_inodes_count(%struct.super_block* %293, %struct.ext4_group_desc* %294)
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %433

298:                                              ; preds = %292
  %299 = load %struct.super_block*, %struct.super_block** %22, align 8
  %300 = load i64, i64* %26, align 8
  %301 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %299, i64 %300)
  store %struct.ext4_group_info* %301, %struct.ext4_group_info** %37, align 8
  %302 = load %struct.ext4_group_info*, %struct.ext4_group_info** %37, align 8
  %303 = call i64 @EXT4_MB_GRP_IBITMAP_CORRUPT(%struct.ext4_group_info* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %298
  br label %433

306:                                              ; preds = %298
  %307 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %308 = bitcast %struct.buffer_head* %307 to %struct.posix_acl*
  %309 = call i32 @brelse(%struct.posix_acl* %308)
  %310 = load %struct.super_block*, %struct.super_block** %22, align 8
  %311 = load i64, i64* %26, align 8
  %312 = call %struct.posix_acl* @ext4_read_inode_bitmap(%struct.super_block* %310, i64 %311)
  %313 = bitcast %struct.posix_acl* %312 to %struct.buffer_head*
  store %struct.buffer_head* %313, %struct.buffer_head** %23, align 8
  %314 = load %struct.ext4_group_info*, %struct.ext4_group_info** %37, align 8
  %315 = call i64 @EXT4_MB_GRP_IBITMAP_CORRUPT(%struct.ext4_group_info* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %306
  %318 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %319 = bitcast %struct.buffer_head* %318 to %struct.posix_acl*
  %320 = call i64 @IS_ERR(%struct.posix_acl* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317, %306
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  br label %433

323:                                              ; preds = %317
  br label %324

324:                                              ; preds = %431, %323
  %325 = load %struct.super_block*, %struct.super_block** %22, align 8
  %326 = load i64, i64* %26, align 8
  %327 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %328 = bitcast %struct.buffer_head* %327 to %struct.posix_acl*
  %329 = call i32 @find_inode_bit(%struct.super_block* %325, i64 %326, %struct.posix_acl* %328, i64* %27)
  store i32 %329, i32* %32, align 4
  %330 = load i32, i32* %32, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %324
  br label %433

333:                                              ; preds = %324
  %334 = load i64, i64* %26, align 8
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %351

336:                                              ; preds = %333
  %337 = load i64, i64* %27, align 8
  %338 = add i64 %337, 1
  %339 = load %struct.super_block*, %struct.super_block** %22, align 8
  %340 = call i64 @EXT4_FIRST_INO(%struct.super_block* %339)
  %341 = icmp ult i64 %338, %340
  br i1 %341, label %342, label %351

342:                                              ; preds = %336
  %343 = load %struct.super_block*, %struct.super_block** %22, align 8
  %344 = load i64, i64* %27, align 8
  %345 = add i64 %344, 1
  %346 = call i32 @ext4_error(%struct.super_block* %343, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %345)
  %347 = load %struct.super_block*, %struct.super_block** %22, align 8
  %348 = load i64, i64* %26, align 8
  %349 = load i32, i32* @EXT4_GROUP_INFO_IBITMAP_CORRUPT, align 4
  %350 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %347, i64 %348, i32 %349)
  br label %433

351:                                              ; preds = %336, %333
  %352 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %353 = icmp ne %struct.posix_acl* %352, null
  br i1 %353, label %376, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* %21, align 4
  %356 = icmp sle i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = call i32 @BUG_ON(i32 %357)
  %359 = load %struct.inode*, %struct.inode** %13, align 8
  %360 = getelementptr inbounds %struct.inode, %struct.inode* %359, i32 0, i32 7
  %361 = load %struct.super_block*, %struct.super_block** %360, align 8
  %362 = load i32, i32* %20, align 4
  %363 = load i32, i32* %19, align 4
  %364 = load i32, i32* %21, align 4
  %365 = call %struct.posix_acl* @__ext4_journal_start_sb(%struct.super_block* %361, i32 %362, i32 %363, i32 %364, i32 0)
  store %struct.posix_acl* %365, %struct.posix_acl** %12, align 8
  %366 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %367 = call i64 @IS_ERR(%struct.posix_acl* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %354
  %370 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %371 = call i32 @PTR_ERR(%struct.posix_acl* %370)
  store i32 %371, i32* %33, align 4
  %372 = load %struct.super_block*, %struct.super_block** %22, align 8
  %373 = load i32, i32* %33, align 4
  %374 = call i32 @ext4_std_error(%struct.super_block* %372, i32 %373)
  br label %977

375:                                              ; preds = %354
  br label %376

376:                                              ; preds = %375, %351
  %377 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %378 = bitcast %struct.buffer_head* %377 to %struct.posix_acl*
  %379 = call i32 @BUFFER_TRACE(%struct.posix_acl* %378, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %380 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %381 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %382 = bitcast %struct.buffer_head* %381 to %struct.posix_acl*
  %383 = call i32 @ext4_journal_get_write_access(%struct.posix_acl* %380, %struct.posix_acl* %382)
  store i32 %383, i32* %33, align 4
  %384 = load i32, i32* %33, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %376
  %387 = load %struct.super_block*, %struct.super_block** %22, align 8
  %388 = load i32, i32* %33, align 4
  %389 = call i32 @ext4_std_error(%struct.super_block* %387, i32 %388)
  br label %977

390:                                              ; preds = %376
  %391 = load %struct.super_block*, %struct.super_block** %22, align 8
  %392 = load i64, i64* %26, align 8
  %393 = call i32 @ext4_lock_group(%struct.super_block* %391, i64 %392)
  %394 = load i64, i64* %27, align 8
  %395 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %396 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @ext4_test_and_set_bit(i64 %394, i32 %397)
  store i32 %398, i32* %32, align 4
  %399 = load i32, i32* %32, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %417

401:                                              ; preds = %390
  %402 = load %struct.super_block*, %struct.super_block** %22, align 8
  %403 = load i64, i64* %26, align 8
  %404 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %405 = bitcast %struct.buffer_head* %404 to %struct.posix_acl*
  %406 = call i32 @find_inode_bit(%struct.super_block* %402, i64 %403, %struct.posix_acl* %405, i64* %27)
  store i32 %406, i32* %32, align 4
  %407 = load i32, i32* %32, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %401
  %410 = load i64, i64* %27, align 8
  %411 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %412 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @ext4_set_bit(i64 %410, i32 %413)
  store i32 0, i32* %32, align 4
  br label %416

415:                                              ; preds = %401
  store i32 1, i32* %32, align 4
  br label %416

416:                                              ; preds = %415, %409
  br label %417

417:                                              ; preds = %416, %390
  %418 = load %struct.super_block*, %struct.super_block** %22, align 8
  %419 = load i64, i64* %26, align 8
  %420 = call i32 @ext4_unlock_group(%struct.super_block* %418, i64 %419)
  %421 = load i64, i64* %27, align 8
  %422 = add i64 %421, 1
  store i64 %422, i64* %27, align 8
  %423 = load i32, i32* %32, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %417
  br label %446

426:                                              ; preds = %417
  %427 = load i64, i64* %27, align 8
  %428 = load %struct.super_block*, %struct.super_block** %22, align 8
  %429 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %428)
  %430 = icmp ult i64 %427, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %426
  br label %324

432:                                              ; preds = %426
  br label %433

433:                                              ; preds = %432, %342, %332, %322, %305, %297
  %434 = load i64, i64* %26, align 8
  %435 = add i64 %434, 1
  store i64 %435, i64* %26, align 8
  %436 = load i64, i64* %25, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  store i64 0, i64* %26, align 8
  br label %439

439:                                              ; preds = %438, %433
  br label %440

440:                                              ; preds = %439
  %441 = load i64, i64* %35, align 8
  %442 = add i64 %441, 1
  store i64 %442, i64* %35, align 8
  store i64 0, i64* %27, align 8
  br label %278

443:                                              ; preds = %278
  %444 = load i32, i32* @ENOSPC, align 4
  %445 = sub nsw i32 0, %444
  store i32 %445, i32* %33, align 4
  br label %977

446:                                              ; preds = %425
  %447 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %448 = bitcast %struct.buffer_head* %447 to %struct.posix_acl*
  %449 = call i32 @BUFFER_TRACE(%struct.posix_acl* %448, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %450 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %451 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %452 = bitcast %struct.buffer_head* %451 to %struct.posix_acl*
  %453 = call i32 @ext4_handle_dirty_metadata(%struct.posix_acl* %450, i32* null, %struct.posix_acl* %452)
  store i32 %453, i32* %33, align 4
  %454 = load i32, i32* %33, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %446
  %457 = load %struct.super_block*, %struct.super_block** %22, align 8
  %458 = load i32, i32* %33, align 4
  %459 = call i32 @ext4_std_error(%struct.super_block* %457, i32 %458)
  br label %977

460:                                              ; preds = %446
  %461 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %462 = bitcast %struct.buffer_head* %461 to %struct.posix_acl*
  %463 = call i32 @BUFFER_TRACE(%struct.posix_acl* %462, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %464 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %465 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %466 = bitcast %struct.buffer_head* %465 to %struct.posix_acl*
  %467 = call i32 @ext4_journal_get_write_access(%struct.posix_acl* %464, %struct.posix_acl* %466)
  store i32 %467, i32* %33, align 4
  %468 = load i32, i32* %33, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %460
  %471 = load %struct.super_block*, %struct.super_block** %22, align 8
  %472 = load i32, i32* %33, align 4
  %473 = call i32 @ext4_std_error(%struct.super_block* %471, i32 %472)
  br label %977

474:                                              ; preds = %460
  %475 = load %struct.super_block*, %struct.super_block** %22, align 8
  %476 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %577

478:                                              ; preds = %474
  %479 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %480 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %483 = call i32 @cpu_to_le16(i32 %482)
  %484 = and i32 %481, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %577

486:                                              ; preds = %478
  %487 = load %struct.super_block*, %struct.super_block** %22, align 8
  %488 = load i64, i64* %26, align 8
  %489 = call %struct.posix_acl* @ext4_read_block_bitmap(%struct.super_block* %487, i64 %488)
  %490 = bitcast %struct.posix_acl* %489 to %struct.buffer_head*
  store %struct.buffer_head* %490, %struct.buffer_head** %39, align 8
  %491 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %492 = bitcast %struct.buffer_head* %491 to %struct.posix_acl*
  %493 = call i64 @IS_ERR(%struct.posix_acl* %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %486
  %496 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %497 = bitcast %struct.buffer_head* %496 to %struct.posix_acl*
  %498 = call i32 @PTR_ERR(%struct.posix_acl* %497)
  store i32 %498, i32* %33, align 4
  br label %977

499:                                              ; preds = %486
  %500 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %501 = bitcast %struct.buffer_head* %500 to %struct.posix_acl*
  %502 = call i32 @BUFFER_TRACE(%struct.posix_acl* %501, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %503 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %504 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %505 = bitcast %struct.buffer_head* %504 to %struct.posix_acl*
  %506 = call i32 @ext4_journal_get_write_access(%struct.posix_acl* %503, %struct.posix_acl* %505)
  store i32 %506, i32* %33, align 4
  %507 = load i32, i32* %33, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %516

509:                                              ; preds = %499
  %510 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %511 = bitcast %struct.buffer_head* %510 to %struct.posix_acl*
  %512 = call i32 @brelse(%struct.posix_acl* %511)
  %513 = load %struct.super_block*, %struct.super_block** %22, align 8
  %514 = load i32, i32* %33, align 4
  %515 = call i32 @ext4_std_error(%struct.super_block* %513, i32 %514)
  br label %977

516:                                              ; preds = %499
  %517 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %518 = bitcast %struct.buffer_head* %517 to %struct.posix_acl*
  %519 = call i32 @BUFFER_TRACE(%struct.posix_acl* %518, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %520 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %521 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %522 = bitcast %struct.buffer_head* %521 to %struct.posix_acl*
  %523 = call i32 @ext4_handle_dirty_metadata(%struct.posix_acl* %520, i32* null, %struct.posix_acl* %522)
  store i32 %523, i32* %33, align 4
  %524 = load %struct.super_block*, %struct.super_block** %22, align 8
  %525 = load i64, i64* %26, align 8
  %526 = call i32 @ext4_lock_group(%struct.super_block* %524, i64 %525)
  %527 = load %struct.super_block*, %struct.super_block** %22, align 8
  %528 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %563

530:                                              ; preds = %516
  %531 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %532 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %535 = call i32 @cpu_to_le16(i32 %534)
  %536 = and i32 %533, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %563

538:                                              ; preds = %530
  %539 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %540 = xor i32 %539, -1
  %541 = call i32 @cpu_to_le16(i32 %540)
  %542 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %543 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = and i32 %544, %541
  store i32 %545, i32* %543, align 4
  %546 = load %struct.super_block*, %struct.super_block** %22, align 8
  %547 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %548 = load %struct.super_block*, %struct.super_block** %22, align 8
  %549 = load i64, i64* %26, align 8
  %550 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %551 = call i32 @ext4_free_clusters_after_init(%struct.super_block* %548, i64 %549, %struct.ext4_group_desc* %550)
  %552 = call i32 @ext4_free_group_clusters_set(%struct.super_block* %546, %struct.ext4_group_desc* %547, i32 %551)
  %553 = load %struct.super_block*, %struct.super_block** %22, align 8
  %554 = load i64, i64* %26, align 8
  %555 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %556 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %557 = bitcast %struct.buffer_head* %556 to %struct.posix_acl*
  %558 = call i32 @ext4_block_bitmap_csum_set(%struct.super_block* %553, i64 %554, %struct.ext4_group_desc* %555, %struct.posix_acl* %557)
  %559 = load %struct.super_block*, %struct.super_block** %22, align 8
  %560 = load i64, i64* %26, align 8
  %561 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %562 = call i32 @ext4_group_desc_csum_set(%struct.super_block* %559, i64 %560, %struct.ext4_group_desc* %561)
  br label %563

563:                                              ; preds = %538, %530, %516
  %564 = load %struct.super_block*, %struct.super_block** %22, align 8
  %565 = load i64, i64* %26, align 8
  %566 = call i32 @ext4_unlock_group(%struct.super_block* %564, i64 %565)
  %567 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %568 = bitcast %struct.buffer_head* %567 to %struct.posix_acl*
  %569 = call i32 @brelse(%struct.posix_acl* %568)
  %570 = load i32, i32* %33, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %576

572:                                              ; preds = %563
  %573 = load %struct.super_block*, %struct.super_block** %22, align 8
  %574 = load i32, i32* %33, align 4
  %575 = call i32 @ext4_std_error(%struct.super_block* %573, i32 %574)
  br label %977

576:                                              ; preds = %563
  br label %577

577:                                              ; preds = %576, %478, %474
  %578 = load %struct.super_block*, %struct.super_block** %22, align 8
  %579 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %630

581:                                              ; preds = %577
  %582 = load %struct.super_block*, %struct.super_block** %22, align 8
  %583 = load i64, i64* %26, align 8
  %584 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %582, i64 %583)
  store %struct.ext4_group_info* %584, %struct.ext4_group_info** %41, align 8
  %585 = load %struct.ext4_group_info*, %struct.ext4_group_info** %41, align 8
  %586 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %585, i32 0, i32 0
  %587 = call i32 @down_read(i32* %586)
  %588 = load %struct.super_block*, %struct.super_block** %22, align 8
  %589 = load i64, i64* %26, align 8
  %590 = call i32 @ext4_lock_group(%struct.super_block* %588, i64 %589)
  %591 = load %struct.super_block*, %struct.super_block** %22, align 8
  %592 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %591)
  %593 = load %struct.super_block*, %struct.super_block** %22, align 8
  %594 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %595 = call i64 @ext4_itable_unused_count(%struct.super_block* %593, %struct.ext4_group_desc* %594)
  %596 = sub i64 %592, %595
  %597 = trunc i64 %596 to i32
  store i32 %597, i32* %40, align 4
  %598 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %599 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %602 = call i32 @cpu_to_le16(i32 %601)
  %603 = and i32 %600, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %613

605:                                              ; preds = %581
  %606 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %607 = xor i32 %606, -1
  %608 = call i32 @cpu_to_le16(i32 %607)
  %609 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %610 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = and i32 %611, %608
  store i32 %612, i32* %610, align 4
  store i32 0, i32* %40, align 4
  br label %613

613:                                              ; preds = %605, %581
  %614 = load i64, i64* %27, align 8
  %615 = load i32, i32* %40, align 4
  %616 = sext i32 %615 to i64
  %617 = icmp ugt i64 %614, %616
  br i1 %617, label %618, label %626

618:                                              ; preds = %613
  %619 = load %struct.super_block*, %struct.super_block** %22, align 8
  %620 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %621 = load %struct.super_block*, %struct.super_block** %22, align 8
  %622 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %621)
  %623 = load i64, i64* %27, align 8
  %624 = sub i64 %622, %623
  %625 = call i32 @ext4_itable_unused_set(%struct.super_block* %619, %struct.ext4_group_desc* %620, i64 %624)
  br label %626

626:                                              ; preds = %618, %613
  %627 = load %struct.ext4_group_info*, %struct.ext4_group_info** %41, align 8
  %628 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %627, i32 0, i32 0
  %629 = call i32 @up_read(i32* %628)
  br label %634

630:                                              ; preds = %577
  %631 = load %struct.super_block*, %struct.super_block** %22, align 8
  %632 = load i64, i64* %26, align 8
  %633 = call i32 @ext4_lock_group(%struct.super_block* %631, i64 %632)
  br label %634

634:                                              ; preds = %630, %626
  %635 = load %struct.super_block*, %struct.super_block** %22, align 8
  %636 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %637 = load %struct.super_block*, %struct.super_block** %22, align 8
  %638 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %639 = call i64 @ext4_free_inodes_count(%struct.super_block* %637, %struct.ext4_group_desc* %638)
  %640 = sub nsw i64 %639, 1
  %641 = call i32 @ext4_free_inodes_set(%struct.super_block* %635, %struct.ext4_group_desc* %636, i64 %640)
  %642 = load i8*, i8** %14, align 8
  %643 = call i64 @S_ISDIR(i8* %642)
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %669

645:                                              ; preds = %634
  %646 = load %struct.super_block*, %struct.super_block** %22, align 8
  %647 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %648 = load %struct.super_block*, %struct.super_block** %22, align 8
  %649 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %650 = call i64 @ext4_used_dirs_count(%struct.super_block* %648, %struct.ext4_group_desc* %649)
  %651 = add nsw i64 %650, 1
  %652 = call i32 @ext4_used_dirs_set(%struct.super_block* %646, %struct.ext4_group_desc* %647, i64 %651)
  %653 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %654 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %653, i32 0, i32 4
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %645
  %658 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %659 = load i64, i64* %26, align 8
  %660 = call i64 @ext4_flex_group(%struct.ext4_sb_info* %658, i64 %659)
  store i64 %660, i64* %42, align 8
  %661 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %662 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %661, i32 0, i32 3
  %663 = load %struct.TYPE_5__*, %struct.TYPE_5__** %662, align 8
  %664 = load i64, i64* %42, align 8
  %665 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %663, i64 %664
  %666 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %665, i32 0, i32 1
  %667 = call i32 @atomic_inc(i32* %666)
  br label %668

668:                                              ; preds = %657, %645
  br label %669

669:                                              ; preds = %668, %634
  %670 = load %struct.super_block*, %struct.super_block** %22, align 8
  %671 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %670)
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %688

673:                                              ; preds = %669
  %674 = load %struct.super_block*, %struct.super_block** %22, align 8
  %675 = load i64, i64* %26, align 8
  %676 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %677 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %678 = bitcast %struct.buffer_head* %677 to %struct.posix_acl*
  %679 = load %struct.super_block*, %struct.super_block** %22, align 8
  %680 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %679)
  %681 = udiv i64 %680, 8
  %682 = trunc i64 %681 to i32
  %683 = call i32 @ext4_inode_bitmap_csum_set(%struct.super_block* %674, i64 %675, %struct.ext4_group_desc* %676, %struct.posix_acl* %678, i32 %682)
  %684 = load %struct.super_block*, %struct.super_block** %22, align 8
  %685 = load i64, i64* %26, align 8
  %686 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %29, align 8
  %687 = call i32 @ext4_group_desc_csum_set(%struct.super_block* %684, i64 %685, %struct.ext4_group_desc* %686)
  br label %688

688:                                              ; preds = %673, %669
  %689 = load %struct.super_block*, %struct.super_block** %22, align 8
  %690 = load i64, i64* %26, align 8
  %691 = call i32 @ext4_unlock_group(%struct.super_block* %689, i64 %690)
  %692 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %693 = bitcast %struct.buffer_head* %692 to %struct.posix_acl*
  %694 = call i32 @BUFFER_TRACE(%struct.posix_acl* %693, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %695 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %696 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %697 = bitcast %struct.buffer_head* %696 to %struct.posix_acl*
  %698 = call i32 @ext4_handle_dirty_metadata(%struct.posix_acl* %695, i32* null, %struct.posix_acl* %697)
  store i32 %698, i32* %33, align 4
  %699 = load i32, i32* %33, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %705

701:                                              ; preds = %688
  %702 = load %struct.super_block*, %struct.super_block** %22, align 8
  %703 = load i32, i32* %33, align 4
  %704 = call i32 @ext4_std_error(%struct.super_block* %702, i32 %703)
  br label %977

705:                                              ; preds = %688
  %706 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %707 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %706, i32 0, i32 6
  %708 = call i32 @percpu_counter_dec(i32* %707)
  %709 = load i8*, i8** %14, align 8
  %710 = call i64 @S_ISDIR(i8* %709)
  %711 = icmp ne i64 %710, 0
  br i1 %711, label %712, label %716

712:                                              ; preds = %705
  %713 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %714 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %713, i32 0, i32 5
  %715 = call i32 @percpu_counter_inc(i32* %714)
  br label %716

716:                                              ; preds = %712, %705
  %717 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %718 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %717, i32 0, i32 4
  %719 = load i64, i64* %718, align 8
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %732

721:                                              ; preds = %716
  %722 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %723 = load i64, i64* %26, align 8
  %724 = call i64 @ext4_flex_group(%struct.ext4_sb_info* %722, i64 %723)
  store i64 %724, i64* %36, align 8
  %725 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %726 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %725, i32 0, i32 3
  %727 = load %struct.TYPE_5__*, %struct.TYPE_5__** %726, align 8
  %728 = load i64, i64* %36, align 8
  %729 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %727, i64 %728
  %730 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %729, i32 0, i32 0
  %731 = call i32 @atomic_dec(i32* %730)
  br label %732

732:                                              ; preds = %721, %716
  %733 = load i64, i64* %27, align 8
  %734 = load i64, i64* %26, align 8
  %735 = load %struct.super_block*, %struct.super_block** %22, align 8
  %736 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %735)
  %737 = mul i64 %734, %736
  %738 = add i64 %733, %737
  %739 = load %struct.inode*, %struct.inode** %28, align 8
  %740 = getelementptr inbounds %struct.inode, %struct.inode* %739, i32 0, i32 0
  store i64 %738, i64* %740, align 8
  %741 = load %struct.inode*, %struct.inode** %28, align 8
  %742 = getelementptr inbounds %struct.inode, %struct.inode* %741, i32 0, i32 6
  store i64 0, i64* %742, align 8
  %743 = load %struct.inode*, %struct.inode** %28, align 8
  %744 = call i32 @current_time(%struct.inode* %743)
  %745 = load %struct.inode*, %struct.inode** %28, align 8
  %746 = getelementptr inbounds %struct.inode, %struct.inode* %745, i32 0, i32 4
  store i32 %744, i32* %746, align 8
  %747 = load %struct.inode*, %struct.inode** %28, align 8
  %748 = getelementptr inbounds %struct.inode, %struct.inode* %747, i32 0, i32 5
  store i32 %744, i32* %748, align 4
  %749 = load %struct.inode*, %struct.inode** %28, align 8
  %750 = getelementptr inbounds %struct.inode, %struct.inode* %749, i32 0, i32 3
  store i32 %744, i32* %750, align 4
  %751 = load %struct.inode*, %struct.inode** %28, align 8
  %752 = getelementptr inbounds %struct.inode, %struct.inode* %751, i32 0, i32 3
  %753 = load i32, i32* %752, align 4
  %754 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %755 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %754, i32 0, i32 13
  store i32 %753, i32* %755, align 4
  %756 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %757 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %756, i32 0, i32 12
  %758 = load i32, i32* %757, align 8
  %759 = call i32 @memset(i32 %758, i32 0, i32 4)
  %760 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %761 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %760, i32 0, i32 11
  store i64 0, i64* %761, align 8
  %762 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %763 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %762, i32 0, i32 10
  store i64 0, i64* %763, align 8
  %764 = load i8*, i8** %14, align 8
  %765 = load %struct.inode*, %struct.inode** %13, align 8
  %766 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %765)
  %767 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %766, i32 0, i32 1
  %768 = load i32, i32* %767, align 8
  %769 = load i32, i32* @EXT4_FL_INHERITED, align 4
  %770 = and i32 %768, %769
  %771 = call i32 @ext4_mask_flags(i8* %764, i32 %770)
  %772 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %773 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %772, i32 0, i32 1
  store i32 %771, i32* %773, align 8
  %774 = load i32, i32* %18, align 4
  %775 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %776 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 8
  %778 = or i32 %777, %774
  store i32 %778, i32* %776, align 8
  %779 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %780 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %779, i32 0, i32 9
  store i64 0, i64* %780, align 8
  %781 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %782 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %781, i32 0, i32 8
  store i64 0, i64* %782, align 8
  %783 = load i64, i64* %26, align 8
  %784 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %785 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %784, i32 0, i32 2
  store i64 %783, i64* %785, align 8
  %786 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %787 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %786, i32 0, i32 0
  store i64 -1, i64* %787, align 8
  %788 = load %struct.inode*, %struct.inode** %28, align 8
  %789 = call i32 @ext4_set_inode_flags(%struct.inode* %788)
  %790 = load %struct.inode*, %struct.inode** %28, align 8
  %791 = call i64 @IS_DIRSYNC(%struct.inode* %790)
  %792 = icmp ne i64 %791, 0
  br i1 %792, label %793, label %796

793:                                              ; preds = %732
  %794 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %795 = call i32 @ext4_handle_sync(%struct.posix_acl* %794)
  br label %796

796:                                              ; preds = %793, %732
  %797 = load %struct.inode*, %struct.inode** %28, align 8
  %798 = call i64 @insert_inode_locked(%struct.inode* %797)
  %799 = icmp slt i64 %798, 0
  br i1 %799, label %800, label %812

800:                                              ; preds = %796
  %801 = load i32, i32* @EIO, align 4
  %802 = sub nsw i32 0, %801
  store i32 %802, i32* %33, align 4
  %803 = load %struct.super_block*, %struct.super_block** %22, align 8
  %804 = load %struct.inode*, %struct.inode** %28, align 8
  %805 = getelementptr inbounds %struct.inode, %struct.inode* %804, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = call i32 @ext4_error(%struct.super_block* %803, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %806)
  %808 = load %struct.super_block*, %struct.super_block** %22, align 8
  %809 = load i64, i64* %26, align 8
  %810 = load i32, i32* @EXT4_GROUP_INFO_IBITMAP_CORRUPT, align 4
  %811 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %808, i64 %809, i32 %810)
  br label %977

812:                                              ; preds = %796
  %813 = call i64 (...) @prandom_u32()
  %814 = load %struct.inode*, %struct.inode** %28, align 8
  %815 = getelementptr inbounds %struct.inode, %struct.inode* %814, i32 0, i32 1
  store i64 %813, i64* %815, align 8
  %816 = load %struct.super_block*, %struct.super_block** %22, align 8
  %817 = call i64 @ext4_has_metadata_csum(%struct.super_block* %816)
  %818 = icmp ne i64 %817, 0
  br i1 %818, label %819, label %839

819:                                              ; preds = %812
  %820 = load %struct.inode*, %struct.inode** %28, align 8
  %821 = getelementptr inbounds %struct.inode, %struct.inode* %820, i32 0, i32 0
  %822 = load i64, i64* %821, align 8
  %823 = call i32 @cpu_to_le32(i64 %822)
  store i32 %823, i32* %44, align 4
  %824 = load %struct.inode*, %struct.inode** %28, align 8
  %825 = getelementptr inbounds %struct.inode, %struct.inode* %824, i32 0, i32 1
  %826 = load i64, i64* %825, align 8
  %827 = call i32 @cpu_to_le32(i64 %826)
  store i32 %827, i32* %45, align 4
  %828 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %829 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %830 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %829, i32 0, i32 1
  %831 = load i32, i32* %830, align 4
  %832 = call i8* @ext4_chksum(%struct.ext4_sb_info* %828, i32 %831, i32* %44, i32 4)
  %833 = ptrtoint i8* %832 to i32
  store i32 %833, i32* %43, align 4
  %834 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %835 = load i32, i32* %43, align 4
  %836 = call i8* @ext4_chksum(%struct.ext4_sb_info* %834, i32 %835, i32* %45, i32 4)
  %837 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %838 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %837, i32 0, i32 7
  store i8* %836, i8** %838, align 8
  br label %839

839:                                              ; preds = %819, %812
  %840 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %841 = call i32 @ext4_clear_state_flags(%struct.ext4_inode_info* %840)
  %842 = load %struct.inode*, %struct.inode** %28, align 8
  %843 = load i32, i32* @EXT4_STATE_NEW, align 4
  %844 = call i32 @ext4_set_inode_state(%struct.inode* %842, i32 %843)
  %845 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %31, align 8
  %846 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %845, i32 0, i32 2
  %847 = load i32, i32* %846, align 8
  %848 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %849 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %848, i32 0, i32 6
  store i32 %847, i32* %849, align 8
  %850 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %851 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %850, i32 0, i32 5
  store i64 0, i64* %851, align 8
  %852 = load %struct.super_block*, %struct.super_block** %22, align 8
  %853 = call i64 @ext4_has_feature_inline_data(%struct.super_block* %852)
  %854 = icmp ne i64 %853, 0
  br i1 %854, label %855, label %859

855:                                              ; preds = %839
  %856 = load %struct.inode*, %struct.inode** %28, align 8
  %857 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %858 = call i32 @ext4_set_inode_state(%struct.inode* %856, i32 %857)
  br label %859

859:                                              ; preds = %855, %839
  %860 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %860, %struct.inode** %34, align 8
  %861 = load %struct.inode*, %struct.inode** %28, align 8
  %862 = call i32 @dquot_alloc_inode(%struct.inode* %861)
  store i32 %862, i32* %33, align 4
  %863 = load i32, i32* %33, align 4
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %866

865:                                              ; preds = %859
  br label %972

866:                                              ; preds = %859
  %867 = load i32, i32* %38, align 4
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %878

869:                                              ; preds = %866
  %870 = load %struct.inode*, %struct.inode** %13, align 8
  %871 = load %struct.inode*, %struct.inode** %28, align 8
  %872 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %873 = call i32 @fscrypt_inherit_context(%struct.inode* %870, %struct.inode* %871, %struct.posix_acl* %872, i32 1)
  store i32 %873, i32* %33, align 4
  %874 = load i32, i32* %33, align 4
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %877

876:                                              ; preds = %869
  br label %969

877:                                              ; preds = %869
  br label %878

878:                                              ; preds = %877, %866
  %879 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %880 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %879, i32 0, i32 1
  %881 = load i32, i32* %880, align 8
  %882 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %883 = and i32 %881, %882
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %903, label %885

885:                                              ; preds = %878
  %886 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %887 = load %struct.inode*, %struct.inode** %28, align 8
  %888 = load %struct.inode*, %struct.inode** %13, align 8
  %889 = call i32 @ext4_init_acl(%struct.posix_acl* %886, %struct.inode* %887, %struct.inode* %888)
  store i32 %889, i32* %33, align 4
  %890 = load i32, i32* %33, align 4
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %893

892:                                              ; preds = %885
  br label %969

893:                                              ; preds = %885
  %894 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %895 = load %struct.inode*, %struct.inode** %28, align 8
  %896 = load %struct.inode*, %struct.inode** %13, align 8
  %897 = load %struct.qstr*, %struct.qstr** %15, align 8
  %898 = call i32 @ext4_init_security(%struct.posix_acl* %894, %struct.inode* %895, %struct.inode* %896, %struct.qstr* %897)
  store i32 %898, i32* %33, align 4
  %899 = load i32, i32* %33, align 4
  %900 = icmp ne i32 %899, 0
  br i1 %900, label %901, label %902

901:                                              ; preds = %893
  br label %969

902:                                              ; preds = %893
  br label %903

903:                                              ; preds = %902, %878
  %904 = load %struct.super_block*, %struct.super_block** %22, align 8
  %905 = call i64 @ext4_has_feature_extents(%struct.super_block* %904)
  %906 = icmp ne i64 %905, 0
  br i1 %906, label %907, label %927

907:                                              ; preds = %903
  %908 = load i8*, i8** %14, align 8
  %909 = call i64 @S_ISDIR(i8* %908)
  %910 = icmp ne i64 %909, 0
  br i1 %910, label %919, label %911

911:                                              ; preds = %907
  %912 = load i8*, i8** %14, align 8
  %913 = call i64 @S_ISREG(i8* %912)
  %914 = icmp ne i64 %913, 0
  br i1 %914, label %919, label %915

915:                                              ; preds = %911
  %916 = load i8*, i8** %14, align 8
  %917 = call i64 @S_ISLNK(i8* %916)
  %918 = icmp ne i64 %917, 0
  br i1 %918, label %919, label %926

919:                                              ; preds = %915, %911, %907
  %920 = load %struct.inode*, %struct.inode** %28, align 8
  %921 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %922 = call i32 @ext4_set_inode_flag(%struct.inode* %920, i32 %921)
  %923 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %924 = load %struct.inode*, %struct.inode** %28, align 8
  %925 = call i32 @ext4_ext_tree_init(%struct.posix_acl* %923, %struct.inode* %924)
  br label %926

926:                                              ; preds = %919, %915
  br label %927

927:                                              ; preds = %926, %903
  %928 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %929 = call i64 @ext4_handle_valid(%struct.posix_acl* %928)
  %930 = icmp ne i64 %929, 0
  br i1 %930, label %931, label %946

931:                                              ; preds = %927
  %932 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %933 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %932, i32 0, i32 1
  %934 = load %struct.TYPE_6__*, %struct.TYPE_6__** %933, align 8
  %935 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %934, i32 0, i32 0
  %936 = load i32, i32* %935, align 4
  %937 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %938 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %937, i32 0, i32 4
  store i32 %936, i32* %938, align 4
  %939 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %940 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %939, i32 0, i32 1
  %941 = load %struct.TYPE_6__*, %struct.TYPE_6__** %940, align 8
  %942 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %941, i32 0, i32 0
  %943 = load i32, i32* %942, align 4
  %944 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %30, align 8
  %945 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %944, i32 0, i32 3
  store i32 %943, i32* %945, align 8
  br label %946

946:                                              ; preds = %931, %927
  %947 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %948 = load %struct.inode*, %struct.inode** %28, align 8
  %949 = call i32 @ext4_mark_inode_dirty(%struct.posix_acl* %947, %struct.inode* %948)
  store i32 %949, i32* %33, align 4
  %950 = load i32, i32* %33, align 4
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %956

952:                                              ; preds = %946
  %953 = load %struct.super_block*, %struct.super_block** %22, align 8
  %954 = load i32, i32* %33, align 4
  %955 = call i32 @ext4_std_error(%struct.super_block* %953, i32 %954)
  br label %969

956:                                              ; preds = %946
  %957 = load %struct.inode*, %struct.inode** %28, align 8
  %958 = getelementptr inbounds %struct.inode, %struct.inode* %957, i32 0, i32 0
  %959 = load i64, i64* %958, align 8
  %960 = call i32 @ext4_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %959)
  %961 = load %struct.inode*, %struct.inode** %28, align 8
  %962 = load %struct.inode*, %struct.inode** %13, align 8
  %963 = load i8*, i8** %14, align 8
  %964 = call i32 @trace_ext4_allocate_inode(%struct.inode* %961, %struct.inode* %962, i8* %963)
  %965 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %966 = bitcast %struct.buffer_head* %965 to %struct.posix_acl*
  %967 = call i32 @brelse(%struct.posix_acl* %966)
  %968 = load %struct.inode*, %struct.inode** %34, align 8
  store %struct.inode* %968, %struct.inode** %11, align 8
  br label %992

969:                                              ; preds = %952, %901, %892, %876
  %970 = load %struct.inode*, %struct.inode** %28, align 8
  %971 = call i32 @dquot_free_inode(%struct.inode* %970)
  br label %972

972:                                              ; preds = %969, %865
  %973 = load %struct.inode*, %struct.inode** %28, align 8
  %974 = call i32 @clear_nlink(%struct.inode* %973)
  %975 = load %struct.inode*, %struct.inode** %28, align 8
  %976 = call i32 @unlock_new_inode(%struct.inode* %975)
  br label %977

977:                                              ; preds = %972, %800, %701, %572, %509, %495, %470, %456, %443, %386, %369, %291, %276, %218
  %978 = load %struct.inode*, %struct.inode** %28, align 8
  %979 = call i32 @dquot_drop(%struct.inode* %978)
  %980 = load i32, i32* @S_NOQUOTA, align 4
  %981 = load %struct.inode*, %struct.inode** %28, align 8
  %982 = getelementptr inbounds %struct.inode, %struct.inode* %981, i32 0, i32 2
  %983 = load i32, i32* %982, align 8
  %984 = or i32 %983, %980
  store i32 %984, i32* %982, align 8
  %985 = load %struct.inode*, %struct.inode** %28, align 8
  %986 = call i32 @iput(%struct.inode* %985)
  %987 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %988 = bitcast %struct.buffer_head* %987 to %struct.posix_acl*
  %989 = call i32 @brelse(%struct.posix_acl* %988)
  %990 = load i32, i32* %33, align 4
  %991 = call %struct.inode* @ERR_PTR(i32 %990)
  store %struct.inode* %991, %struct.inode** %11, align 8
  br label %992

992:                                              ; preds = %977, %956, %146, %108, %101, %67, %53
  %993 = load %struct.inode*, %struct.inode** %11, align 8
  ret %struct.inode* %993
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.ext4_sb_info*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @DUMMY_ENCRYPTION_ENABLED(%struct.ext4_sb_info*) #1

declare dso_local i64 @S_ISREG(i8*) #1

declare dso_local i64 @S_ISDIR(i8*) #1

declare dso_local i64 @S_ISLNK(i8*) #1

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local i32 @fscrypt_has_encryption_key(%struct.inode*) #1

declare dso_local i32 @__ext4_xattr_set_credits(%struct.super_block*, i32*, i32*, i32, i32) #1

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @trace_ext4_request_inode(%struct.inode*, i8*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i8*) #1

declare dso_local i64 @ext4_has_feature_project(%struct.super_block*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @make_kprojid(i32*, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @find_group_orlov(%struct.super_block*, %struct.inode*, i64*, i8*, %struct.qstr*) #1

declare dso_local i32 @find_group_other(%struct.super_block*, %struct.inode*, i64*, i8*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, %struct.posix_acl**) #1

declare dso_local i64 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i64) #1

declare dso_local i64 @EXT4_MB_GRP_IBITMAP_CORRUPT(%struct.ext4_group_info*) #1

declare dso_local i32 @brelse(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @ext4_read_inode_bitmap(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @find_inode_bit(%struct.super_block*, i64, %struct.posix_acl*, i64*) #1

declare dso_local i64 @EXT4_FIRST_INO(%struct.super_block*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i64) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.posix_acl* @__ext4_journal_start_sb(%struct.super_block*, i32, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @ext4_std_error(%struct.super_block*, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.posix_acl*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(%struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_test_and_set_bit(i64, i32) #1

declare dso_local i32 @ext4_set_bit(i64, i32) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_handle_dirty_metadata(%struct.posix_acl*, i32*, %struct.posix_acl*) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.posix_acl* @ext4_read_block_bitmap(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_free_group_clusters_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_free_clusters_after_init(%struct.super_block*, i64, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_block_bitmap_csum_set(%struct.super_block*, i64, %struct.ext4_group_desc*, %struct.posix_acl*) #1

declare dso_local i32 @ext4_group_desc_csum_set(%struct.super_block*, i64, %struct.ext4_group_desc*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @ext4_itable_unused_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_itable_unused_set(%struct.super_block*, %struct.ext4_group_desc*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_free_inodes_set(%struct.super_block*, %struct.ext4_group_desc*, i64) #1

declare dso_local i32 @ext4_used_dirs_set(%struct.super_block*, %struct.ext4_group_desc*, i64) #1

declare dso_local i64 @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_flex_group(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ext4_inode_bitmap_csum_set(%struct.super_block*, i64, %struct.ext4_group_desc*, %struct.posix_acl*, i32) #1

declare dso_local i32 @percpu_counter_dec(i32*) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext4_mask_flags(i8*, i32) #1

declare dso_local i32 @ext4_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.posix_acl*) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i64 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i8* @ext4_chksum(%struct.ext4_sb_info*, i32, i32*, i32) #1

declare dso_local i32 @ext4_clear_state_flags(%struct.ext4_inode_info*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @ext4_has_feature_inline_data(%struct.super_block*) #1

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #1

declare dso_local i32 @fscrypt_inherit_context(%struct.inode*, %struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @ext4_init_acl(%struct.posix_acl*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_init_security(%struct.posix_acl*, %struct.inode*, %struct.inode*, %struct.qstr*) #1

declare dso_local i64 @ext4_has_feature_extents(%struct.super_block*) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_tree_init(%struct.posix_acl*, %struct.inode*) #1

declare dso_local i64 @ext4_handle_valid(%struct.posix_acl*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.posix_acl*, %struct.inode*) #1

declare dso_local i32 @ext4_debug(i8*, i64) #1

declare dso_local i32 @trace_ext4_allocate_inode(%struct.inode*, %struct.inode*, i8*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F2FS_PROJINHERIT_FL = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@F2FS_DEF_PROJID = common dso_local global i32 0, align 4
@FI_NEW_INODE = common dso_local global i32 0, align 4
@FI_EXTRA_ATTR = common dso_local global i32 0, align 4
@F2FS_TOTAL_EXTRA_ATTR_SIZE = common dso_local global i32 0, align 4
@INLINE_XATTR = common dso_local global i32 0, align 4
@FI_INLINE_XATTR = common dso_local global i32 0, align 4
@INLINE_DATA = common dso_local global i32 0, align 4
@FI_INLINE_DATA = common dso_local global i32 0, align 4
@FI_INLINE_DENTRY = common dso_local global i32 0, align 4
@DEFAULT_INLINE_XATTR_ADDRS = common dso_local global i32 0, align 4
@F2FS_FL_INHERITED = common dso_local global i32 0, align 4
@F2FS_INDEX_FL = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@FI_FREE_NID = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, i32)* @f2fs_new_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @f2fs_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inode* @new_inode(i32 %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %3, align 8
  br label %304

25:                                               ; preds = %2
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %27 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %26)
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %29 = call i32 @f2fs_alloc_nid(%struct.f2fs_sb_info* %28, i32* %7)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %33 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %32)
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %261

36:                                               ; preds = %25
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %38 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %37)
  store i32 1, i32* %9, align 4
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @inode_init_owner(%struct.inode* %39, %struct.inode* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call i32 @current_time(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  store i32 %49, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = call i32 (...) @prandom_u32()
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISDIR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %36
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %36
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call i32 @insert_inode_locked(%struct.inode* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %261

82:                                               ; preds = %74
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %84 = call i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @F2FS_PROJINHERIT_FL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 4
  br label %108

102:                                              ; preds = %86, %82
  %103 = load i32, i32* @F2FS_DEF_PROJID, align 4
  %104 = call i32 @make_kprojid(i32* @init_user_ns, i32 %103)
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call i32 @dquot_initialize(%struct.inode* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %278

114:                                              ; preds = %108
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = load i32, i32* @FI_NEW_INODE, align 4
  %117 = call i32 @set_inode_flag(%struct.inode* %115, i32 %116)
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = call i64 @IS_ENCRYPTED(%struct.inode* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %123 = call i64 @DUMMY_ENCRYPTION_ENABLED(%struct.f2fs_sb_info* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121, %114
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call i64 @f2fs_may_encrypt(%struct.inode* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = call i32 @f2fs_set_encrypted_inode(%struct.inode* %130)
  br label %132

132:                                              ; preds = %129, %125, %121
  %133 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %134 = call i64 @f2fs_sb_has_extra_attr(%struct.f2fs_sb_info* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = load i32, i32* @FI_EXTRA_ATTR, align 4
  %139 = call i32 @set_inode_flag(%struct.inode* %137, i32 %138)
  %140 = load i32, i32* @F2FS_TOTAL_EXTRA_ATTR_SIZE, align 4
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %136, %132
  %145 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %146 = load i32, i32* @INLINE_XATTR, align 4
  %147 = call i64 @test_opt(%struct.f2fs_sb_info* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.inode*, %struct.inode** %8, align 8
  %151 = load i32, i32* @FI_INLINE_XATTR, align 4
  %152 = call i32 @set_inode_flag(%struct.inode* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %155 = load i32, i32* @INLINE_DATA, align 4
  %156 = call i64 @test_opt(%struct.f2fs_sb_info* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = call i64 @f2fs_may_inline_data(%struct.inode* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = load i32, i32* @FI_INLINE_DATA, align 4
  %165 = call i32 @set_inode_flag(%struct.inode* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158, %153
  %167 = load %struct.inode*, %struct.inode** %8, align 8
  %168 = call i64 @f2fs_may_inline_dentry(%struct.inode* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.inode*, %struct.inode** %8, align 8
  %172 = load i32, i32* @FI_INLINE_DENTRY, align 4
  %173 = call i32 @set_inode_flag(%struct.inode* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %166
  %175 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %176 = call i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %174
  %179 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %180 = load %struct.inode*, %struct.inode** %8, align 8
  %181 = call i32 @f2fs_has_extra_attr(%struct.inode* %180)
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %179, i32 %184)
  %186 = load %struct.inode*, %struct.inode** %8, align 8
  %187 = call i64 @f2fs_has_inline_xattr(%struct.inode* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %178
  %190 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %191 = call i32 @F2FS_OPTION(%struct.f2fs_sb_info* %190)
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %191, i32* %192, align 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %189, %178
  br label %207

196:                                              ; preds = %174
  %197 = load %struct.inode*, %struct.inode** %8, align 8
  %198 = call i64 @f2fs_has_inline_xattr(%struct.inode* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load %struct.inode*, %struct.inode** %8, align 8
  %202 = call i64 @f2fs_has_inline_dentry(%struct.inode* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200, %196
  %205 = load i32, i32* @DEFAULT_INLINE_XATTR_ADDRS, align 4
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %204, %200
  br label %207

207:                                              ; preds = %206, %195
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.inode*, %struct.inode** %8, align 8
  %210 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %209)
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  store i32 %208, i32* %211, align 4
  %212 = load %struct.inode*, %struct.inode** %8, align 8
  %213 = call i32 @f2fs_init_extent_tree(%struct.inode* %212, i32* null)
  %214 = load %struct.inode*, %struct.inode** %8, align 8
  %215 = call i32 @stat_inc_inline_xattr(%struct.inode* %214)
  %216 = load %struct.inode*, %struct.inode** %8, align 8
  %217 = call i32 @stat_inc_inline_inode(%struct.inode* %216)
  %218 = load %struct.inode*, %struct.inode** %8, align 8
  %219 = call i32 @stat_inc_inline_dir(%struct.inode* %218)
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.inode*, %struct.inode** %4, align 8
  %222 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @F2FS_FL_INHERITED, align 4
  %226 = and i32 %224, %225
  %227 = call i32 @f2fs_mask_flags(i32 %220, i32 %226)
  %228 = load %struct.inode*, %struct.inode** %8, align 8
  %229 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %228)
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 4
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @S_ISDIR(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %207
  %237 = load i32, i32* @F2FS_INDEX_FL, align 4
  %238 = load %struct.inode*, %struct.inode** %8, align 8
  %239 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %238)
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %237
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %236, %207
  %244 = load %struct.inode*, %struct.inode** %8, align 8
  %245 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %244)
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @F2FS_PROJINHERIT_FL, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load %struct.inode*, %struct.inode** %8, align 8
  %253 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %254 = call i32 @set_inode_flag(%struct.inode* %252, i32 %253)
  br label %255

255:                                              ; preds = %251, %243
  %256 = load %struct.inode*, %struct.inode** %8, align 8
  %257 = call i32 @f2fs_set_inode_flags(%struct.inode* %256)
  %258 = load %struct.inode*, %struct.inode** %8, align 8
  %259 = call i32 @trace_f2fs_new_inode(%struct.inode* %258, i32 0)
  %260 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %260, %struct.inode** %3, align 8
  br label %304

261:                                              ; preds = %79, %31
  %262 = load %struct.inode*, %struct.inode** %8, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @trace_f2fs_new_inode(%struct.inode* %262, i32 %263)
  %265 = load %struct.inode*, %struct.inode** %8, align 8
  %266 = call i32 @make_bad_inode(%struct.inode* %265)
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %261
  %270 = load %struct.inode*, %struct.inode** %8, align 8
  %271 = load i32, i32* @FI_FREE_NID, align 4
  %272 = call i32 @set_inode_flag(%struct.inode* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %261
  %274 = load %struct.inode*, %struct.inode** %8, align 8
  %275 = call i32 @iput(%struct.inode* %274)
  %276 = load i32, i32* %11, align 4
  %277 = call %struct.inode* @ERR_PTR(i32 %276)
  store %struct.inode* %277, %struct.inode** %3, align 8
  br label %304

278:                                              ; preds = %113
  %279 = load %struct.inode*, %struct.inode** %8, align 8
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @trace_f2fs_new_inode(%struct.inode* %279, i32 %280)
  %282 = load %struct.inode*, %struct.inode** %8, align 8
  %283 = call i32 @dquot_drop(%struct.inode* %282)
  %284 = load i32, i32* @S_NOQUOTA, align 4
  %285 = load %struct.inode*, %struct.inode** %8, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load i32, i32* %9, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %278
  %292 = load %struct.inode*, %struct.inode** %8, align 8
  %293 = load i32, i32* @FI_FREE_NID, align 4
  %294 = call i32 @set_inode_flag(%struct.inode* %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %278
  %296 = load %struct.inode*, %struct.inode** %8, align 8
  %297 = call i32 @clear_nlink(%struct.inode* %296)
  %298 = load %struct.inode*, %struct.inode** %8, align 8
  %299 = call i32 @unlock_new_inode(%struct.inode* %298)
  %300 = load %struct.inode*, %struct.inode** %8, align 8
  %301 = call i32 @iput(%struct.inode* %300)
  %302 = load i32, i32* %11, align 4
  %303 = call %struct.inode* @ERR_PTR(i32 %302)
  store %struct.inode* %303, %struct.inode** %3, align 8
  br label %304

304:                                              ; preds = %295, %273, %255, %21
  %305 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %305
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_alloc_nid(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @insert_inode_locked(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info*) #1

declare dso_local i32 @make_kprojid(i32*, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @DUMMY_ENCRYPTION_ENABLED(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_may_encrypt(%struct.inode*) #1

declare dso_local i32 @f2fs_set_encrypted_inode(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_extra_attr(%struct.f2fs_sb_info*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_may_inline_data(%struct.inode*) #1

declare dso_local i64 @f2fs_may_inline_dentry(%struct.inode*) #1

declare dso_local i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_has_extra_attr(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_xattr(%struct.inode*) #1

declare dso_local i32 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @f2fs_init_extent_tree(%struct.inode*, i32*) #1

declare dso_local i32 @stat_inc_inline_xattr(%struct.inode*) #1

declare dso_local i32 @stat_inc_inline_inode(%struct.inode*) #1

declare dso_local i32 @stat_inc_inline_dir(%struct.inode*) #1

declare dso_local i32 @f2fs_mask_flags(i32, i32) #1

declare dso_local i32 @f2fs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

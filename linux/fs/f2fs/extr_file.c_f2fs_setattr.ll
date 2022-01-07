; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@SBI_QUOTA_NEED_REPAIR = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@ATTR_MODE = common dso_local global i32 0, align 4
@FI_ACL_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call i32 @F2FS_I_SB(%struct.inode* %11)
  %13 = call i32 @f2fs_cp_error(i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %264

19:                                               ; preds = %2
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = call i32 @setattr_prepare(%struct.dentry* %20, %struct.iattr* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %264

27:                                               ; preds = %19
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = load %struct.iattr*, %struct.iattr** %5, align 8
  %30 = call i32 @fscrypt_prepare_setattr(%struct.dentry* %28, %struct.iattr* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %264

35:                                               ; preds = %27
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = load %struct.iattr*, %struct.iattr** %5, align 8
  %38 = call i32 @fsverity_prepare_setattr(%struct.dentry* %36, %struct.iattr* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %264

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.iattr*, %struct.iattr** %5, align 8
  %46 = call i64 @is_quota_modification(%struct.inode* %44, %struct.iattr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @dquot_initialize(%struct.inode* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %264

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.iattr*, %struct.iattr** %5, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ATTR_UID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @uid_eq(i32 %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63, %56
  %73 = load %struct.iattr*, %struct.iattr** %5, align 8
  %74 = getelementptr inbounds %struct.iattr, %struct.iattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ATTR_GID, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %138

79:                                               ; preds = %72
  %80 = load %struct.iattr*, %struct.iattr** %5, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gid_eq(i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %138, label %88

88:                                               ; preds = %79, %63
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call i32 @F2FS_I_SB(%struct.inode* %89)
  %91 = call i32 @f2fs_lock_op(i32 %90)
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load %struct.iattr*, %struct.iattr** %5, align 8
  %94 = call i32 @dquot_transfer(%struct.inode* %92, %struct.iattr* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %88
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call i32 @F2FS_I_SB(%struct.inode* %98)
  %100 = load i32, i32* @SBI_QUOTA_NEED_REPAIR, align 4
  %101 = call i32 @set_sbi_flag(i32 %99, i32 %100)
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = call i32 @F2FS_I_SB(%struct.inode* %102)
  %104 = call i32 @f2fs_unlock_op(i32 %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %264

106:                                              ; preds = %88
  %107 = load %struct.iattr*, %struct.iattr** %5, align 8
  %108 = getelementptr inbounds %struct.iattr, %struct.iattr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ATTR_UID, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.iattr*, %struct.iattr** %5, align 8
  %115 = getelementptr inbounds %struct.iattr, %struct.iattr* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.iattr*, %struct.iattr** %5, align 8
  %121 = getelementptr inbounds %struct.iattr, %struct.iattr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ATTR_GID, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.iattr*, %struct.iattr** %5, align 8
  %128 = getelementptr inbounds %struct.iattr, %struct.iattr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %119
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %133, i32 1)
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = call i32 @F2FS_I_SB(%struct.inode* %135)
  %137 = call i32 @f2fs_unlock_op(i32 %136)
  br label %138

138:                                              ; preds = %132, %79, %72
  %139 = load %struct.iattr*, %struct.iattr** %5, align 8
  %140 = getelementptr inbounds %struct.iattr, %struct.iattr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ATTR_SIZE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %224

145:                                              ; preds = %138
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = call i8* @i_size_read(%struct.inode* %146)
  %148 = ptrtoint i8* %147 to i64
  store i64 %148, i64* %8, align 8
  %149 = load %struct.iattr*, %struct.iattr** %5, align 8
  %150 = getelementptr inbounds %struct.iattr, %struct.iattr* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = call i64 @MAX_INLINE_DATA(%struct.inode* %152)
  %154 = icmp sgt i64 %151, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %145
  %156 = load %struct.inode*, %struct.inode** %6, align 8
  %157 = call i32 @f2fs_convert_inline_inode(%struct.inode* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %264

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %145
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %164)
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @WRITE, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = call i32 @down_write(i32* %169)
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %171)
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 4
  %174 = call i32 @down_write(i32* %173)
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = load %struct.iattr*, %struct.iattr** %5, align 8
  %177 = getelementptr inbounds %struct.iattr, %struct.iattr* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @truncate_setsize(%struct.inode* %175, i64 %178)
  %180 = load %struct.iattr*, %struct.iattr** %5, align 8
  %181 = getelementptr inbounds %struct.iattr, %struct.iattr* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %8, align 8
  %184 = icmp sle i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %163
  %186 = load %struct.inode*, %struct.inode** %6, align 8
  %187 = call i32 @f2fs_truncate(%struct.inode* %186)
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %185, %163
  %189 = load %struct.inode*, %struct.inode** %6, align 8
  %190 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %189)
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = call i32 @up_write(i32* %191)
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %193)
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @WRITE, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = call i32 @up_write(i32* %198)
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %188
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %3, align 4
  br label %264

204:                                              ; preds = %188
  %205 = load %struct.inode*, %struct.inode** %6, align 8
  %206 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %205)
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = call i32 @down_write(i32* %207)
  %209 = load %struct.inode*, %struct.inode** %6, align 8
  %210 = call i32 @current_time(%struct.inode* %209)
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.inode*, %struct.inode** %6, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 2
  store i32 %210, i32* %214, align 4
  %215 = load %struct.inode*, %struct.inode** %6, align 8
  %216 = call i8* @i_size_read(%struct.inode* %215)
  %217 = load %struct.inode*, %struct.inode** %6, align 8
  %218 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %217)
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  store i8* %216, i8** %219, align 8
  %220 = load %struct.inode*, %struct.inode** %6, align 8
  %221 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %220)
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = call i32 @up_write(i32* %222)
  br label %224

224:                                              ; preds = %204, %138
  %225 = load %struct.inode*, %struct.inode** %6, align 8
  %226 = load %struct.iattr*, %struct.iattr** %5, align 8
  %227 = call i32 @__setattr_copy(%struct.inode* %225, %struct.iattr* %226)
  %228 = load %struct.iattr*, %struct.iattr** %5, align 8
  %229 = getelementptr inbounds %struct.iattr, %struct.iattr* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @ATTR_MODE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %224
  %235 = load %struct.inode*, %struct.inode** %6, align 8
  %236 = load %struct.inode*, %struct.inode** %6, align 8
  %237 = call i32 @f2fs_get_inode_mode(%struct.inode* %236)
  %238 = call i32 @posix_acl_chmod(%struct.inode* %235, i32 %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %234
  %242 = load %struct.inode*, %struct.inode** %6, align 8
  %243 = load i32, i32* @FI_ACL_MODE, align 4
  %244 = call i64 @is_inode_flag_set(%struct.inode* %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %241, %234
  %247 = load %struct.inode*, %struct.inode** %6, align 8
  %248 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %247)
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.inode*, %struct.inode** %6, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 4
  %253 = load %struct.inode*, %struct.inode** %6, align 8
  %254 = load i32, i32* @FI_ACL_MODE, align 4
  %255 = call i32 @clear_inode_flag(%struct.inode* %253, i32 %254)
  br label %256

256:                                              ; preds = %246, %241
  br label %257

257:                                              ; preds = %256, %224
  %258 = load %struct.inode*, %struct.inode** %6, align 8
  %259 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %258, i32 1)
  %260 = load %struct.inode*, %struct.inode** %6, align 8
  %261 = call i32 @F2FS_I_SB(%struct.inode* %260)
  %262 = call i32 @f2fs_balance_fs(i32 %261, i32 1)
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %257, %202, %160, %97, %53, %41, %33, %25, %16
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @fscrypt_prepare_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @fsverity_prepare_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @is_quota_modification(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @f2fs_lock_op(i32) #1

declare dso_local i32 @dquot_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @set_sbi_flag(i32, i32) #1

declare dso_local i32 @f2fs_unlock_op(i32) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i8* @i_size_read(%struct.inode*) #1

declare dso_local i64 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_truncate(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @__setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_get_inode_mode(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_balance_fs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

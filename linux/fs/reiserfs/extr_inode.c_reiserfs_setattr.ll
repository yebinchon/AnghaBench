; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.inode = type { i64, i32, i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i64 0, align 8
@MAX_NON_LFS = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.reiserfs_transaction_handle, align 4
  %11 = alloca %struct.reiserfs_transaction_handle, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.iattr*, %struct.iattr** %5, align 8
  %17 = call i32 @setattr_prepare(%struct.dentry* %15, %struct.iattr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %356

22:                                               ; preds = %2
  %23 = load i32, i32* @ATTR_KILL_SUID, align 4
  %24 = load i32, i32* @ATTR_KILL_SGID, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.iattr*, %struct.iattr** %5, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.iattr*, %struct.iattr** %5, align 8
  %33 = call i64 @is_quota_modification(%struct.inode* %31, %struct.iattr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i32 @dquot_initialize(%struct.inode* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %356

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @reiserfs_write_lock(i32 %46)
  %48 = load %struct.iattr*, %struct.iattr** %5, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATTR_SIZE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %127

54:                                               ; preds = %43
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i64 @get_inode_item_key_version(%struct.inode* %55)
  %57 = load i64, i64* @KEY_FORMAT_3_5, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.iattr*, %struct.iattr** %5, align 8
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAX_NON_LFS, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @reiserfs_write_unlock(i32 %68)
  %70 = load i32, i32* @EFBIG, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %354

72:                                               ; preds = %59, %54
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call i32 @inode_dio_wait(%struct.inode* %73)
  %75 = load %struct.iattr*, %struct.iattr** %5, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %126

82:                                               ; preds = %72
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = load %struct.iattr*, %struct.iattr** %5, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @generic_cont_expand_simple(%struct.inode* %83, i64 %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %82
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %10, i32 %96, i32 4)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = call i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle* %10, %struct.inode* %101)
  %103 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %104
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @reiserfs_write_unlock(i32 %116)
  br label %354

118:                                              ; preds = %110
  %119 = load i32, i32* @ATTR_MTIME, align 4
  %120 = load i32, i32* @ATTR_CTIME, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.iattr*, %struct.iattr** %5, align 8
  %123 = getelementptr inbounds %struct.iattr, %struct.iattr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %118, %72
  br label %127

127:                                              ; preds = %126, %43
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @reiserfs_write_unlock(i32 %130)
  %132 = load %struct.iattr*, %struct.iattr** %5, align 8
  %133 = getelementptr inbounds %struct.iattr, %struct.iattr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ATTR_UID, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %127
  %139 = load %struct.iattr*, %struct.iattr** %5, align 8
  %140 = getelementptr inbounds %struct.iattr, %struct.iattr* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @from_kuid(i32* @init_user_ns, i32 %141)
  %143 = and i32 %142, -65536
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %138, %127
  %146 = load %struct.iattr*, %struct.iattr** %5, align 8
  %147 = getelementptr inbounds %struct.iattr, %struct.iattr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ATTR_GID, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %145
  %153 = load %struct.iattr*, %struct.iattr** %5, align 8
  %154 = getelementptr inbounds %struct.iattr, %struct.iattr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @from_kgid(i32* @init_user_ns, i32 %155)
  %157 = and i32 %156, -65536
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152, %138
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = call i64 @get_inode_sd_version(%struct.inode* %160)
  %162 = load i64, i64* @STAT_DATA_V1, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %8, align 4
  br label %354

167:                                              ; preds = %159, %152, %145
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @ATTR_UID, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.iattr*, %struct.iattr** %5, align 8
  %174 = getelementptr inbounds %struct.iattr, %struct.iattr* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.inode*, %struct.inode** %6, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @uid_eq(i32 %175, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %172, %167
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @ATTR_GID, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %285

186:                                              ; preds = %181
  %187 = load %struct.iattr*, %struct.iattr** %5, align 8
  %188 = getelementptr inbounds %struct.iattr, %struct.iattr* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @gid_eq(i32 %189, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %285, label %195

195:                                              ; preds = %186, %172
  %196 = load %struct.inode*, %struct.inode** %6, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(i32 %198)
  %200 = load %struct.inode*, %struct.inode** %6, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @REISERFS_QUOTA_DEL_BLOCKS(i32 %202)
  %204 = add nsw i32 %199, %203
  %205 = mul nsw i32 2, %204
  %206 = add nsw i32 %205, 2
  store i32 %206, i32* %12, align 4
  %207 = load %struct.inode*, %struct.inode** %6, align 8
  %208 = load %struct.iattr*, %struct.iattr** %5, align 8
  %209 = call i32 @reiserfs_chown_xattrs(%struct.inode* %207, %struct.iattr* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %195
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %3, align 4
  br label %356

214:                                              ; preds = %195
  %215 = load %struct.inode*, %struct.inode** %6, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @reiserfs_write_lock(i32 %217)
  %219 = load %struct.inode*, %struct.inode** %6, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %11, i32 %221, i32 %222)
  store i32 %223, i32* %8, align 4
  %224 = load %struct.inode*, %struct.inode** %6, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @reiserfs_write_unlock(i32 %226)
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %214
  br label %354

231:                                              ; preds = %214
  %232 = load %struct.inode*, %struct.inode** %6, align 8
  %233 = load %struct.iattr*, %struct.iattr** %5, align 8
  %234 = call i32 @dquot_transfer(%struct.inode* %232, %struct.iattr* %233)
  store i32 %234, i32* %8, align 4
  %235 = load %struct.inode*, %struct.inode** %6, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @reiserfs_write_lock(i32 %237)
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %231
  %242 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %11)
  %243 = load %struct.inode*, %struct.inode** %6, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @reiserfs_write_unlock(i32 %245)
  br label %354

247:                                              ; preds = %231
  %248 = load %struct.iattr*, %struct.iattr** %5, align 8
  %249 = getelementptr inbounds %struct.iattr, %struct.iattr* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @ATTR_UID, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %247
  %255 = load %struct.iattr*, %struct.iattr** %5, align 8
  %256 = getelementptr inbounds %struct.iattr, %struct.iattr* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.inode*, %struct.inode** %6, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %254, %247
  %261 = load %struct.iattr*, %struct.iattr** %5, align 8
  %262 = getelementptr inbounds %struct.iattr, %struct.iattr* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ATTR_GID, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %260
  %268 = load %struct.iattr*, %struct.iattr** %5, align 8
  %269 = getelementptr inbounds %struct.iattr, %struct.iattr* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.inode*, %struct.inode** %6, align 8
  %272 = getelementptr inbounds %struct.inode, %struct.inode* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %267, %260
  %274 = load %struct.inode*, %struct.inode** %6, align 8
  %275 = call i32 @mark_inode_dirty(%struct.inode* %274)
  %276 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %11)
  store i32 %276, i32* %8, align 4
  %277 = load %struct.inode*, %struct.inode** %6, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @reiserfs_write_unlock(i32 %279)
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %273
  br label %354

284:                                              ; preds = %273
  br label %285

285:                                              ; preds = %284, %186, %181
  %286 = load %struct.iattr*, %struct.iattr** %5, align 8
  %287 = getelementptr inbounds %struct.iattr, %struct.iattr* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @ATTR_SIZE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %324

292:                                              ; preds = %285
  %293 = load %struct.iattr*, %struct.iattr** %5, align 8
  %294 = getelementptr inbounds %struct.iattr, %struct.iattr* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.inode*, %struct.inode** %6, align 8
  %297 = call i64 @i_size_read(%struct.inode* %296)
  %298 = icmp ne i64 %295, %297
  br i1 %298, label %299, label %324

299:                                              ; preds = %292
  %300 = load %struct.inode*, %struct.inode** %6, align 8
  %301 = load %struct.iattr*, %struct.iattr** %5, align 8
  %302 = getelementptr inbounds %struct.iattr, %struct.iattr* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @inode_newsize_ok(%struct.inode* %300, i64 %303)
  store i32 %304, i32* %8, align 4
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %323, label %307

307:                                              ; preds = %299
  %308 = load %struct.inode*, %struct.inode** %6, align 8
  %309 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %308)
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 1
  %311 = call i32 @mutex_lock(i32* %310)
  %312 = load %struct.inode*, %struct.inode** %6, align 8
  %313 = load %struct.iattr*, %struct.iattr** %5, align 8
  %314 = getelementptr inbounds %struct.iattr, %struct.iattr* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @truncate_setsize(%struct.inode* %312, i64 %315)
  %317 = load %struct.inode*, %struct.inode** %6, align 8
  %318 = call i32 @reiserfs_truncate_file(%struct.inode* %317, i32 1)
  %319 = load %struct.inode*, %struct.inode** %6, align 8
  %320 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %319)
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 1
  %322 = call i32 @mutex_unlock(i32* %321)
  br label %323

323:                                              ; preds = %307, %299
  br label %324

324:                                              ; preds = %323, %292, %285
  %325 = load i32, i32* %8, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %324
  %328 = load %struct.inode*, %struct.inode** %6, align 8
  %329 = load %struct.iattr*, %struct.iattr** %5, align 8
  %330 = call i32 @setattr_copy(%struct.inode* %328, %struct.iattr* %329)
  %331 = load %struct.inode*, %struct.inode** %6, align 8
  %332 = call i32 @mark_inode_dirty(%struct.inode* %331)
  br label %333

333:                                              ; preds = %327, %324
  %334 = load i32, i32* %8, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %353, label %336

336:                                              ; preds = %333
  %337 = load %struct.inode*, %struct.inode** %6, align 8
  %338 = getelementptr inbounds %struct.inode, %struct.inode* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @reiserfs_posixacl(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %353

342:                                              ; preds = %336
  %343 = load %struct.iattr*, %struct.iattr** %5, align 8
  %344 = getelementptr inbounds %struct.iattr, %struct.iattr* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @ATTR_MODE, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load %struct.inode*, %struct.inode** %6, align 8
  %351 = call i32 @reiserfs_acl_chmod(%struct.inode* %350)
  store i32 %351, i32* %8, align 4
  br label %352

352:                                              ; preds = %349, %342
  br label %353

353:                                              ; preds = %352, %336, %333
  br label %354

354:                                              ; preds = %353, %283, %241, %230, %164, %113, %65
  %355 = load i32, i32* %8, align 4
  store i32 %355, i32* %3, align 4
  br label %356

356:                                              ; preds = %354, %212, %40, %20
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @is_quota_modification(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i64 @get_inode_item_key_version(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @generic_cont_expand_simple(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i64 @get_inode_sd_version(%struct.inode*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @REISERFS_QUOTA_DEL_BLOCKS(i32) #1

declare dso_local i32 @reiserfs_chown_xattrs(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @dquot_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @reiserfs_truncate_file(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @reiserfs_posixacl(i32) #1

declare dso_local i32 @reiserfs_acl_chmod(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

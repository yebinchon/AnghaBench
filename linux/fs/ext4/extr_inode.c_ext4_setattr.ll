; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.inode = type { i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.ext4_sb_info = type { i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@EXT4_HT_QUOTA = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_sb_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.iattr*, %struct.iattr** %5, align 8
  %19 = getelementptr inbounds %struct.iattr, %struct.iattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ext4_sb_info* @EXT4_SB(i32 %23)
  %25 = call i32 @ext4_forced_shutdown(%struct.ext4_sb_info* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %465

31:                                               ; preds = %2
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @IS_IMMUTABLE(%struct.inode* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %465

39:                                               ; preds = %31
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i64 @IS_APPEND(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ATTR_MODE, align 4
  %46 = load i32, i32* @ATTR_UID, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ATTR_GID, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ATTR_TIMES_SET, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %44, %51
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %43, %39
  %55 = phi i1 [ false, %39 ], [ %53, %43 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %465

62:                                               ; preds = %54
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = call i32 @setattr_prepare(%struct.dentry* %63, %struct.iattr* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %465

70:                                               ; preds = %62
  %71 = load %struct.dentry*, %struct.dentry** %4, align 8
  %72 = load %struct.iattr*, %struct.iattr** %5, align 8
  %73 = call i32 @fscrypt_prepare_setattr(%struct.dentry* %71, %struct.iattr* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %465

78:                                               ; preds = %70
  %79 = load %struct.dentry*, %struct.dentry** %4, align 8
  %80 = load %struct.iattr*, %struct.iattr** %5, align 8
  %81 = call i32 @fsverity_prepare_setattr(%struct.dentry* %79, %struct.iattr* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %465

86:                                               ; preds = %78
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.iattr*, %struct.iattr** %5, align 8
  %89 = call i64 @is_quota_modification(%struct.inode* %87, %struct.iattr* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = call i32 @dquot_initialize(%struct.inode* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %465

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %86
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ATTR_UID, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.iattr*, %struct.iattr** %5, align 8
  %106 = getelementptr inbounds %struct.iattr, %struct.iattr* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @uid_eq(i32 %107, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %104, %99
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @ATTR_GID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %197

118:                                              ; preds = %113
  %119 = load %struct.iattr*, %struct.iattr** %5, align 8
  %120 = getelementptr inbounds %struct.iattr, %struct.iattr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @gid_eq(i32 %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %197, label %127

127:                                              ; preds = %118, %104
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = load i32, i32* @EXT4_HT_QUOTA, align 4
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(i32 %132)
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @EXT4_MAXQUOTAS_DEL_BLOCKS(i32 %136)
  %138 = add nsw i32 %133, %137
  %139 = add nsw i32 %138, 3
  %140 = call i32* @ext4_journal_start(%struct.inode* %128, i32 %129, i32 %139)
  store i32* %140, i32** %11, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i64 @IS_ERR(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %127
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @PTR_ERR(i32* %145)
  store i32 %146, i32* %7, align 4
  br label %453

147:                                              ; preds = %127
  %148 = load %struct.inode*, %struct.inode** %6, align 8
  %149 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %148)
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = call i32 @down_read(i32* %150)
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = load %struct.iattr*, %struct.iattr** %5, align 8
  %154 = call i32 @dquot_transfer(%struct.inode* %152, %struct.iattr* %153)
  store i32 %154, i32* %7, align 4
  %155 = load %struct.inode*, %struct.inode** %6, align 8
  %156 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %155)
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = call i32 @up_read(i32* %157)
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %147
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @ext4_journal_stop(i32* %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %465

165:                                              ; preds = %147
  %166 = load %struct.iattr*, %struct.iattr** %5, align 8
  %167 = getelementptr inbounds %struct.iattr, %struct.iattr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ATTR_UID, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load %struct.iattr*, %struct.iattr** %5, align 8
  %174 = getelementptr inbounds %struct.iattr, %struct.iattr* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.inode*, %struct.inode** %6, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %165
  %179 = load %struct.iattr*, %struct.iattr** %5, align 8
  %180 = getelementptr inbounds %struct.iattr, %struct.iattr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ATTR_GID, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load %struct.iattr*, %struct.iattr** %5, align 8
  %187 = getelementptr inbounds %struct.iattr, %struct.iattr* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.inode*, %struct.inode** %6, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %185, %178
  %192 = load i32*, i32** %11, align 8
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = call i32 @ext4_mark_inode_dirty(i32* %192, %struct.inode* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32*, i32** %11, align 8
  %196 = call i32 @ext4_journal_stop(i32* %195)
  br label %197

197:                                              ; preds = %191, %118, %113
  %198 = load %struct.iattr*, %struct.iattr** %5, align 8
  %199 = getelementptr inbounds %struct.iattr, %struct.iattr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @ATTR_SIZE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %418

204:                                              ; preds = %197
  %205 = load %struct.inode*, %struct.inode** %6, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %13, align 8
  %208 = load %struct.iattr*, %struct.iattr** %5, align 8
  %209 = getelementptr inbounds %struct.iattr, %struct.iattr* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.inode*, %struct.inode** %6, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp slt i64 %210, %213
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %14, align 4
  %216 = load %struct.inode*, %struct.inode** %6, align 8
  %217 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %218 = call i32 @ext4_test_inode_flag(%struct.inode* %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %236, label %220

220:                                              ; preds = %204
  %221 = load %struct.inode*, %struct.inode** %6, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call %struct.ext4_sb_info* @EXT4_SB(i32 %223)
  store %struct.ext4_sb_info* %224, %struct.ext4_sb_info** %15, align 8
  %225 = load %struct.iattr*, %struct.iattr** %5, align 8
  %226 = getelementptr inbounds %struct.iattr, %struct.iattr* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %229 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %227, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %220
  %233 = load i32, i32* @EFBIG, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %3, align 4
  br label %465

235:                                              ; preds = %220
  br label %236

236:                                              ; preds = %235, %204
  %237 = load %struct.inode*, %struct.inode** %6, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @S_ISREG(i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %465

245:                                              ; preds = %236
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = call i64 @IS_I_VERSION(%struct.inode* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %245
  %250 = load %struct.iattr*, %struct.iattr** %5, align 8
  %251 = getelementptr inbounds %struct.iattr, %struct.iattr* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.inode*, %struct.inode** %6, align 8
  %254 = getelementptr inbounds %struct.inode, %struct.inode* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %252, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load %struct.inode*, %struct.inode** %6, align 8
  %259 = call i32 @inode_inc_iversion(%struct.inode* %258)
  br label %260

260:                                              ; preds = %257, %249, %245
  %261 = load i32, i32* %14, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %280

263:                                              ; preds = %260
  %264 = load %struct.inode*, %struct.inode** %6, align 8
  %265 = call i64 @ext4_should_order_data(%struct.inode* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %263
  %268 = load %struct.inode*, %struct.inode** %6, align 8
  %269 = load %struct.iattr*, %struct.iattr** %5, align 8
  %270 = getelementptr inbounds %struct.iattr, %struct.iattr* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @ext4_begin_ordered_truncate(%struct.inode* %268, i64 %271)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %453

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276, %263
  %278 = load %struct.inode*, %struct.inode** %6, align 8
  %279 = call i32 @inode_dio_wait(%struct.inode* %278)
  br label %280

280:                                              ; preds = %277, %260
  %281 = load %struct.inode*, %struct.inode** %6, align 8
  %282 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %281)
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = call i32 @down_write(i32* %283)
  %285 = load %struct.inode*, %struct.inode** %6, align 8
  %286 = call i32 @ext4_break_layouts(%struct.inode* %285)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %280
  %290 = load %struct.inode*, %struct.inode** %6, align 8
  %291 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %290)
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 1
  %293 = call i32 @up_write(i32* %292)
  %294 = load i32, i32* %8, align 4
  store i32 %294, i32* %3, align 4
  br label %465

295:                                              ; preds = %280
  %296 = load %struct.iattr*, %struct.iattr** %5, align 8
  %297 = getelementptr inbounds %struct.iattr, %struct.iattr* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.inode*, %struct.inode** %6, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %298, %301
  br i1 %302, label %303, label %393

303:                                              ; preds = %295
  %304 = load %struct.inode*, %struct.inode** %6, align 8
  %305 = load i32, i32* @EXT4_HT_INODE, align 4
  %306 = call i32* @ext4_journal_start(%struct.inode* %304, i32 %305, i32 3)
  store i32* %306, i32** %12, align 8
  %307 = load i32*, i32** %12, align 8
  %308 = call i64 @IS_ERR(i32* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load i32*, i32** %12, align 8
  %312 = call i32 @PTR_ERR(i32* %311)
  store i32 %312, i32* %7, align 4
  br label %413

313:                                              ; preds = %303
  %314 = load i32*, i32** %12, align 8
  %315 = call i64 @ext4_handle_valid(i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %313
  %318 = load i32, i32* %14, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load i32*, i32** %12, align 8
  %322 = load %struct.inode*, %struct.inode** %6, align 8
  %323 = call i32 @ext4_orphan_add(i32* %321, %struct.inode* %322)
  store i32 %323, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %324

324:                                              ; preds = %320, %317, %313
  %325 = load i32, i32* %14, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %337, label %327

327:                                              ; preds = %324
  %328 = load %struct.inode*, %struct.inode** %6, align 8
  %329 = call i32 @current_time(%struct.inode* %328)
  %330 = load %struct.inode*, %struct.inode** %6, align 8
  %331 = getelementptr inbounds %struct.inode, %struct.inode* %330, i32 0, i32 4
  store i32 %329, i32* %331, align 8
  %332 = load %struct.inode*, %struct.inode** %6, align 8
  %333 = getelementptr inbounds %struct.inode, %struct.inode* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.inode*, %struct.inode** %6, align 8
  %336 = getelementptr inbounds %struct.inode, %struct.inode* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 4
  br label %337

337:                                              ; preds = %327, %324
  %338 = load %struct.inode*, %struct.inode** %6, align 8
  %339 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %338)
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 2
  %341 = call i32 @down_write(i32* %340)
  %342 = load %struct.iattr*, %struct.iattr** %5, align 8
  %343 = getelementptr inbounds %struct.iattr, %struct.iattr* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.inode*, %struct.inode** %6, align 8
  %346 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %345)
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  store i64 %344, i64* %347, align 8
  %348 = load i32*, i32** %12, align 8
  %349 = load %struct.inode*, %struct.inode** %6, align 8
  %350 = call i32 @ext4_mark_inode_dirty(i32* %348, %struct.inode* %349)
  store i32 %350, i32* %8, align 4
  %351 = load i32, i32* %7, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %337
  %354 = load i32, i32* %8, align 4
  store i32 %354, i32* %7, align 4
  br label %355

355:                                              ; preds = %353, %337
  %356 = load i32, i32* %7, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %364, label %358

358:                                              ; preds = %355
  %359 = load %struct.inode*, %struct.inode** %6, align 8
  %360 = load %struct.iattr*, %struct.iattr** %5, align 8
  %361 = getelementptr inbounds %struct.iattr, %struct.iattr* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @i_size_write(%struct.inode* %359, i64 %362)
  br label %364

364:                                              ; preds = %358, %355
  %365 = load %struct.inode*, %struct.inode** %6, align 8
  %366 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %365)
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 2
  %368 = call i32 @up_write(i32* %367)
  %369 = load i32*, i32** %12, align 8
  %370 = call i32 @ext4_journal_stop(i32* %369)
  %371 = load i32, i32* %7, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %364
  br label %413

374:                                              ; preds = %364
  %375 = load i32, i32* %14, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %384, label %377

377:                                              ; preds = %374
  %378 = load %struct.inode*, %struct.inode** %6, align 8
  %379 = load i64, i64* %13, align 8
  %380 = load %struct.inode*, %struct.inode** %6, align 8
  %381 = getelementptr inbounds %struct.inode, %struct.inode* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @pagecache_isize_extended(%struct.inode* %378, i64 %379, i64 %382)
  br label %392

384:                                              ; preds = %374
  %385 = load %struct.inode*, %struct.inode** %6, align 8
  %386 = call i64 @ext4_should_journal_data(%struct.inode* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %384
  %389 = load %struct.inode*, %struct.inode** %6, align 8
  %390 = call i32 @ext4_wait_for_tail_page_commit(%struct.inode* %389)
  br label %391

391:                                              ; preds = %388, %384
  br label %392

392:                                              ; preds = %391, %377
  br label %393

393:                                              ; preds = %392, %295
  %394 = load %struct.inode*, %struct.inode** %6, align 8
  %395 = load %struct.inode*, %struct.inode** %6, align 8
  %396 = getelementptr inbounds %struct.inode, %struct.inode* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = call i32 @truncate_pagecache(%struct.inode* %394, i64 %397)
  %399 = load %struct.iattr*, %struct.iattr** %5, align 8
  %400 = getelementptr inbounds %struct.iattr, %struct.iattr* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* %13, align 8
  %403 = icmp sle i64 %401, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %393
  %405 = load %struct.inode*, %struct.inode** %6, align 8
  %406 = call i32 @ext4_truncate(%struct.inode* %405)
  store i32 %406, i32* %8, align 4
  %407 = load i32, i32* %8, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %404
  %410 = load i32, i32* %8, align 4
  store i32 %410, i32* %7, align 4
  br label %411

411:                                              ; preds = %409, %404
  br label %412

412:                                              ; preds = %411, %393
  br label %413

413:                                              ; preds = %412, %373, %310
  %414 = load %struct.inode*, %struct.inode** %6, align 8
  %415 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %414)
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 1
  %417 = call i32 @up_write(i32* %416)
  br label %418

418:                                              ; preds = %413, %197
  %419 = load i32, i32* %7, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %418
  %422 = load %struct.inode*, %struct.inode** %6, align 8
  %423 = load %struct.iattr*, %struct.iattr** %5, align 8
  %424 = call i32 @setattr_copy(%struct.inode* %422, %struct.iattr* %423)
  %425 = load %struct.inode*, %struct.inode** %6, align 8
  %426 = call i32 @mark_inode_dirty(%struct.inode* %425)
  br label %427

427:                                              ; preds = %421, %418
  %428 = load i32, i32* %9, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %438

430:                                              ; preds = %427
  %431 = load %struct.inode*, %struct.inode** %6, align 8
  %432 = getelementptr inbounds %struct.inode, %struct.inode* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load %struct.inode*, %struct.inode** %6, align 8
  %437 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %436)
  br label %438

438:                                              ; preds = %435, %430, %427
  %439 = load i32, i32* %7, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %452, label %441

441:                                              ; preds = %438
  %442 = load i32, i32* %10, align 4
  %443 = load i32, i32* @ATTR_MODE, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %441
  %447 = load %struct.inode*, %struct.inode** %6, align 8
  %448 = load %struct.inode*, %struct.inode** %6, align 8
  %449 = getelementptr inbounds %struct.inode, %struct.inode* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @posix_acl_chmod(%struct.inode* %447, i32 %450)
  store i32 %451, i32* %8, align 4
  br label %452

452:                                              ; preds = %446, %441, %438
  br label %453

453:                                              ; preds = %452, %275, %144
  %454 = load %struct.inode*, %struct.inode** %6, align 8
  %455 = getelementptr inbounds %struct.inode, %struct.inode* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* %7, align 4
  %458 = call i32 @ext4_std_error(i32 %456, i32 %457)
  %459 = load i32, i32* %7, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %453
  %462 = load i32, i32* %8, align 4
  store i32 %462, i32* %7, align 4
  br label %463

463:                                              ; preds = %461, %453
  %464 = load i32, i32* %7, align 4
  store i32 %464, i32* %3, align 4
  br label %465

465:                                              ; preds = %463, %289, %242, %232, %161, %96, %84, %76, %68, %59, %36, %28
  %466 = load i32, i32* %3, align 4
  ret i32 %466
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.ext4_sb_info*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @fscrypt_prepare_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @fsverity_prepare_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @is_quota_modification(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_MAXQUOTAS_INIT_BLOCKS(i32) #1

declare dso_local i32 @EXT4_MAXQUOTAS_DEL_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @dquot_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_I_VERSION(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i64 @ext4_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext4_begin_ordered_truncate(%struct.inode*, i64) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_break_layouts(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @ext4_handle_valid(i32*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @pagecache_isize_extended(%struct.inode*, i64, i64) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_wait_for_tail_page_commit(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

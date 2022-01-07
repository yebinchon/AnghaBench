; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_do_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_do_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.inode = type { i32, i64, i32, i32, i32 }
%struct.fuse_conn = type { i32, i64, i32 }
%struct.fuse_inode = type { i32, i32 }
%struct.fuse_setattr_in = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.fuse_attr_out = type { %struct.TYPE_3__, i32, i32, i32 }

@args = common dso_local global i32 0, align 4
@ATTR_FORCE = common dso_local global i32 0, align 4
@ATTR_OPEN = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@FUSE_I_SIZE_UNSTABLE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@FATTR_FH = common dso_local global i32 0, align 4
@FATTR_LOCKOWNER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EINTR = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_do_setattr(%struct.dentry* %0, %struct.iattr* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_inode*, align 8
  %11 = alloca %struct.fuse_setattr_in, align 8
  %12 = alloca %struct.fuse_attr_out, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fuse_file*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %21)
  store %struct.fuse_conn* %22, %struct.fuse_conn** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %23)
  store %struct.fuse_inode* %24, %struct.fuse_inode** %10, align 8
  %25 = load i32, i32* @args, align 4
  %26 = call i32 @FUSE_ARGS(i32 %25)
  store i32 0, i32* %13, align 4
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @S_ISREG(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %3
  %39 = phi i1 [ false, %3 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ATTR_FORCE, align 4
  %47 = load %struct.iattr*, %struct.iattr** %6, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = load %struct.iattr*, %struct.iattr** %6, align 8
  %54 = call i32 @setattr_prepare(%struct.dentry* %52, %struct.iattr* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %4, align 4
  br label %365

59:                                               ; preds = %51
  %60 = load %struct.iattr*, %struct.iattr** %6, align 8
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ATTR_OPEN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %59
  %67 = load %struct.iattr*, %struct.iattr** %6, align 8
  %68 = getelementptr inbounds %struct.iattr, %struct.iattr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ATTR_SIZE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON(i32 %74)
  %76 = load %struct.iattr*, %struct.iattr** %6, align 8
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON(i32 %80)
  %82 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %83 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @i_size_write(%struct.inode* %87, i64 0)
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = call i32 @truncate_pagecache(%struct.inode* %89, i64 0)
  store i32 0, i32* %4, align 4
  br label %365

91:                                               ; preds = %66
  store %struct.file* null, %struct.file** %7, align 8
  br label %92

92:                                               ; preds = %91, %59
  %93 = load %struct.iattr*, %struct.iattr** %6, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATTR_SIZE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @S_ISREG(i32 %102)
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @WARN_ON(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %365

112:                                              ; preds = %99
  store i32 1, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %113
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @S_ISREG(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %116
  %123 = load %struct.iattr*, %struct.iattr** %6, align 8
  %124 = getelementptr inbounds %struct.iattr, %struct.iattr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ATTR_MODE, align 4
  %127 = load i32, i32* @ATTR_UID, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ATTR_GID, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @ATTR_MTIME_SET, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @ATTR_TIMES_SET, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %125, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %122
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = call i32 @write_inode_now(%struct.inode* %138, i32 1)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %4, align 4
  br label %365

144:                                              ; preds = %137
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = call i32 @fuse_set_nowrite(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %8, align 8
  %148 = call i32 @fuse_release_nowrite(%struct.inode* %147)
  br label %149

149:                                              ; preds = %144, %122, %116, %113
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %149
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = call i32 @fuse_set_nowrite(%struct.inode* %153)
  %155 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %156 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %157 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %156, i32 0, i32 0
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %152
  %162 = load %struct.iattr*, %struct.iattr** %6, align 8
  %163 = getelementptr inbounds %struct.iattr, %struct.iattr* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %161
  %170 = load i32, i32* @ATTR_MTIME, align 4
  %171 = load i32, i32* @ATTR_CTIME, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.iattr*, %struct.iattr** %6, align 8
  %174 = getelementptr inbounds %struct.iattr, %struct.iattr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %169, %161, %152
  br label %178

178:                                              ; preds = %177, %149
  %179 = call i32 @memset(%struct.fuse_setattr_in* %11, i32 0, i32 32)
  %180 = bitcast %struct.fuse_attr_out* %12 to %struct.fuse_setattr_in*
  %181 = call i32 @memset(%struct.fuse_setattr_in* %180, i32 0, i32 32)
  %182 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %183 = load %struct.iattr*, %struct.iattr** %6, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @iattr_to_fattr(%struct.fuse_conn* %182, %struct.iattr* %183, %struct.fuse_setattr_in* %11, i32 %184)
  %186 = load %struct.file*, %struct.file** %7, align 8
  %187 = icmp ne %struct.file* %186, null
  br i1 %187, label %188, label %200

188:                                              ; preds = %178
  %189 = load %struct.file*, %struct.file** %7, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 0
  %191 = load %struct.fuse_file*, %struct.fuse_file** %190, align 8
  store %struct.fuse_file* %191, %struct.fuse_file** %18, align 8
  %192 = load i32, i32* @FATTR_FH, align 4
  %193 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %11, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %192
  store i32 %195, i32* %193, align 4
  %196 = load %struct.fuse_file*, %struct.fuse_file** %18, align 8
  %197 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %11, i32 0, i32 3
  store i32 %198, i32* %199, align 8
  br label %200

200:                                              ; preds = %188, %178
  %201 = load %struct.iattr*, %struct.iattr** %6, align 8
  %202 = getelementptr inbounds %struct.iattr, %struct.iattr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ATTR_SIZE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %200
  %208 = load i32, i32* @FATTR_LOCKOWNER, align 4
  %209 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %11, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %208
  store i32 %211, i32* %209, align 4
  %212 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %212, i32 %215)
  %217 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %11, i32 0, i32 1
  store i32 %216, i32* %217, align 8
  br label %218

218:                                              ; preds = %207, %200
  %219 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %220 = load %struct.inode*, %struct.inode** %8, align 8
  %221 = bitcast %struct.fuse_attr_out* %12 to %struct.fuse_setattr_in*
  %222 = call i32 @fuse_setattr_fill(%struct.fuse_conn* %219, i32* @args, %struct.inode* %220, %struct.fuse_setattr_in* %11, %struct.fuse_setattr_in* %221)
  %223 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %224 = call i32 @fuse_simple_request(%struct.fuse_conn* %223, i32* @args)
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %218
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* @EINTR, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.inode*, %struct.inode** %8, align 8
  %234 = call i32 @fuse_invalidate_attr(%struct.inode* %233)
  br label %235

235:                                              ; preds = %232, %227
  br label %353

236:                                              ; preds = %218
  %237 = load %struct.inode*, %struct.inode** %8, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %12, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = xor i32 %239, %242
  %244 = load i32, i32* @S_IFMT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %236
  %248 = load %struct.inode*, %struct.inode** %8, align 8
  %249 = call i32 @make_bad_inode(%struct.inode* %248)
  %250 = load i32, i32* @EIO, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %16, align 4
  br label %353

252:                                              ; preds = %236
  %253 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %254 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %253, i32 0, i32 1
  %255 = call i32 @spin_lock(i32* %254)
  %256 = load i32, i32* %17, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %285

258:                                              ; preds = %252
  %259 = load %struct.iattr*, %struct.iattr** %6, align 8
  %260 = getelementptr inbounds %struct.iattr, %struct.iattr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @ATTR_MTIME, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %258
  %266 = load %struct.iattr*, %struct.iattr** %6, align 8
  %267 = getelementptr inbounds %struct.iattr, %struct.iattr* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.inode*, %struct.inode** %8, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %265, %258
  %272 = load %struct.iattr*, %struct.iattr** %6, align 8
  %273 = getelementptr inbounds %struct.iattr, %struct.iattr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ATTR_CTIME, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load %struct.iattr*, %struct.iattr** %6, align 8
  %280 = getelementptr inbounds %struct.iattr, %struct.iattr* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.inode*, %struct.inode** %8, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %278, %271
  br label %285

285:                                              ; preds = %284, %252
  %286 = load %struct.inode*, %struct.inode** %8, align 8
  %287 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %12, i32 0, i32 0
  %288 = bitcast %struct.fuse_attr_out* %12 to %struct.fuse_setattr_in*
  %289 = call i32 @attr_timeout(%struct.fuse_setattr_in* %288)
  %290 = call i32 @fuse_change_attributes_common(%struct.inode* %286, %struct.TYPE_3__* %287, i32 %289)
  %291 = load %struct.inode*, %struct.inode** %8, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %15, align 8
  %294 = load i32, i32* %14, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %285
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  %300 = load %struct.inode*, %struct.inode** %8, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @S_ISREG(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %299, %296, %285
  %306 = load %struct.inode*, %struct.inode** %8, align 8
  %307 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %12, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @i_size_write(%struct.inode* %306, i64 %309)
  br label %311

311:                                              ; preds = %305, %299
  %312 = load i32, i32* %13, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load %struct.inode*, %struct.inode** %8, align 8
  %316 = call i32 @__fuse_release_nowrite(%struct.inode* %315)
  br label %317

317:                                              ; preds = %314, %311
  %318 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %319 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %318, i32 0, i32 1
  %320 = call i32 @spin_unlock(i32* %319)
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %317
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %348, label %326

326:                                              ; preds = %323, %317
  %327 = load %struct.inode*, %struct.inode** %8, align 8
  %328 = getelementptr inbounds %struct.inode, %struct.inode* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i64 @S_ISREG(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %326
  %333 = load i64, i64* %15, align 8
  %334 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %12, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %333, %336
  br i1 %337, label %338, label %348

338:                                              ; preds = %332
  %339 = load %struct.inode*, %struct.inode** %8, align 8
  %340 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %12, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @truncate_pagecache(%struct.inode* %339, i64 %342)
  %344 = load %struct.inode*, %struct.inode** %8, align 8
  %345 = getelementptr inbounds %struct.inode, %struct.inode* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @invalidate_inode_pages2(i32 %346)
  br label %348

348:                                              ; preds = %338, %332, %326, %323
  %349 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %350 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %351 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %350, i32 0, i32 0
  %352 = call i32 @clear_bit(i32 %349, i32* %351)
  store i32 0, i32* %4, align 4
  br label %365

353:                                              ; preds = %247, %235
  %354 = load i32, i32* %13, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load %struct.inode*, %struct.inode** %8, align 8
  %358 = call i32 @fuse_release_nowrite(%struct.inode* %357)
  br label %359

359:                                              ; preds = %356, %353
  %360 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %361 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %362 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %361, i32 0, i32 0
  %363 = call i32 @clear_bit(i32 %360, i32* %362)
  %364 = load i32, i32* %16, align 4
  store i32 %364, i32* %4, align 4
  br label %365

365:                                              ; preds = %359, %348, %142, %109, %86, %57
  %366 = load i32, i32* %4, align 4
  ret i32 %366
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @fuse_set_nowrite(%struct.inode*) #1

declare dso_local i32 @fuse_release_nowrite(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.fuse_setattr_in*, i32, i32) #1

declare dso_local i32 @iattr_to_fattr(%struct.fuse_conn*, %struct.iattr*, %struct.fuse_setattr_in*, i32) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32) #1

declare dso_local i32 @fuse_setattr_fill(%struct.fuse_conn*, i32*, %struct.inode*, %struct.fuse_setattr_in*, %struct.fuse_setattr_in*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fuse_change_attributes_common(%struct.inode*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @attr_timeout(%struct.fuse_setattr_in*) #1

declare dso_local i32 @__fuse_release_nowrite(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

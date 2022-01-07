; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_setattr_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_setattr_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.iattr = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.nfs_fattr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_MTIME = common dso_local global i32 0, align 4
@NFSIOS_SETATTRTRUNC = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_setattr_update_inode(%struct.inode* %0, %struct.iattr* %1, %struct.nfs_fattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %6, align 8
  %8 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %9 = call i32 @nfs_fattr_set_barrier(%struct.nfs_fattr* %8)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.iattr*, %struct.iattr** %5, align 8
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_SIZE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load i32, i32* @NFS_INO_INVALID_MTIME, align 4
  %28 = call i32 @nfs_set_cache_invalid(%struct.inode* %26, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i32, i32* @NFSIOS_SETATTRTRUNC, align 4
  %31 = call i32 @nfs_inc_stats(%struct.inode* %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load %struct.iattr*, %struct.iattr** %5, align 8
  %34 = getelementptr inbounds %struct.iattr, %struct.iattr* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nfs_vmtruncate(%struct.inode* %32, i32 %35)
  br label %37

37:                                               ; preds = %25, %3
  %38 = load %struct.iattr*, %struct.iattr** %5, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATTR_MODE, align 4
  %42 = load i32, i32* @ATTR_UID, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ATTR_GID, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %131

48:                                               ; preds = %37
  %49 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load %struct.iattr*, %struct.iattr** %5, align 8
  %57 = getelementptr inbounds %struct.iattr, %struct.iattr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ATTR_MODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %48
  %63 = load %struct.iattr*, %struct.iattr** %5, align 8
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @S_IALLUGO, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @S_IALLUGO, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %62, %48
  %80 = load %struct.iattr*, %struct.iattr** %5, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ATTR_UID, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.iattr*, %struct.iattr** %5, align 8
  %88 = getelementptr inbounds %struct.iattr, %struct.iattr* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.iattr*, %struct.iattr** %5, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATTR_GID, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.iattr*, %struct.iattr** %5, align 8
  %101 = getelementptr inbounds %struct.iattr, %struct.iattr* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %107 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %114 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @timespec_to_timespec64(i32 %115)
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %125

119:                                              ; preds = %105
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %122 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @nfs_set_cache_invalid(%struct.inode* %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %112
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %128 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @nfs_set_cache_invalid(%struct.inode* %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %37
  %132 = load %struct.iattr*, %struct.iattr** %5, align 8
  %133 = getelementptr inbounds %struct.iattr, %struct.iattr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ATTR_ATIME_SET, align 4
  %136 = load i32, i32* @ATTR_ATIME, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %202

140:                                              ; preds = %131
  %141 = load i32, i32* @NFS_INO_INVALID_ATIME, align 4
  %142 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %144
  store i32 %149, i32* %147, align 4
  %150 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %151 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @NFS_ATTR_FATTR_ATIME, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %140
  %157 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %158 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @timespec_to_timespec64(i32 %159)
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  br label %181

163:                                              ; preds = %140
  %164 = load %struct.iattr*, %struct.iattr** %5, align 8
  %165 = getelementptr inbounds %struct.iattr, %struct.iattr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ATTR_ATIME_SET, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load %struct.iattr*, %struct.iattr** %5, align 8
  %172 = getelementptr inbounds %struct.iattr, %struct.iattr* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.inode*, %struct.inode** %4, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  br label %180

176:                                              ; preds = %163
  %177 = load %struct.inode*, %struct.inode** %4, align 8
  %178 = load i32, i32* @NFS_INO_INVALID_ATIME, align 4
  %179 = call i32 @nfs_set_cache_invalid(%struct.inode* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %170
  br label %181

181:                                              ; preds = %180, %156
  %182 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %183 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %190 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @timespec_to_timespec64(i32 %191)
  %193 = load %struct.inode*, %struct.inode** %4, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  br label %201

195:                                              ; preds = %181
  %196 = load %struct.inode*, %struct.inode** %4, align 8
  %197 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %198 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @nfs_set_cache_invalid(%struct.inode* %196, i32 %199)
  br label %201

201:                                              ; preds = %195, %188
  br label %202

202:                                              ; preds = %201, %131
  %203 = load %struct.iattr*, %struct.iattr** %5, align 8
  %204 = getelementptr inbounds %struct.iattr, %struct.iattr* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @ATTR_MTIME_SET, align 4
  %207 = load i32, i32* @ATTR_MTIME, align 4
  %208 = or i32 %206, %207
  %209 = and i32 %205, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %273

211:                                              ; preds = %202
  %212 = load i32, i32* @NFS_INO_INVALID_MTIME, align 4
  %213 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %214 = or i32 %212, %213
  %215 = xor i32 %214, -1
  %216 = load %struct.inode*, %struct.inode** %4, align 8
  %217 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %216)
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, %215
  store i32 %220, i32* %218, align 4
  %221 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %222 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %211
  %228 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %229 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @timespec_to_timespec64(i32 %230)
  %232 = load %struct.inode*, %struct.inode** %4, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  br label %252

234:                                              ; preds = %211
  %235 = load %struct.iattr*, %struct.iattr** %5, align 8
  %236 = getelementptr inbounds %struct.iattr, %struct.iattr* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ATTR_MTIME_SET, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %234
  %242 = load %struct.iattr*, %struct.iattr** %5, align 8
  %243 = getelementptr inbounds %struct.iattr, %struct.iattr* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.inode*, %struct.inode** %4, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  br label %251

247:                                              ; preds = %234
  %248 = load %struct.inode*, %struct.inode** %4, align 8
  %249 = load i32, i32* @NFS_INO_INVALID_MTIME, align 4
  %250 = call i32 @nfs_set_cache_invalid(%struct.inode* %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %241
  br label %252

252:                                              ; preds = %251, %227
  %253 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %254 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %252
  %260 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %261 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @timespec_to_timespec64(i32 %262)
  %264 = load %struct.inode*, %struct.inode** %4, align 8
  %265 = getelementptr inbounds %struct.inode, %struct.inode* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  br label %272

266:                                              ; preds = %252
  %267 = load %struct.inode*, %struct.inode** %4, align 8
  %268 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %269 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @nfs_set_cache_invalid(%struct.inode* %267, i32 %270)
  br label %272

272:                                              ; preds = %266, %259
  br label %273

273:                                              ; preds = %272, %202
  %274 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %275 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = load %struct.inode*, %struct.inode** %4, align 8
  %280 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %281 = call i32 @nfs_update_inode(%struct.inode* %279, %struct.nfs_fattr* %280)
  br label %282

282:                                              ; preds = %278, %273
  %283 = load %struct.inode*, %struct.inode** %4, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 1
  %285 = call i32 @spin_unlock(i32* %284)
  ret void
}

declare dso_local i32 @nfs_fattr_set_barrier(%struct.nfs_fattr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_set_cache_invalid(%struct.inode*, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_vmtruncate(%struct.inode*, i32) #1

declare dso_local i8* @timespec_to_timespec64(i32) #1

declare dso_local i32 @nfs_update_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

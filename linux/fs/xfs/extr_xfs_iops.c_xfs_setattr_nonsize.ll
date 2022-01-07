; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_setattr_nonsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_setattr_nonsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_13__, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.iattr = type { i32, i32, i32 }
%struct.inode = type { i32, i32, i32 }
%struct.xfs_dquot = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@XFS_QMOPT_UQUOTA = common dso_local global i32 0, align 4
@XFS_QMOPT_GQUOTA = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4
@XFS_QMOPT_FORCE_RES = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CAP_FSETID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@xs_ig_attrchg = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_ATTR_NOACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_setattr_nonsize(%struct.xfs_inode* %0, %struct.iattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_dquot*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfs_dquot*, align 8
  %18 = alloca %struct.xfs_dquot*, align 8
  %19 = alloca %struct.xfs_dquot*, align 8
  %20 = alloca %struct.xfs_dquot*, align 8
  %21 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %8, align 8
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %26 = call %struct.inode* @VFS_I(%struct.xfs_inode* %25)
  store %struct.inode* %26, %struct.inode** %9, align 8
  %27 = load %struct.iattr*, %struct.iattr** %6, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  store i32 %33, i32* %16, align 4
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %17, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %18, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %19, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %20, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ATTR_SIZE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = call i64 @XFS_IS_QUOTA_ON(%struct.TYPE_14__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %113

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ATTR_UID, align 4
  %46 = load i32, i32* @ATTR_GID, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %113

50:                                               ; preds = %43
  store i32 0, i32* %21, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ATTR_UID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = call i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_14__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.iattr*, %struct.iattr** %6, align 8
  %61 = getelementptr inbounds %struct.iattr, %struct.iattr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %64 = load i32, i32* %21, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %21, align 4
  br label %70

66:                                               ; preds = %55, %50
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ATTR_GID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = call i64 @XFS_IS_GQUOTA_ON(%struct.TYPE_14__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.iattr*, %struct.iattr** %6, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  %84 = load i32, i32* %21, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %21, align 4
  br label %90

86:                                               ; preds = %75, %70
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.xfs_dquot*, %struct.xfs_dquot** %17, align 8
  %92 = icmp eq %struct.xfs_dquot* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.xfs_dquot*, %struct.xfs_dquot** %18, align 8
  %96 = icmp eq %struct.xfs_dquot* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @xfs_kuid_to_uid(i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @xfs_kgid_to_gid(i32 %102)
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %105 = call i32 @xfs_get_projid(%struct.xfs_inode* %104)
  %106 = load i32, i32* %21, align 4
  %107 = call i32 @xfs_qm_vop_dqalloc(%struct.xfs_inode* %99, i32 %101, i32 %103, i32 %105, i32 %106, %struct.xfs_dquot** %17, %struct.xfs_dquot** %18, i32* null)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %90
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %415

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %43, %3
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = call %struct.TYPE_12__* @M_RES(%struct.TYPE_14__* %115)
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = call i32 @xfs_trans_alloc(%struct.TYPE_14__* %114, i32* %117, i32 0, i32 0, i32 0, %struct.xfs_dquot** %11)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %409

122:                                              ; preds = %113
  %123 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %124 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %125 = call i32 @xfs_ilock(%struct.xfs_inode* %123, i32 %124)
  %126 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %127 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %128 = call i32 @xfs_trans_ijoin(%struct.xfs_dquot* %126, %struct.xfs_inode* %127, i32 0)
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @ATTR_UID, align 4
  %131 = load i32, i32* @ATTR_GID, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %209

135:                                              ; preds = %122
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %14, align 4
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @ATTR_GID, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load %struct.iattr*, %struct.iattr** %6, align 8
  %148 = getelementptr inbounds %struct.iattr, %struct.iattr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  br label %152

150:                                              ; preds = %135
  %151 = load i32, i32* %16, align 4
  br label %152

152:                                              ; preds = %150, %146
  %153 = phi i32 [ %149, %146 ], [ %151, %150 ]
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @ATTR_UID, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.iattr*, %struct.iattr** %6, align 8
  %160 = getelementptr inbounds %struct.iattr, %struct.iattr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  br label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %14, align 4
  br label %164

164:                                              ; preds = %162, %158
  %165 = phi i32 [ %161, %158 ], [ %163, %162 ]
  store i32 %165, i32* %13, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = call i64 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_14__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %208

169:                                              ; preds = %164
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %171 = call i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_14__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @uid_eq(i32 %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173, %169
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = call i64 @XFS_IS_GQUOTA_ON(%struct.TYPE_14__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %178
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @gid_eq(i32 %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %208, label %187

187:                                              ; preds = %182, %173
  %188 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %189 = ptrtoint %struct.xfs_dquot* %188 to i32
  %190 = call i32 @ASSERT(i32 %189)
  %191 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %192 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %193 = load %struct.xfs_dquot*, %struct.xfs_dquot** %17, align 8
  %194 = load %struct.xfs_dquot*, %struct.xfs_dquot** %18, align 8
  %195 = load i32, i32* @CAP_FOWNER, align 4
  %196 = call i64 @capable(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %187
  %199 = load i32, i32* @XFS_QMOPT_FORCE_RES, align 4
  br label %201

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i32 [ %199, %198 ], [ 0, %200 ]
  %203 = call i32 @xfs_qm_vop_chown_reserve(%struct.xfs_dquot* %191, %struct.xfs_inode* %192, %struct.xfs_dquot* %193, %struct.xfs_dquot* %194, i32* null, i32 %202)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %403

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207, %182, %178, %164
  br label %209

209:                                              ; preds = %208, %122
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @ATTR_UID, align 4
  %212 = load i32, i32* @ATTR_GID, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %210, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %324

216:                                              ; preds = %209
  %217 = load %struct.inode*, %struct.inode** %9, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @S_ISUID, align 4
  %221 = load i32, i32* @S_ISGID, align 4
  %222 = or i32 %220, %221
  %223 = and i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %216
  %226 = load i32, i32* @CAP_FSETID, align 4
  %227 = call i64 @capable(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* @S_ISUID, align 4
  %231 = load i32, i32* @S_ISGID, align 4
  %232 = or i32 %230, %231
  %233 = xor i32 %232, -1
  %234 = load %struct.inode*, %struct.inode** %9, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %229, %225, %216
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @uid_eq(i32 %239, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %274, label %243

243:                                              ; preds = %238
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %245 = call i64 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_14__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %243
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %249 = call i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_14__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %247
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @ATTR_UID, align 4
  %254 = and i32 %252, %253
  %255 = call i32 @ASSERT(i32 %254)
  %256 = load %struct.xfs_dquot*, %struct.xfs_dquot** %17, align 8
  %257 = ptrtoint %struct.xfs_dquot* %256 to i32
  %258 = call i32 @ASSERT(i32 %257)
  %259 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %260 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %261 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %262 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %261, i32 0, i32 2
  %263 = load %struct.xfs_dquot*, %struct.xfs_dquot** %17, align 8
  %264 = call %struct.xfs_dquot* @xfs_qm_vop_chown(%struct.xfs_dquot* %259, %struct.xfs_inode* %260, i32* %262, %struct.xfs_dquot* %263)
  store %struct.xfs_dquot* %264, %struct.xfs_dquot** %19, align 8
  br label %265

265:                                              ; preds = %251, %247, %243
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @xfs_kuid_to_uid(i32 %266)
  %268 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %269 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  store i32 %267, i32* %270, align 4
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.inode*, %struct.inode** %9, align 8
  %273 = getelementptr inbounds %struct.inode, %struct.inode* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %265, %238
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @gid_eq(i32 %275, i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %323, label %279

279:                                              ; preds = %274
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %281 = call i64 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_14__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %314

283:                                              ; preds = %279
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %285 = call i64 @XFS_IS_GQUOTA_ON(%struct.TYPE_14__* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %314

287:                                              ; preds = %283
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  %290 = call i64 @xfs_sb_version_has_pquotino(i32* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %294 = call i32 @XFS_IS_PQUOTA_ON(%struct.TYPE_14__* %293)
  %295 = icmp ne i32 %294, 0
  %296 = xor i1 %295, true
  br label %297

297:                                              ; preds = %292, %287
  %298 = phi i1 [ true, %287 ], [ %296, %292 ]
  %299 = zext i1 %298 to i32
  %300 = call i32 @ASSERT(i32 %299)
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* @ATTR_GID, align 4
  %303 = and i32 %301, %302
  %304 = call i32 @ASSERT(i32 %303)
  %305 = load %struct.xfs_dquot*, %struct.xfs_dquot** %18, align 8
  %306 = ptrtoint %struct.xfs_dquot* %305 to i32
  %307 = call i32 @ASSERT(i32 %306)
  %308 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %309 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %310 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %311 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %310, i32 0, i32 1
  %312 = load %struct.xfs_dquot*, %struct.xfs_dquot** %18, align 8
  %313 = call %struct.xfs_dquot* @xfs_qm_vop_chown(%struct.xfs_dquot* %308, %struct.xfs_inode* %309, i32* %311, %struct.xfs_dquot* %312)
  store %struct.xfs_dquot* %313, %struct.xfs_dquot** %20, align 8
  br label %314

314:                                              ; preds = %297, %283, %279
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @xfs_kgid_to_gid(i32 %315)
  %317 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %318 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  store i32 %316, i32* %319, align 8
  %320 = load i32, i32* %15, align 4
  %321 = load %struct.inode*, %struct.inode** %9, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 1
  store i32 %320, i32* %322, align 4
  br label %323

323:                                              ; preds = %314, %274
  br label %324

324:                                              ; preds = %323, %209
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* @ATTR_MODE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %331 = load %struct.iattr*, %struct.iattr** %6, align 8
  %332 = call i32 @xfs_setattr_mode(%struct.xfs_inode* %330, %struct.iattr* %331)
  br label %333

333:                                              ; preds = %329, %324
  %334 = load i32, i32* %10, align 4
  %335 = load i32, i32* @ATTR_ATIME, align 4
  %336 = load i32, i32* @ATTR_CTIME, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @ATTR_MTIME, align 4
  %339 = or i32 %337, %338
  %340 = and i32 %334, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %333
  %343 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %344 = load %struct.iattr*, %struct.iattr** %6, align 8
  %345 = call i32 @xfs_setattr_time(%struct.xfs_inode* %343, %struct.iattr* %344)
  br label %346

346:                                              ; preds = %342, %333
  %347 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %348 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %349 = load i32, i32* @XFS_ILOG_CORE, align 4
  %350 = call i32 @xfs_trans_log_inode(%struct.xfs_dquot* %347, %struct.xfs_inode* %348, i32 %349)
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %352 = load i32, i32* @xs_ig_attrchg, align 4
  %353 = call i32 @XFS_STATS_INC(%struct.TYPE_14__* %351, i32 %352)
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %346
  %361 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %362 = call i32 @xfs_trans_set_sync(%struct.xfs_dquot* %361)
  br label %363

363:                                              ; preds = %360, %346
  %364 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %365 = call i32 @xfs_trans_commit(%struct.xfs_dquot* %364)
  store i32 %365, i32* %12, align 4
  %366 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %367 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %368 = call i32 @xfs_iunlock(%struct.xfs_inode* %366, i32 %367)
  %369 = load %struct.xfs_dquot*, %struct.xfs_dquot** %19, align 8
  %370 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %369)
  %371 = load %struct.xfs_dquot*, %struct.xfs_dquot** %20, align 8
  %372 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %371)
  %373 = load %struct.xfs_dquot*, %struct.xfs_dquot** %17, align 8
  %374 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %373)
  %375 = load %struct.xfs_dquot*, %struct.xfs_dquot** %18, align 8
  %376 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %375)
  %377 = load i32, i32* %12, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %363
  %380 = load i32, i32* %12, align 4
  store i32 %380, i32* %4, align 4
  br label %415

381:                                              ; preds = %363
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* @ATTR_MODE, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %402

386:                                              ; preds = %381
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* @XFS_ATTR_NOACL, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %402, label %391

391:                                              ; preds = %386
  %392 = load %struct.inode*, %struct.inode** %9, align 8
  %393 = load %struct.inode*, %struct.inode** %9, align 8
  %394 = getelementptr inbounds %struct.inode, %struct.inode* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @posix_acl_chmod(%struct.inode* %392, i32 %395)
  store i32 %396, i32* %12, align 4
  %397 = load i32, i32* %12, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = load i32, i32* %12, align 4
  store i32 %400, i32* %4, align 4
  br label %415

401:                                              ; preds = %391
  br label %402

402:                                              ; preds = %401, %386, %381
  store i32 0, i32* %4, align 4
  br label %415

403:                                              ; preds = %206
  %404 = load %struct.xfs_dquot*, %struct.xfs_dquot** %11, align 8
  %405 = call i32 @xfs_trans_cancel(%struct.xfs_dquot* %404)
  %406 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %407 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %408 = call i32 @xfs_iunlock(%struct.xfs_inode* %406, i32 %407)
  br label %409

409:                                              ; preds = %403, %121
  %410 = load %struct.xfs_dquot*, %struct.xfs_dquot** %17, align 8
  %411 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %410)
  %412 = load %struct.xfs_dquot*, %struct.xfs_dquot** %18, align 8
  %413 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %412)
  %414 = load i32, i32* %12, align 4
  store i32 %414, i32* %4, align 4
  br label %415

415:                                              ; preds = %409, %402, %399, %379, %110
  %416 = load i32, i32* %4, align 4
  ret i32 %416
}

declare dso_local %struct.inode* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_IS_QUOTA_ON(%struct.TYPE_14__*) #1

declare dso_local i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_14__*) #1

declare dso_local i64 @XFS_IS_GQUOTA_ON(%struct.TYPE_14__*) #1

declare dso_local i32 @xfs_qm_vop_dqalloc(%struct.xfs_inode*, i32, i32, i32, i32, %struct.xfs_dquot**, %struct.xfs_dquot**, i32*) #1

declare dso_local i32 @xfs_kuid_to_uid(i32) #1

declare dso_local i32 @xfs_kgid_to_gid(i32) #1

declare dso_local i32 @xfs_get_projid(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.TYPE_14__*, i32*, i32, i32, i32, %struct.xfs_dquot**) #1

declare dso_local %struct.TYPE_12__* @M_RES(%struct.TYPE_14__*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_dquot*, %struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_14__*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @xfs_qm_vop_chown_reserve(%struct.xfs_dquot*, %struct.xfs_inode*, %struct.xfs_dquot*, %struct.xfs_dquot*, i32*, i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local %struct.xfs_dquot* @xfs_qm_vop_chown(%struct.xfs_dquot*, %struct.xfs_inode*, i32*, %struct.xfs_dquot*) #1

declare dso_local i64 @xfs_sb_version_has_pquotino(i32*) #1

declare dso_local i32 @XFS_IS_PQUOTA_ON(%struct.TYPE_14__*) #1

declare dso_local i32 @xfs_setattr_mode(%struct.xfs_inode*, %struct.iattr*) #1

declare dso_local i32 @xfs_setattr_time(%struct.xfs_inode*, %struct.iattr*) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_dquot*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @XFS_STATS_INC(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_qm_dqrele(%struct.xfs_dquot*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

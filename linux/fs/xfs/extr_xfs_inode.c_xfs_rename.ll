; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_name = type { i32, i32 }
%struct.xfs_inode = type { i32, %struct.TYPE_4__, %struct.xfs_mount* }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@__XFS_SORT_INODES = common dso_local global i32 0, align 4
@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RENAME_WHITEOUT = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@XFS_DIR3_FT_CHRDEV = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DIFLAG_PROJINHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@I_LINKABLE = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@xfs_name_dotdot = common dso_local global %struct.xfs_name zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rename(%struct.xfs_inode* %0, %struct.xfs_name* %1, %struct.xfs_inode* %2, %struct.xfs_inode* %3, %struct.xfs_name* %4, %struct.xfs_inode* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca %struct.xfs_name*, align 8
  %11 = alloca %struct.xfs_inode*, align 8
  %12 = alloca %struct.xfs_inode*, align 8
  %13 = alloca %struct.xfs_name*, align 8
  %14 = alloca %struct.xfs_inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_mount*, align 8
  %17 = alloca %struct.xfs_trans*, align 8
  %18 = alloca %struct.xfs_inode*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %9, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %10, align 8
  store %struct.xfs_inode* %2, %struct.xfs_inode** %11, align 8
  store %struct.xfs_inode* %3, %struct.xfs_inode** %12, align 8
  store %struct.xfs_name* %4, %struct.xfs_name** %13, align 8
  store %struct.xfs_inode* %5, %struct.xfs_inode** %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 2
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %28, align 8
  store %struct.xfs_mount* %29, %struct.xfs_mount** %16, align 8
  store %struct.xfs_inode* null, %struct.xfs_inode** %18, align 8
  %30 = load i32, i32* @__XFS_SORT_INODES, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca %struct.xfs_inode*, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i32, i32* @__XFS_SORT_INODES, align 4
  store i32 %34, i32* %21, align 4
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %37 = icmp ne %struct.xfs_inode* %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %22, align 4
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %40 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @S_ISDIR(i32 %42)
  store i32 %43, i32* %23, align 4
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %46 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %47 = load %struct.xfs_name*, %struct.xfs_name** %13, align 8
  %48 = call i32 @trace_xfs_rename(%struct.xfs_inode* %44, %struct.xfs_inode* %45, %struct.xfs_name* %46, %struct.xfs_name* %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @RENAME_EXCHANGE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %7
  %54 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %55 = icmp ne %struct.xfs_inode* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %444

59:                                               ; preds = %53, %7
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @RENAME_WHITEOUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @RENAME_NOREPLACE, align 4
  %67 = load i32, i32* @RENAME_EXCHANGE, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %75 = call i32 @xfs_rename_alloc_whiteout(%struct.xfs_inode* %74, %struct.xfs_inode** %18)
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %25, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* %25, align 4
  store i32 %79, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %444

80:                                               ; preds = %64
  %81 = load i32, i32* @XFS_DIR3_FT_CHRDEV, align 4
  %82 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %83 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %59
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %86 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %87 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %88 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %89 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %90 = call i32 @xfs_sort_for_rename(%struct.xfs_inode* %85, %struct.xfs_inode* %86, %struct.xfs_inode* %87, %struct.xfs_inode* %88, %struct.xfs_inode* %89, %struct.xfs_inode** %33, i32* %21)
  %91 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %92 = load %struct.xfs_name*, %struct.xfs_name** %13, align 8
  %93 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @XFS_RENAME_SPACE_RES(%struct.xfs_mount* %91, i32 %94)
  store i32 %95, i32* %24, align 4
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %97 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %98 = call %struct.TYPE_6__* @M_RES(%struct.xfs_mount* %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %24, align 4
  %101 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %96, i32* %99, i32 %100, i32 0, i32 0, %struct.xfs_trans** %17)
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %84
  store i32 0, i32* %24, align 4
  %107 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %108 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  %109 = call %struct.TYPE_6__* @M_RES(%struct.xfs_mount* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %107, i32* %110, i32 0, i32 0, i32 0, %struct.xfs_trans** %17)
  store i32 %111, i32* %25, align 4
  br label %112

112:                                              ; preds = %106, %84
  %113 = load i32, i32* %25, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %436

116:                                              ; preds = %112
  %117 = call i32 @xfs_qm_vop_rename_dqattach(%struct.xfs_inode** %33)
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %25, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %433

121:                                              ; preds = %116
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %124 = call i32 @xfs_lock_inodes(%struct.xfs_inode** %33, i32 %122, i32 %123)
  %125 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %126 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %127 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %128 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %125, %struct.xfs_inode* %126, i32 %127)
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %133 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %134 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %135 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %132, %struct.xfs_inode* %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %121
  %137 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %138 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %139 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %140 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %137, %struct.xfs_inode* %138, i32 %139)
  %141 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %142 = icmp ne %struct.xfs_inode* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %145 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %146 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %147 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %144, %struct.xfs_inode* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %136
  %149 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %150 = icmp ne %struct.xfs_inode* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %153 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %154 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %155 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %152, %struct.xfs_inode* %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %148
  %157 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %158 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @XFS_DIFLAG_PROJINHERIT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %166 = call i64 @xfs_get_projid(%struct.xfs_inode* %165)
  %167 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %168 = call i64 @xfs_get_projid(%struct.xfs_inode* %167)
  %169 = icmp ne i64 %166, %168
  br label %170

170:                                              ; preds = %164, %156
  %171 = phi i1 [ false, %156 ], [ %169, %164 ]
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* @EXDEV, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %25, align 4
  br label %433

178:                                              ; preds = %170
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @RENAME_EXCHANGE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %185 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %186 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %187 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %188 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %189 = load %struct.xfs_name*, %struct.xfs_name** %13, align 8
  %190 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @xfs_cross_rename(%struct.xfs_trans* %184, %struct.xfs_inode* %185, %struct.xfs_name* %186, %struct.xfs_inode* %187, %struct.xfs_inode* %188, %struct.xfs_name* %189, %struct.xfs_inode* %190, i32 %191)
  store i32 %192, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %444

193:                                              ; preds = %178
  %194 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %195 = icmp eq %struct.xfs_inode* %194, null
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %196
  %200 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %201 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %202 = load %struct.xfs_name*, %struct.xfs_name** %13, align 8
  %203 = call i32 @xfs_dir_canenter(%struct.xfs_trans* %200, %struct.xfs_inode* %201, %struct.xfs_name* %202)
  store i32 %203, i32* %25, align 4
  %204 = load i32, i32* %25, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %433

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %196
  br label %230

209:                                              ; preds = %193
  %210 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %211 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %210)
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @S_ISDIR(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %209
  %217 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %218 = call i32 @xfs_dir_isempty(%struct.xfs_inode* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %222 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp sgt i32 %224, 2
  br i1 %225, label %226, label %229

226:                                              ; preds = %220, %216
  %227 = load i32, i32* @EEXIST, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %25, align 4
  br label %433

229:                                              ; preds = %220, %209
  br label %230

230:                                              ; preds = %229, %208
  %231 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %232 = icmp ne %struct.xfs_inode* %231, null
  br i1 %232, label %233, label %262

233:                                              ; preds = %230
  %234 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %235 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %234)
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @ASSERT(i32 %239)
  %241 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %242 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %243 = call i32 @xfs_iunlink_remove(%struct.xfs_trans* %241, %struct.xfs_inode* %242)
  store i32 %243, i32* %25, align 4
  %244 = load i32, i32* %25, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  br label %433

247:                                              ; preds = %233
  %248 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %249 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %250 = call i32 @xfs_bumplink(%struct.xfs_trans* %248, %struct.xfs_inode* %249)
  %251 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %252 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %253 = load i32, i32* @XFS_ILOG_CORE, align 4
  %254 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %251, %struct.xfs_inode* %252, i32 %253)
  %255 = load i32, i32* @I_LINKABLE, align 4
  %256 = xor i32 %255, -1
  %257 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %258 = call %struct.TYPE_5__* @VFS_I(%struct.xfs_inode* %257)
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %256
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %247, %230
  %263 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %264 = icmp eq %struct.xfs_inode* %263, null
  br i1 %264, label %265, label %294

265:                                              ; preds = %262
  %266 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %267 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %268 = load %struct.xfs_name*, %struct.xfs_name** %13, align 8
  %269 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %270 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %24, align 4
  %273 = call i32 @xfs_dir_createname(%struct.xfs_trans* %266, %struct.xfs_inode* %267, %struct.xfs_name* %268, i32 %271, i32 %272)
  store i32 %273, i32* %25, align 4
  %274 = load i32, i32* %25, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  br label %433

277:                                              ; preds = %265
  %278 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %279 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %280 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %281 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %278, %struct.xfs_inode* %279, i32 %282)
  %284 = load i32, i32* %22, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load i32, i32* %23, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %291 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %292 = call i32 @xfs_bumplink(%struct.xfs_trans* %290, %struct.xfs_inode* %291)
  br label %293

293:                                              ; preds = %289, %286, %277
  br label %331

294:                                              ; preds = %262
  %295 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %296 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %297 = load %struct.xfs_name*, %struct.xfs_name** %13, align 8
  %298 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %299 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %24, align 4
  %302 = call i32 @xfs_dir_replace(%struct.xfs_trans* %295, %struct.xfs_inode* %296, %struct.xfs_name* %297, i32 %300, i32 %301)
  store i32 %302, i32* %25, align 4
  %303 = load i32, i32* %25, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %294
  br label %433

306:                                              ; preds = %294
  %307 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %308 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %309 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %310 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %311 = or i32 %309, %310
  %312 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %307, %struct.xfs_inode* %308, i32 %311)
  %313 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %314 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %315 = call i32 @xfs_droplink(%struct.xfs_trans* %313, %struct.xfs_inode* %314)
  store i32 %315, i32* %25, align 4
  %316 = load i32, i32* %25, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %306
  br label %433

319:                                              ; preds = %306
  %320 = load i32, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %319
  %323 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %324 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %325 = call i32 @xfs_droplink(%struct.xfs_trans* %323, %struct.xfs_inode* %324)
  store i32 %325, i32* %25, align 4
  %326 = load i32, i32* %25, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %433

329:                                              ; preds = %322
  br label %330

330:                                              ; preds = %329, %319
  br label %331

331:                                              ; preds = %330, %293
  %332 = load i32, i32* %22, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %355

334:                                              ; preds = %331
  %335 = load i32, i32* %23, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %355

337:                                              ; preds = %334
  %338 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %339 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %340 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %341 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %24, align 4
  %344 = call i32 @xfs_dir_replace(%struct.xfs_trans* %338, %struct.xfs_inode* %339, %struct.xfs_name* @xfs_name_dotdot, i32 %342, i32 %343)
  store i32 %344, i32* %25, align 4
  %345 = load i32, i32* %25, align 4
  %346 = load i32, i32* @EEXIST, align 4
  %347 = sub nsw i32 0, %346
  %348 = icmp ne i32 %345, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @ASSERT(i32 %349)
  %351 = load i32, i32* %25, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %337
  br label %433

354:                                              ; preds = %337
  br label %355

355:                                              ; preds = %354, %334, %331
  %356 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %357 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %358 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %359 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %356, %struct.xfs_inode* %357, i32 %358)
  %360 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %361 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %362 = load i32, i32* @XFS_ILOG_CORE, align 4
  %363 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %360, %struct.xfs_inode* %361, i32 %362)
  %364 = load i32, i32* %23, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %380

366:                                              ; preds = %355
  %367 = load i32, i32* %22, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %366
  %370 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %371 = icmp ne %struct.xfs_inode* %370, null
  br i1 %371, label %372, label %380

372:                                              ; preds = %369, %366
  %373 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %374 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %375 = call i32 @xfs_droplink(%struct.xfs_trans* %373, %struct.xfs_inode* %374)
  store i32 %375, i32* %25, align 4
  %376 = load i32, i32* %25, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %372
  br label %433

379:                                              ; preds = %372
  br label %380

380:                                              ; preds = %379, %369, %355
  %381 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %382 = icmp ne %struct.xfs_inode* %381, null
  br i1 %382, label %383, label %392

383:                                              ; preds = %380
  %384 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %385 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %386 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %387 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %388 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %24, align 4
  %391 = call i32 @xfs_dir_replace(%struct.xfs_trans* %384, %struct.xfs_inode* %385, %struct.xfs_name* %386, i32 %389, i32 %390)
  store i32 %391, i32* %25, align 4
  br label %401

392:                                              ; preds = %380
  %393 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %394 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %395 = load %struct.xfs_name*, %struct.xfs_name** %10, align 8
  %396 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %397 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* %24, align 4
  %400 = call i32 @xfs_dir_removename(%struct.xfs_trans* %393, %struct.xfs_inode* %394, %struct.xfs_name* %395, i32 %398, i32 %399)
  store i32 %400, i32* %25, align 4
  br label %401

401:                                              ; preds = %392, %383
  %402 = load i32, i32* %25, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  br label %433

405:                                              ; preds = %401
  %406 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %407 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %408 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %409 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %410 = or i32 %408, %409
  %411 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %406, %struct.xfs_inode* %407, i32 %410)
  %412 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %413 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %414 = load i32, i32* @XFS_ILOG_CORE, align 4
  %415 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %412, %struct.xfs_inode* %413, i32 %414)
  %416 = load i32, i32* %22, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %405
  %419 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %420 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %421 = load i32, i32* @XFS_ILOG_CORE, align 4
  %422 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %419, %struct.xfs_inode* %420, i32 %421)
  br label %423

423:                                              ; preds = %418, %405
  %424 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %425 = call i32 @xfs_finish_rename(%struct.xfs_trans* %424)
  store i32 %425, i32* %25, align 4
  %426 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %427 = icmp ne %struct.xfs_inode* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %423
  %429 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %430 = call i32 @xfs_irele(%struct.xfs_inode* %429)
  br label %431

431:                                              ; preds = %428, %423
  %432 = load i32, i32* %25, align 4
  store i32 %432, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %444

433:                                              ; preds = %404, %378, %353, %328, %318, %305, %276, %246, %226, %206, %175, %120
  %434 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %435 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %434)
  br label %436

436:                                              ; preds = %433, %115
  %437 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %438 = icmp ne %struct.xfs_inode* %437, null
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  %441 = call i32 @xfs_irele(%struct.xfs_inode* %440)
  br label %442

442:                                              ; preds = %439, %436
  %443 = load i32, i32* %25, align 4
  store i32 %443, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %444

444:                                              ; preds = %442, %431, %183, %78, %56
  %445 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %445)
  %446 = load i32, i32* %8, align 4
  ret i32 %446
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local %struct.TYPE_5__* @VFS_I(%struct.xfs_inode*) #2

declare dso_local i32 @trace_xfs_rename(%struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_name*, %struct.xfs_name*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_rename_alloc_whiteout(%struct.xfs_inode*, %struct.xfs_inode**) #2

declare dso_local i32 @xfs_sort_for_rename(%struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_inode**, i32*) #2

declare dso_local i32 @XFS_RENAME_SPACE_RES(%struct.xfs_mount*, i32) #2

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #2

declare dso_local %struct.TYPE_6__* @M_RES(%struct.xfs_mount*) #2

declare dso_local i32 @xfs_qm_vop_rename_dqattach(%struct.xfs_inode**) #2

declare dso_local i32 @xfs_lock_inodes(%struct.xfs_inode**, i32, i32) #2

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @xfs_get_projid(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_cross_rename(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, %struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_name*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_dir_canenter(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*) #2

declare dso_local i32 @xfs_dir_isempty(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_iunlink_remove(%struct.xfs_trans*, %struct.xfs_inode*) #2

declare dso_local i32 @xfs_bumplink(%struct.xfs_trans*, %struct.xfs_inode*) #2

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_dir_createname(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, i32, i32) #2

declare dso_local i32 @xfs_trans_ichgtime(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_dir_replace(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, i32, i32) #2

declare dso_local i32 @xfs_droplink(%struct.xfs_trans*, %struct.xfs_inode*) #2

declare dso_local i32 @xfs_dir_removename(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, i32, i32) #2

declare dso_local i32 @xfs_finish_rename(%struct.xfs_trans*) #2

declare dso_local i32 @xfs_irele(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

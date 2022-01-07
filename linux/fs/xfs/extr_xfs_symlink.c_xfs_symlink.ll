; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_symlink.c_xfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_symlink.c_xfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.TYPE_8__, %struct.xfs_mount* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.xfs_mount = type { i32, i32 }
%struct.xfs_name = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_9__ = type { i8*, i32* }
%struct.xfs_dquot = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@XFS_SYMLINK_MAPS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_SYMLINK_MAXLEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@XFS_QMOPT_QUOTALL = common dso_local global i32 0, align 4
@XFS_QMOPT_INHERIT = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_PARENT = common dso_local global i32 0, align 4
@XFS_DIFLAG_NOSYMLINKS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i32 0, align 4
@XFS_ILOG_DDATA = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_BMAPI_METADATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xfs_symlink_buf_ops = common dso_local global i32 0, align 4
@XFS_BLFT_SYMLINK_BUF = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_symlink(%struct.xfs_inode* %0, %struct.xfs_name* %1, i8* %2, i32 %3, %struct.xfs_inode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_name*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_inode**, align 8
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca %struct.xfs_trans*, align 8
  %14 = alloca %struct.xfs_inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_9__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.xfs_dquot*, align 8
  %30 = alloca %struct.xfs_dquot*, align 8
  %31 = alloca %struct.xfs_dquot*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.xfs_inode** %4, %struct.xfs_inode*** %11, align 8
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %36, i32 0, i32 2
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %37, align 8
  store %struct.xfs_mount* %38, %struct.xfs_mount** %12, align 8
  store %struct.xfs_trans* null, %struct.xfs_trans** %13, align 8
  store %struct.xfs_inode* null, %struct.xfs_inode** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %39 = load i32, i32* @XFS_SYMLINK_MAPS, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %21, align 8
  %42 = alloca %struct.xfs_bmbt_irec, i64 %40, align 16
  store i64 %40, i64* %22, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %29, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %30, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %31, align 8
  %43 = load %struct.xfs_inode**, %struct.xfs_inode*** %11, align 8
  store %struct.xfs_inode* null, %struct.xfs_inode** %43, align 8
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %45 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %46 = call i32 @trace_xfs_symlink(%struct.xfs_inode* %44, %struct.xfs_name* %45)
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %48 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %5
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %396

53:                                               ; preds = %5
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @XFS_SYMLINK_MAXLEN, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @ENAMETOOLONG, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %396

62:                                               ; preds = %53
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %30, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %29, align 8
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %68 = call i32 @xfs_get_initial_prid(%struct.xfs_inode* %67)
  store i32 %68, i32* %28, align 4
  %69 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %70 = call i32 (...) @current_fsuid()
  %71 = call i32 @xfs_kuid_to_uid(i32 %70)
  %72 = call i32 (...) @current_fsgid()
  %73 = call i32 @xfs_kgid_to_gid(i32 %72)
  %74 = load i32, i32* %28, align 4
  %75 = load i32, i32* @XFS_QMOPT_QUOTALL, align 4
  %76 = load i32, i32* @XFS_QMOPT_INHERIT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @xfs_qm_vop_dqalloc(%struct.xfs_inode* %69, i32 %71, i32 %73, i32 %74, i32 %77, %struct.xfs_dquot** %29, %struct.xfs_dquot** %30, %struct.xfs_dquot** %31)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %396

83:                                               ; preds = %62
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %86 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %87 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @XFS_LITINO(%struct.xfs_mount* %85, i32 %89)
  %91 = icmp sle i32 %84, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i64 0, i64* %19, align 8
  br label %97

93:                                               ; preds = %83
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i64 @xfs_symlink_blocks(%struct.xfs_mount* %94, i32 %95)
  store i64 %96, i64* %19, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %99 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %100 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %19, align 8
  %103 = call i64 @XFS_SYMLINK_SPACE_RES(%struct.xfs_mount* %98, i32 %101, i64 %102)
  store i64 %103, i64* %32, align 8
  %104 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %105 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %106 = call %struct.TYPE_10__* @M_RES(%struct.xfs_mount* %105)
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %32, align 8
  %109 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %104, i32* %107, i64 %108, i32 0, i32 0, %struct.xfs_trans** %13)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %373

113:                                              ; preds = %97
  %114 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %115 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %116 = load i32, i32* @XFS_ILOCK_PARENT, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @xfs_ilock(%struct.xfs_inode* %114, i32 %117)
  store i32 1, i32* %17, align 4
  %119 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %120 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @XFS_DIFLAG_NOSYMLINKS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load i32, i32* @EPERM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %15, align 4
  br label %370

129:                                              ; preds = %113
  %130 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %131 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %132 = load %struct.xfs_dquot*, %struct.xfs_dquot** %29, align 8
  %133 = load %struct.xfs_dquot*, %struct.xfs_dquot** %30, align 8
  %134 = load %struct.xfs_dquot*, %struct.xfs_dquot** %31, align 8
  %135 = load i64, i64* %32, align 8
  %136 = call i32 @xfs_trans_reserve_quota(%struct.xfs_trans* %130, %struct.xfs_mount* %131, %struct.xfs_dquot* %132, %struct.xfs_dquot* %133, %struct.xfs_dquot* %134, i64 %135, i32 1, i32 0)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %370

140:                                              ; preds = %129
  %141 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %142 = load i32, i32* @S_IFLNK, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @S_IFMT, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  %147 = or i32 %142, %146
  %148 = load i32, i32* %28, align 4
  %149 = call i32 @xfs_dir_ialloc(%struct.xfs_trans** %13, %struct.xfs_inode* %141, i32 %147, i32 1, i32 0, i32 %148, %struct.xfs_inode** %14)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %370

153:                                              ; preds = %140
  %154 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %155 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %156 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %157 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %154, %struct.xfs_inode* %155, i32 %156)
  store i32 0, i32* %17, align 4
  %158 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %159 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %160 = load %struct.xfs_dquot*, %struct.xfs_dquot** %29, align 8
  %161 = load %struct.xfs_dquot*, %struct.xfs_dquot** %30, align 8
  %162 = load %struct.xfs_dquot*, %struct.xfs_dquot** %31, align 8
  %163 = call i32 @xfs_qm_vop_create_dqattach(%struct.xfs_trans* %158, %struct.xfs_inode* %159, %struct.xfs_dquot* %160, %struct.xfs_dquot* %161, %struct.xfs_dquot* %162)
  %164 = load i64, i64* %32, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %168 = call i64 @XFS_IALLOC_SPACE_RES(%struct.xfs_mount* %167)
  %169 = load i64, i64* %32, align 8
  %170 = sub nsw i64 %169, %168
  store i64 %170, i64* %32, align 8
  br label %171

171:                                              ; preds = %166, %153
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %174 = call i32 @XFS_IFORK_DSIZE(%struct.xfs_inode* %173)
  %175 = icmp sle i32 %172, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %171
  %177 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %178 = load i32, i32* @XFS_DATA_FORK, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @xfs_init_local_fork(%struct.xfs_inode* %177, i32 %178, i8* %179, i32 %180)
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %184 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 4
  %186 = load i32, i32* @XFS_DINODE_FMT_LOCAL, align 4
  %187 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %188 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 4
  %190 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %191 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %192 = load i32, i32* @XFS_ILOG_DDATA, align 4
  %193 = load i32, i32* @XFS_ILOG_CORE, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %190, %struct.xfs_inode* %191, i32 %194)
  br label %321

196:                                              ; preds = %171
  store i64 0, i64* %18, align 8
  %197 = load i32, i32* @XFS_SYMLINK_MAPS, align 4
  store i32 %197, i32* %20, align 4
  %198 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %199 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %200 = load i64, i64* %18, align 8
  %201 = load i64, i64* %19, align 8
  %202 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %203 = load i64, i64* %32, align 8
  %204 = call i32 @xfs_bmapi_write(%struct.xfs_trans* %198, %struct.xfs_inode* %199, i64 %200, i64 %201, i32 %202, i64 %203, %struct.xfs_bmbt_irec* %42, i32* %20)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  br label %370

208:                                              ; preds = %196
  %209 = load i64, i64* %32, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i64, i64* %19, align 8
  %213 = load i64, i64* %32, align 8
  %214 = sub nsw i64 %213, %212
  store i64 %214, i64* %32, align 8
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i32, i32* %16, align 4
  %217 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %218 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  store i32 %216, i32* %219, align 4
  %220 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %221 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %222 = load i32, i32* @XFS_ILOG_CORE, align 4
  %223 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %220, %struct.xfs_inode* %221, i32 %222)
  %224 = load i8*, i8** %9, align 8
  store i8* %224, i8** %24, align 8
  store i32 0, i32* %34, align 4
  store i32 0, i32* %26, align 4
  br label %225

225:                                              ; preds = %313, %215
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %20, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %316

229:                                              ; preds = %225
  %230 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %231 = load i32, i32* %26, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %42, i64 %232
  %234 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %230, i32 %235)
  store i32 %236, i32* %23, align 4
  %237 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %238 = load i32, i32* %26, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %42, i64 %239
  %241 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @XFS_FSB_TO_B(%struct.xfs_mount* %237, i32 %242)
  store i32 %243, i32* %25, align 4
  %244 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %245 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %246 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* %25, align 4
  %250 = call i32 @BTOBB(i32 %249)
  %251 = call %struct.TYPE_9__* @xfs_trans_get_buf(%struct.xfs_trans* %244, i32 %247, i32 %248, i32 %250, i32 0)
  store %struct.TYPE_9__* %251, %struct.TYPE_9__** %27, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %253 = icmp ne %struct.TYPE_9__* %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %229
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %15, align 4
  br label %370

257:                                              ; preds = %229
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  store i32* @xfs_symlink_buf_ops, i32** %259, align 8
  %260 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %261 = load i32, i32* %25, align 4
  %262 = call i32 @XFS_SYMLINK_BUF_SPACE(%struct.xfs_mount* %260, i32 %261)
  store i32 %262, i32* %25, align 4
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %16, align 4
  %265 = call i32 @min(i32 %263, i32 %264)
  store i32 %265, i32* %25, align 4
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  store i8* %268, i8** %35, align 8
  %269 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %270 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %271 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %34, align 4
  %274 = load i32, i32* %25, align 4
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %276 = call i32 @xfs_symlink_hdr_set(%struct.xfs_mount* %269, i32 %272, i32 %273, i32 %274, %struct.TYPE_9__* %275)
  %277 = load i8*, i8** %35, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %35, align 8
  %280 = load i8*, i8** %35, align 8
  %281 = load i8*, i8** %24, align 8
  %282 = load i32, i32* %25, align 4
  %283 = call i32 @memcpy(i8* %280, i8* %281, i32 %282)
  %284 = load i32, i32* %25, align 4
  %285 = load i8*, i8** %24, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8* %287, i8** %24, align 8
  %288 = load i32, i32* %25, align 4
  %289 = load i32, i32* %16, align 4
  %290 = sub nsw i32 %289, %288
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* %25, align 4
  %292 = load i32, i32* %34, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %34, align 4
  %294 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %296 = load i32, i32* @XFS_BLFT_SYMLINK_BUF, align 4
  %297 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %294, %struct.TYPE_9__* %295, i32 %296)
  %298 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %300 = load i8*, i8** %35, align 8
  %301 = load i32, i32* %25, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %300, i64 %302
  %304 = getelementptr inbounds i8, i8* %303, i64 -1
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = ptrtoint i8* %304 to i64
  %309 = ptrtoint i8* %307 to i64
  %310 = sub i64 %308, %309
  %311 = trunc i64 %310 to i32
  %312 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %298, %struct.TYPE_9__* %299, i32 0, i32 %311)
  br label %313

313:                                              ; preds = %257
  %314 = load i32, i32* %26, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %26, align 4
  br label %225

316:                                              ; preds = %225
  %317 = load i32, i32* %16, align 4
  %318 = icmp eq i32 %317, 0
  %319 = zext i1 %318 to i32
  %320 = call i32 @ASSERT(i32 %319)
  br label %321

321:                                              ; preds = %316, %176
  %322 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %323 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %324 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %325 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %326 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i64, i64* %32, align 8
  %329 = call i32 @xfs_dir_createname(%struct.xfs_trans* %322, %struct.xfs_inode* %323, %struct.xfs_name* %324, i32 %327, i64 %328)
  store i32 %329, i32* %15, align 4
  %330 = load i32, i32* %15, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %321
  br label %370

333:                                              ; preds = %321
  %334 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %335 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %336 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %337 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @xfs_trans_ichgtime(%struct.xfs_trans* %334, %struct.xfs_inode* %335, i32 %338)
  %340 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %341 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %342 = load i32, i32* @XFS_ILOG_CORE, align 4
  %343 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %340, %struct.xfs_inode* %341, i32 %342)
  %344 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %345 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %348 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %349 = or i32 %347, %348
  %350 = and i32 %346, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %333
  %353 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %354 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %353)
  br label %355

355:                                              ; preds = %352, %333
  %356 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %357 = call i32 @xfs_trans_commit(%struct.xfs_trans* %356)
  store i32 %357, i32* %15, align 4
  %358 = load i32, i32* %15, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %355
  br label %373

361:                                              ; preds = %355
  %362 = load %struct.xfs_dquot*, %struct.xfs_dquot** %29, align 8
  %363 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %362)
  %364 = load %struct.xfs_dquot*, %struct.xfs_dquot** %30, align 8
  %365 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %364)
  %366 = load %struct.xfs_dquot*, %struct.xfs_dquot** %31, align 8
  %367 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %366)
  %368 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %369 = load %struct.xfs_inode**, %struct.xfs_inode*** %11, align 8
  store %struct.xfs_inode* %368, %struct.xfs_inode** %369, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %396

370:                                              ; preds = %332, %254, %207, %152, %139, %126
  %371 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %372 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %371)
  br label %373

373:                                              ; preds = %370, %360, %112
  %374 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %375 = icmp ne %struct.xfs_inode* %374, null
  br i1 %375, label %376, label %381

376:                                              ; preds = %373
  %377 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %378 = call i32 @xfs_finish_inode_setup(%struct.xfs_inode* %377)
  %379 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %380 = call i32 @xfs_irele(%struct.xfs_inode* %379)
  br label %381

381:                                              ; preds = %376, %373
  %382 = load %struct.xfs_dquot*, %struct.xfs_dquot** %29, align 8
  %383 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %382)
  %384 = load %struct.xfs_dquot*, %struct.xfs_dquot** %30, align 8
  %385 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %384)
  %386 = load %struct.xfs_dquot*, %struct.xfs_dquot** %31, align 8
  %387 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %386)
  %388 = load i32, i32* %17, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %381
  %391 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %392 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %393 = call i32 @xfs_iunlock(%struct.xfs_inode* %391, i32 %392)
  br label %394

394:                                              ; preds = %390, %381
  %395 = load i32, i32* %15, align 4
  store i32 %395, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %396

396:                                              ; preds = %394, %361, %81, %59, %50
  %397 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %397)
  %398 = load i32, i32* %6, align 4
  ret i32 %398
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_xfs_symlink(%struct.xfs_inode*, %struct.xfs_name*) #2

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_get_initial_prid(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_qm_vop_dqalloc(%struct.xfs_inode*, i32, i32, i32, i32, %struct.xfs_dquot**, %struct.xfs_dquot**, %struct.xfs_dquot**) #2

declare dso_local i32 @xfs_kuid_to_uid(i32) #2

declare dso_local i32 @current_fsuid(...) #2

declare dso_local i32 @xfs_kgid_to_gid(i32) #2

declare dso_local i32 @current_fsgid(...) #2

declare dso_local i32 @XFS_LITINO(%struct.xfs_mount*, i32) #2

declare dso_local i64 @xfs_symlink_blocks(%struct.xfs_mount*, i32) #2

declare dso_local i64 @XFS_SYMLINK_SPACE_RES(%struct.xfs_mount*, i32, i64) #2

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i64, i32, i32, %struct.xfs_trans**) #2

declare dso_local %struct.TYPE_10__* @M_RES(%struct.xfs_mount*) #2

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_trans_reserve_quota(%struct.xfs_trans*, %struct.xfs_mount*, %struct.xfs_dquot*, %struct.xfs_dquot*, %struct.xfs_dquot*, i64, i32, i32) #2

declare dso_local i32 @xfs_dir_ialloc(%struct.xfs_trans**, %struct.xfs_inode*, i32, i32, i32, i32, %struct.xfs_inode**) #2

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_qm_vop_create_dqattach(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_dquot*, %struct.xfs_dquot*, %struct.xfs_dquot*) #2

declare dso_local i64 @XFS_IALLOC_SPACE_RES(%struct.xfs_mount*) #2

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_init_local_fork(%struct.xfs_inode*, i32, i8*, i32) #2

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_bmapi_write(%struct.xfs_trans*, %struct.xfs_inode*, i64, i64, i32, i64, %struct.xfs_bmbt_irec*, i32*) #2

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i32) #2

declare dso_local i32 @XFS_FSB_TO_B(%struct.xfs_mount*, i32) #2

declare dso_local %struct.TYPE_9__* @xfs_trans_get_buf(%struct.xfs_trans*, i32, i32, i32, i32) #2

declare dso_local i32 @BTOBB(i32) #2

declare dso_local i32 @XFS_SYMLINK_BUF_SPACE(%struct.xfs_mount*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @xfs_symlink_hdr_set(%struct.xfs_mount*, i32, i32, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @xfs_trans_log_buf(%struct.xfs_trans*, %struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @xfs_dir_createname(%struct.xfs_trans*, %struct.xfs_inode*, %struct.xfs_name*, i32, i64) #2

declare dso_local i32 @xfs_trans_ichgtime(%struct.xfs_trans*, %struct.xfs_inode*, i32) #2

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #2

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #2

declare dso_local i32 @xfs_qm_dqrele(%struct.xfs_dquot*) #2

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #2

declare dso_local i32 @xfs_finish_inode_setup(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_irele(%struct.xfs_inode*) #2

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

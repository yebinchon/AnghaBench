; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mountfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, i32, i8*, i32*, i64, i64, i64, i32, %struct.TYPE_4__, i32, %struct.xfs_sb, %struct.xfs_inode*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_sb = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.xfs_inode = type { i64 }
%struct.xfs_ino_geometry = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"correcting sb_features alignment problem\00", align 1
@XFS_MOUNT_NOATTR2 = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_SB_VERSION_NLINKBIT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@xfs_mp_ktype = common dso_local global i32 0, align 4
@xfs_stats_ktype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Sparse inode block alignment (%u) must match cluster size (%llu).\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"RT mount failed\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed dir/attr init: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed per-ag init: %d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"no log defined\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"xfs_mountfs\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"log mount failed\00", align 1
@XFS_IGET_UNTRUSTED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"Failed to read root inode 0x%llx, error %d\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"corrupted root inode %llu: not a directory\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"xfs_mountfs_int(2)\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"failed to read RT inodes\00", align 1
@XFS_MOUNT_RDONLY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"failed to write sb changes\00", align 1
@XFS_ALL_QUOTA_ACCT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"resetting quota flags\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"log mount finish failed\00", align 1
@XFS_MOUNT_NORECOVERY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [68 x i8] c"Unable to allocate reserve blocks. Continuing without reserve pool.\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Error %d recovering leftover CoW allocations.\00", align 1
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SYNC_WAIT = common dso_local global i32 0, align 4
@XFS_MOUNT_UNMOUNTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mountfs(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_sb*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_ino_geometry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 11
  store %struct.xfs_sb* %12, %struct.xfs_sb** %4, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %14 = call %struct.xfs_ino_geometry* @M_IGEO(%struct.xfs_mount* %13)
  store %struct.xfs_ino_geometry* %14, %struct.xfs_ino_geometry** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %16 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %17 = call i32 @xfs_sb_mount_common(%struct.xfs_mount* %15, %struct.xfs_sb* %16)
  %18 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %19 = call i64 @xfs_sb_has_mismatched_features2(%struct.xfs_sb* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %23 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 11
  %35 = call i64 @xfs_sb_version_hasattr2(%struct.xfs_sb* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %21
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %39 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XFS_MOUNT_NOATTR2, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %47 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %37, %21
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %53 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %52, i32 0, i32 11
  %54 = call i64 @xfs_sb_version_hasattr2(%struct.xfs_sb* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XFS_MOUNT_NOATTR2, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %65 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %64, i32 0, i32 11
  %66 = call i32 @xfs_sb_version_removeattr2(%struct.xfs_sb* %65)
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %75 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %63
  br label %77

77:                                               ; preds = %76, %56, %51
  %78 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %79 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @XFS_SB_VERSION_NLINKBIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @XFS_SB_VERSION_NLINKBIT, align 4
  %87 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %88 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 8
  %92 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %93 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %85, %77
  %95 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %96 = call i32 @xfs_update_alignment(%struct.xfs_mount* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %567

100:                                              ; preds = %94
  %101 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %102 = call i32 @xfs_alloc_compute_maxlevels(%struct.xfs_mount* %101)
  %103 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %104 = load i32, i32* @XFS_DATA_FORK, align 4
  %105 = call i32 @xfs_bmap_compute_maxlevels(%struct.xfs_mount* %103, i32 %104)
  %106 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %107 = load i32, i32* @XFS_ATTR_FORK, align 4
  %108 = call i32 @xfs_bmap_compute_maxlevels(%struct.xfs_mount* %106, i32 %107)
  %109 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %110 = call i32 @xfs_ialloc_setup_geometry(%struct.xfs_mount* %109)
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %112 = call i32 @xfs_rmapbt_compute_maxlevels(%struct.xfs_mount* %111)
  %113 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %114 = call i32 @xfs_refcountbt_compute_maxlevels(%struct.xfs_mount* %113)
  %115 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %116 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  %117 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %118 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %117, i32 0, i32 8
  %119 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %120 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @xfs_sysfs_init(i32* %118, i32* @xfs_mp_ktype, i32* null, i8* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %100
  br label %567

126:                                              ; preds = %100
  %127 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %128 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %131 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %130, i32 0, i32 8
  %132 = call i32 @xfs_sysfs_init(i32* %129, i32* @xfs_stats_ktype, i32* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %563

136:                                              ; preds = %126
  %137 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %138 = call i32 @xfs_error_sysfs_init(%struct.xfs_mount* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %558

142:                                              ; preds = %136
  %143 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %144 = call i32 @xfs_errortag_init(%struct.xfs_mount* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %555

148:                                              ; preds = %142
  %149 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %150 = call i32 @xfs_uuid_mount(%struct.xfs_mount* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %552

154:                                              ; preds = %148
  %155 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %156 = call i32 @xfs_set_rw_sizes(%struct.xfs_mount* %155)
  %157 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %158 = call i32 @xfs_set_low_space_thresholds(%struct.xfs_mount* %157)
  %159 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %160 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %159, i32 0, i32 11
  %161 = call i64 @xfs_sb_version_hassparseinodes(%struct.xfs_sb* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %154
  %164 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %165 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %164, i32 0, i32 11
  %166 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %169 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %6, align 8
  %170 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %168, i32 %171)
  %173 = icmp ne i64 %167, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %163
  %175 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %176 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %177 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %176, i32 0, i32 11
  %178 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %181 = load %struct.xfs_ino_geometry*, %struct.xfs_ino_geometry** %6, align 8
  %182 = getelementptr inbounds %struct.xfs_ino_geometry, %struct.xfs_ino_geometry* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %180, i32 %183)
  %185 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %175, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %179, i64 %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %10, align 4
  br label %549

188:                                              ; preds = %163, %154
  %189 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %190 = call i32 @xfs_check_sizes(%struct.xfs_mount* %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %549

194:                                              ; preds = %188
  %195 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %196 = call i32 @xfs_rtmount_init(%struct.xfs_mount* %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %201 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %549

202:                                              ; preds = %194
  %203 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %204 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 8
  %208 = call i32 @get_unaligned_be16(i32* %207)
  %209 = shl i32 %208, 16
  %210 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %211 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  %215 = call i32 @get_unaligned_be16(i32* %214)
  %216 = or i32 %209, %215
  %217 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %218 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 %216, i32* %220, align 4
  %221 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %222 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = call i32 @get_unaligned_be32(i32* %225)
  %227 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %228 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %226, i32* %230, align 4
  %231 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %232 = call i32 @xfs_da_mount(%struct.xfs_mount* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %202
  %236 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %236, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %237)
  br label %549

239:                                              ; preds = %202
  %240 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %241 = call i32 @xfs_trans_init(%struct.xfs_mount* %240)
  %242 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %243 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %244 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %247 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %246, i32 0, i32 13
  %248 = call i32 @xfs_initialize_perag(%struct.xfs_mount* %242, i32 %245, i32* %247)
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %239
  %252 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %252, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %253)
  br label %546

255:                                              ; preds = %239
  %256 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %257 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %255
  %261 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %262 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %263 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %264 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %265 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %263, %struct.xfs_mount* %264)
  %266 = load i32, i32* @EFSCORRUPTED, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %10, align 4
  br label %543

268:                                              ; preds = %255
  %269 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %270 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %271 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %274 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %275 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %273, i32 %276)
  %278 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %279 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %280 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @XFS_FSB_TO_BB(%struct.xfs_mount* %278, i32 %281)
  %283 = call i32 @xfs_log_mount(%struct.xfs_mount* %269, i64 %272, i32 %277, i32 %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* %10, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %268
  %287 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %288 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %287, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %520

289:                                              ; preds = %268
  %290 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %291 = call i32 @xfs_check_summary_counts(%struct.xfs_mount* %290)
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %512

295:                                              ; preds = %289
  %296 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %297 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %298 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @XFS_IGET_UNTRUSTED, align 4
  %301 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %302 = call i32 @xfs_iget(%struct.xfs_mount* %296, i32* null, i32 %299, i32 %300, i32 %301, %struct.xfs_inode** %5)
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %295
  %306 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %307 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %308 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %10, align 4
  %311 = sub nsw i32 0, %310
  %312 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %306, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %309, i32 %311)
  br label %512

313:                                              ; preds = %295
  %314 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %315 = icmp ne %struct.xfs_inode* %314, null
  %316 = zext i1 %315 to i32
  %317 = call i32 @ASSERT(i32 %316)
  %318 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %319 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %318)
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @S_ISDIR(i32 %321)
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = call i64 @unlikely(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %342

328:                                              ; preds = %313
  %329 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %330 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %331 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %329, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %332)
  %334 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %335 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %336 = call i32 @xfs_iunlock(%struct.xfs_inode* %334, i32 %335)
  %337 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %338 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %339 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %337, %struct.xfs_mount* %338)
  %340 = load i32, i32* @EFSCORRUPTED, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %10, align 4
  br label %499

342:                                              ; preds = %313
  %343 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %344 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %345 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %344, i32 0, i32 12
  store %struct.xfs_inode* %343, %struct.xfs_inode** %345, align 8
  %346 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %347 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %348 = call i32 @xfs_iunlock(%struct.xfs_inode* %346, i32 %347)
  %349 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %350 = call i32 @xfs_rtmount_inodes(%struct.xfs_mount* %349)
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* %10, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %342
  %354 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %355 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %354, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %499

356:                                              ; preds = %342
  %357 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %358 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %377

361:                                              ; preds = %356
  %362 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %363 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %377, label %368

368:                                              ; preds = %361
  %369 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %370 = call i32 @xfs_sync_sb(%struct.xfs_mount* %369, i32 0)
  store i32 %370, i32* %10, align 4
  %371 = load i32, i32* %10, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %375 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %374, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %496

376:                                              ; preds = %368
  br label %377

377:                                              ; preds = %376, %361, %356
  %378 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %379 = call i64 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %377
  %382 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %383 = call i32 @xfs_qm_newmount(%struct.xfs_mount* %382, i64* %8, i64* %9)
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* %10, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  br label %496

387:                                              ; preds = %381
  br label %412

388:                                              ; preds = %377
  %389 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %390 = call i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount* %389)
  %391 = icmp ne i32 %390, 0
  %392 = xor i1 %391, true
  %393 = zext i1 %392 to i32
  %394 = call i32 @ASSERT(i32 %393)
  %395 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %396 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %395, i32 0, i32 11
  %397 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %388
  %403 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %404 = call i32 @xfs_notice(%struct.xfs_mount* %403, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %405 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %406 = call i32 @xfs_mount_reset_sbqflags(%struct.xfs_mount* %405)
  store i32 %406, i32* %10, align 4
  %407 = load i32, i32* %10, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %402
  br label %496

410:                                              ; preds = %402
  br label %411

411:                                              ; preds = %410, %388
  br label %412

412:                                              ; preds = %411, %387
  %413 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %414 = call i32 @xfs_log_mount_finish(%struct.xfs_mount* %413)
  store i32 %414, i32* %10, align 4
  %415 = load i32, i32* %10, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %419 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %418, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %496

420:                                              ; preds = %412
  %421 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %422 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %425 = load i32, i32* @XFS_MOUNT_NORECOVERY, align 4
  %426 = or i32 %424, %425
  %427 = and i32 %423, %426
  %428 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %420
  %431 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %432 = call i32 @xfs_quiesce_attr(%struct.xfs_mount* %431)
  br label %433

433:                                              ; preds = %430, %420
  %434 = load i64, i64* %8, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %448

436:                                              ; preds = %433
  %437 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %438 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %437, i32 0, i32 6
  %439 = load i64, i64* %438, align 8
  %440 = icmp eq i64 %439, 0
  %441 = zext i1 %440 to i32
  %442 = call i32 @ASSERT(i32 %441)
  %443 = load i64, i64* %9, align 8
  %444 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %445 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %444, i32 0, i32 6
  store i64 %443, i64* %445, align 8
  %446 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %447 = call i32 @xfs_qm_mount_quotas(%struct.xfs_mount* %446)
  br label %448

448:                                              ; preds = %436, %433
  %449 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %450 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %489, label %455

455:                                              ; preds = %448
  %456 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %457 = call i32 @xfs_default_resblks(%struct.xfs_mount* %456)
  store i32 %457, i32* %7, align 4
  %458 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %459 = call i32 @xfs_reserve_blocks(%struct.xfs_mount* %458, i32* %7, i32* null)
  store i32 %459, i32* %10, align 4
  %460 = load i32, i32* %10, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %455
  %463 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %464 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %463, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  br label %465

465:                                              ; preds = %462, %455
  %466 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %467 = call i32 @xfs_reflink_recover_cow(%struct.xfs_mount* %466)
  store i32 %467, i32* %10, align 4
  %468 = load i32, i32* %10, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %477

470:                                              ; preds = %465
  %471 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %472 = load i32, i32* %10, align 4
  %473 = call i32 @xfs_err(%struct.xfs_mount* %471, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %472)
  %474 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %475 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %476 = call i32 @xfs_force_shutdown(%struct.xfs_mount* %474, i32 %475)
  br label %493

477:                                              ; preds = %465
  %478 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %479 = call i32 @xfs_fs_reserve_ag_blocks(%struct.xfs_mount* %478)
  store i32 %479, i32* %10, align 4
  %480 = load i32, i32* %10, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %488

482:                                              ; preds = %477
  %483 = load i32, i32* %10, align 4
  %484 = load i32, i32* @ENOSPC, align 4
  %485 = sub nsw i32 0, %484
  %486 = icmp ne i32 %483, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %482
  br label %490

488:                                              ; preds = %482, %477
  br label %489

489:                                              ; preds = %488, %448
  store i32 0, i32* %2, align 4
  br label %569

490:                                              ; preds = %487
  %491 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %492 = call i32 @xfs_fs_unreserve_ag_blocks(%struct.xfs_mount* %491)
  br label %493

493:                                              ; preds = %490, %470
  %494 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %495 = call i32 @xfs_qm_unmount_quotas(%struct.xfs_mount* %494)
  br label %496

496:                                              ; preds = %493, %417, %409, %386, %373
  %497 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %498 = call i32 @xfs_rtunmount_inodes(%struct.xfs_mount* %497)
  br label %499

499:                                              ; preds = %496, %353, %328
  %500 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %501 = call i32 @xfs_irele(%struct.xfs_inode* %500)
  %502 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %503 = call i32 @xfs_qm_unmount(%struct.xfs_mount* %502)
  %504 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %505 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %504, i32 0, i32 10
  %506 = call i32 @cancel_delayed_work_sync(i32* %505)
  %507 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %508 = load i32, i32* @SYNC_WAIT, align 4
  %509 = call i32 @xfs_reclaim_inodes(%struct.xfs_mount* %507, i32 %508)
  %510 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %511 = call i32 @xfs_health_unmount(%struct.xfs_mount* %510)
  br label %512

512:                                              ; preds = %499, %305, %294
  %513 = load i32, i32* @XFS_MOUNT_UNMOUNTING, align 4
  %514 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %515 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = or i32 %516, %513
  store i32 %517, i32* %515, align 4
  %518 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %519 = call i32 @xfs_log_mount_cancel(%struct.xfs_mount* %518)
  br label %520

520:                                              ; preds = %512, %286
  %521 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %522 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %521, i32 0, i32 5
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %520
  %526 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %527 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %526, i32 0, i32 5
  %528 = load i64, i64* %527, align 8
  %529 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %530 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %529, i32 0, i32 7
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %528, %531
  br i1 %532, label %533, label %538

533:                                              ; preds = %525
  %534 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %535 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %534, i32 0, i32 5
  %536 = load i64, i64* %535, align 8
  %537 = call i32 @xfs_wait_buftarg(i64 %536)
  br label %538

538:                                              ; preds = %533, %525, %520
  %539 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %540 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %539, i32 0, i32 7
  %541 = load i64, i64* %540, align 8
  %542 = call i32 @xfs_wait_buftarg(i64 %541)
  br label %543

543:                                              ; preds = %538, %260
  %544 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %545 = call i32 @xfs_free_perag(%struct.xfs_mount* %544)
  br label %546

546:                                              ; preds = %543, %251
  %547 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %548 = call i32 @xfs_da_unmount(%struct.xfs_mount* %547)
  br label %549

549:                                              ; preds = %546, %235, %199, %193, %174
  %550 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %551 = call i32 @xfs_uuid_unmount(%struct.xfs_mount* %550)
  br label %552

552:                                              ; preds = %549, %153
  %553 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %554 = call i32 @xfs_errortag_del(%struct.xfs_mount* %553)
  br label %555

555:                                              ; preds = %552, %147
  %556 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %557 = call i32 @xfs_error_sysfs_del(%struct.xfs_mount* %556)
  br label %558

558:                                              ; preds = %555, %141
  %559 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %560 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %559, i32 0, i32 9
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 0
  %562 = call i32 @xfs_sysfs_del(i32* %561)
  br label %563

563:                                              ; preds = %558, %135
  %564 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %565 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %564, i32 0, i32 8
  %566 = call i32 @xfs_sysfs_del(i32* %565)
  br label %567

567:                                              ; preds = %563, %125, %99
  %568 = load i32, i32* %10, align 4
  store i32 %568, i32* %2, align 4
  br label %569

569:                                              ; preds = %567, %489
  %570 = load i32, i32* %2, align 4
  ret i32 %570
}

declare dso_local %struct.xfs_ino_geometry* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sb_mount_common(%struct.xfs_mount*, %struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_has_mismatched_features2(%struct.xfs_sb*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, ...) #1

declare dso_local i64 @xfs_sb_version_hasattr2(%struct.xfs_sb*) #1

declare dso_local i32 @xfs_sb_version_removeattr2(%struct.xfs_sb*) #1

declare dso_local i32 @xfs_update_alignment(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_alloc_compute_maxlevels(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_bmap_compute_maxlevels(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_ialloc_setup_geometry(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_rmapbt_compute_maxlevels(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_refcountbt_compute_maxlevels(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sysfs_init(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @xfs_error_sysfs_init(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_errortag_init(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_uuid_mount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_set_rw_sizes(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_set_low_space_thresholds(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hassparseinodes(%struct.xfs_sb*) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_check_sizes(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_rtmount_init(%struct.xfs_mount*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @xfs_da_mount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_init(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_initialize_perag(%struct.xfs_mount*, i32, i32*) #1

declare dso_local i32 @XFS_ERROR_REPORT(i8*, i32, %struct.xfs_mount*) #1

declare dso_local i32 @xfs_log_mount(%struct.xfs_mount*, i64, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_check_summary_counts(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_iget(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_inode**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_6__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_rtmount_inodes(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sync_sb(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_newmount(%struct.xfs_mount*, i64*, i64*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_notice(%struct.xfs_mount*, i8*) #1

declare dso_local i32 @xfs_mount_reset_sbqflags(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_log_mount_finish(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_quiesce_attr(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_mount_quotas(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_default_resblks(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_reserve_blocks(%struct.xfs_mount*, i32*, i32*) #1

declare dso_local i32 @xfs_reflink_recover_cow(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_err(%struct.xfs_mount*, i8*, i32) #1

declare dso_local i32 @xfs_force_shutdown(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_fs_reserve_ag_blocks(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_fs_unreserve_ag_blocks(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_unmount_quotas(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_rtunmount_inodes(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_irele(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_qm_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @xfs_reclaim_inodes(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_health_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_log_mount_cancel(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_wait_buftarg(i64) #1

declare dso_local i32 @xfs_free_perag(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_da_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_uuid_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_errortag_del(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_error_sysfs_del(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sysfs_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

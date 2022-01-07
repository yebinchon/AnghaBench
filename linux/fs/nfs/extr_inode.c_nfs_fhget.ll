; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_fhget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_fhget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, %struct.TYPE_12__*, i64, i32, i32, i64, i8*, i8*, i8*, i32, i32*, i32*, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.super_block = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.nfs4_label = type { i32 }
%struct.nfs_find_desc = type { %struct.nfs_fattr*, %struct.nfs_fh* }
%struct.nfs_inode = type { i64, i32, i32, i32, i32, i32, i64, i64, i8** }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32*, i32* }

@ENOENT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@nfs_find_actor = common dso_local global i32 0, align 4
@nfs_init_locked = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MODE = common dso_local global i32 0, align 4
@NFS_CAP_MODE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_OTHER = common dso_local global i32 0, align 4
@nfs_file_aops = common dso_local global i32 0, align 4
@nfs_dir_operations = common dso_local global i32 0, align 4
@nfs_dir_aops = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTPOINT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_V4_REFERRAL = common dso_local global i32 0, align 4
@nfs_referral_inode_operations = common dso_local global i32 0, align 4
@nfs_mountpoint_inode_operations = common dso_local global i32 0, align 4
@S_AUTOMOUNT = common dso_local global i32 0, align 4
@nfs_symlink_inode_operations = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_ATIME = common dso_local global i32 0, align 4
@NFS_CAP_ATIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_CAP_MTIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_CAP_CTIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_SIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_NLINK = common dso_local global i32 0, align 4
@NFS_CAP_NLINK = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_OWNER = common dso_local global i32 0, align 4
@NFS_CAP_OWNER = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_GROUP = common dso_local global i32 0, align 4
@NFS_CAP_OWNER_GROUP = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_BLOCKS_USED = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SPACE_USED = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: nfs_fhget(%s/%Lu fh_crc=0x%08x ct=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"nfs_fhget: iget failed with error %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nfs_fhget(%struct.super_block* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.nfs4_label*, align 8
  %9 = alloca %struct.nfs_find_desc, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfs_inode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %8, align 8
  %15 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %9, i32 0, i32 0
  %16 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  store %struct.nfs_fattr* %16, %struct.nfs_fattr** %15, align 8
  %17 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %9, i32 0, i32 1
  %18 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fh* %18, %struct.nfs_fh** %17, align 8
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.inode* @ERR_PTR(i32 %20)
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %24 = call i32 @nfs_attr_check_mountpoint(%struct.super_block* %22, %struct.nfs_fattr* %23)
  %25 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %26 = call i64 @nfs_attr_use_mounted_on_fileid(%struct.nfs_fattr* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %30 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %33 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %32, i32 0, i32 15
  store i32 %31, i32* %33, align 4
  br label %43

34:                                               ; preds = %4
  %35 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %36 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %523

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %523

51:                                               ; preds = %43
  %52 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %53 = call i64 @nfs_fattr_to_ino_t(%struct.nfs_fattr* %52)
  store i64 %53, i64* %11, align 8
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* @nfs_find_actor, align 4
  %57 = load i32, i32* @nfs_init_locked, align 4
  %58 = call %struct.inode* @iget5_locked(%struct.super_block* %54, i64 %55, i32 %56, i32 %57, %struct.nfs_find_desc* %9)
  store %struct.inode* %58, %struct.inode** %10, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = icmp eq %struct.inode* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.inode* @ERR_PTR(i32 %63)
  store %struct.inode* %64, %struct.inode** %10, align 8
  br label %523

65:                                               ; preds = %51
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @I_NEW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %495

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call %struct.nfs_inode* @NFS_I(%struct.inode* %73)
  store %struct.nfs_inode* %74, %struct.nfs_inode** %12, align 8
  %75 = load i64, i64* @jiffies, align 8
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @S_NOATIME, align 4
  %80 = load i32, i32* @S_NOCMTIME, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %87 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 12
  store i32 %88, i32* %90, align 8
  %91 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %92 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %91, i32 0, i32 3
  store i32 0, i32* %92, align 8
  %93 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %94 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NFS_ATTR_FATTR_MODE, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %72
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = load i32, i32* @NFS_CAP_MODE, align 4
  %102 = call i64 @nfs_server_capable(%struct.inode* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %107 = call i32 @nfs_set_cache_invalid(%struct.inode* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %99, %72
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %109)
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.inode*, %struct.inode** %10, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 13
  store i32* %116, i32** %118, align 8
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @S_ISREG(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %108
  %125 = load %struct.super_block*, %struct.super_block** %5, align 8
  %126 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %125)
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 14
  store i32* %132, i32** %134, align 8
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i32* @nfs_file_aops, i32** %137, align 8
  br label %217

138:                                              ; preds = %108
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @S_ISDIR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %195

144:                                              ; preds = %138
  %145 = load %struct.super_block*, %struct.super_block** %5, align 8
  %146 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %145)
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 13
  store i32* %152, i32** %154, align 8
  %155 = load %struct.inode*, %struct.inode** %10, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 14
  store i32* @nfs_dir_operations, i32** %156, align 8
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  store i32* @nfs_dir_aops, i32** %159, align 8
  %160 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %161 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @NFS_ATTR_FATTR_MOUNTPOINT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %144
  %167 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %168 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %166, %144
  %174 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %175 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.inode*, %struct.inode** %10, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 13
  store i32* @nfs_referral_inode_operations, i32** %182, align 8
  br label %186

183:                                              ; preds = %173
  %184 = load %struct.inode*, %struct.inode** %10, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 13
  store i32* @nfs_mountpoint_inode_operations, i32** %185, align 8
  br label %186

186:                                              ; preds = %183, %180
  %187 = load %struct.inode*, %struct.inode** %10, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 14
  store i32* null, i32** %188, align 8
  %189 = load i32, i32* @S_AUTOMOUNT, align 4
  %190 = load %struct.inode*, %struct.inode** %10, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %166
  br label %216

195:                                              ; preds = %138
  %196 = load %struct.inode*, %struct.inode** %10, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @S_ISLNK(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.inode*, %struct.inode** %10, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 13
  store i32* @nfs_symlink_inode_operations, i32** %203, align 8
  %204 = load %struct.inode*, %struct.inode** %10, align 8
  %205 = call i32 @inode_nohighmem(%struct.inode* %204)
  br label %215

206:                                              ; preds = %195
  %207 = load %struct.inode*, %struct.inode** %10, align 8
  %208 = load %struct.inode*, %struct.inode** %10, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %212 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @init_special_inode(%struct.inode* %207, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %206, %201
  br label %216

216:                                              ; preds = %215, %194
  br label %217

217:                                              ; preds = %216, %124
  %218 = load %struct.inode*, %struct.inode** %10, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 11
  %220 = call i32 @memset(i8** %219, i32 0, i32 8)
  %221 = load %struct.inode*, %struct.inode** %10, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 10
  %223 = call i32 @memset(i8** %222, i32 0, i32 8)
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 9
  %226 = call i32 @memset(i8** %225, i32 0, i32 8)
  %227 = load %struct.inode*, %struct.inode** %10, align 8
  %228 = call i32 @inode_set_iversion_raw(%struct.inode* %227, i32 0)
  %229 = load %struct.inode*, %struct.inode** %10, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 8
  store i64 0, i64* %230, align 8
  %231 = load %struct.inode*, %struct.inode** %10, align 8
  %232 = call i32 @clear_nlink(%struct.inode* %231)
  %233 = call i32 @make_kuid(i32* @init_user_ns, i32 -2)
  %234 = load %struct.inode*, %struct.inode** %10, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 4
  %236 = call i32 @make_kgid(i32* @init_user_ns, i32 -2)
  %237 = load %struct.inode*, %struct.inode** %10, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 8
  %239 = load %struct.inode*, %struct.inode** %10, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 5
  store i64 0, i64* %240, align 8
  %241 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %242 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %241, i32 0, i32 8
  %243 = load i8**, i8*** %242, align 8
  %244 = call i32 @memset(i8** %243, i32 0, i32 8)
  %245 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %246 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %245, i32 0, i32 7
  store i64 0, i64* %246, align 8
  %247 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %248 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %247, i32 0, i32 6
  store i64 0, i64* %248, align 8
  %249 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %250 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %253 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %252, i32 0, i32 5
  store i32 %251, i32* %253, align 8
  %254 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %255 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %254, i32 0, i32 10
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %258 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  %259 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %260 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @NFS_ATTR_FATTR_ATIME, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %217
  %266 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %267 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @timespec_to_timespec64(i32 %268)
  %270 = load %struct.inode*, %struct.inode** %10, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 11
  store i8* %269, i8** %271, align 8
  br label %282

272:                                              ; preds = %217
  %273 = load %struct.inode*, %struct.inode** %10, align 8
  %274 = load i32, i32* @NFS_CAP_ATIME, align 4
  %275 = call i64 @nfs_server_capable(%struct.inode* %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load %struct.inode*, %struct.inode** %10, align 8
  %279 = load i32, i32* @NFS_INO_INVALID_ATIME, align 4
  %280 = call i32 @nfs_set_cache_invalid(%struct.inode* %278, i32 %279)
  br label %281

281:                                              ; preds = %277, %272
  br label %282

282:                                              ; preds = %281, %265
  %283 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %284 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %282
  %290 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %291 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = call i8* @timespec_to_timespec64(i32 %292)
  %294 = load %struct.inode*, %struct.inode** %10, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 10
  store i8* %293, i8** %295, align 8
  br label %306

296:                                              ; preds = %282
  %297 = load %struct.inode*, %struct.inode** %10, align 8
  %298 = load i32, i32* @NFS_CAP_MTIME, align 4
  %299 = call i64 @nfs_server_capable(%struct.inode* %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load %struct.inode*, %struct.inode** %10, align 8
  %303 = load i32, i32* @NFS_INO_INVALID_MTIME, align 4
  %304 = call i32 @nfs_set_cache_invalid(%struct.inode* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %296
  br label %306

306:                                              ; preds = %305, %289
  %307 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %308 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %306
  %314 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %315 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 4
  %317 = call i8* @timespec_to_timespec64(i32 %316)
  %318 = load %struct.inode*, %struct.inode** %10, align 8
  %319 = getelementptr inbounds %struct.inode, %struct.inode* %318, i32 0, i32 9
  store i8* %317, i8** %319, align 8
  br label %330

320:                                              ; preds = %306
  %321 = load %struct.inode*, %struct.inode** %10, align 8
  %322 = load i32, i32* @NFS_CAP_CTIME, align 4
  %323 = call i64 @nfs_server_capable(%struct.inode* %321, i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %320
  %326 = load %struct.inode*, %struct.inode** %10, align 8
  %327 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %328 = call i32 @nfs_set_cache_invalid(%struct.inode* %326, i32 %327)
  br label %329

329:                                              ; preds = %325, %320
  br label %330

330:                                              ; preds = %329, %313
  %331 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %332 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %330
  %338 = load %struct.inode*, %struct.inode** %10, align 8
  %339 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %340 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @inode_set_iversion_raw(%struct.inode* %338, i32 %341)
  br label %347

343:                                              ; preds = %330
  %344 = load %struct.inode*, %struct.inode** %10, align 8
  %345 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %346 = call i32 @nfs_set_cache_invalid(%struct.inode* %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %337
  %348 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %349 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %347
  %355 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %356 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = call i64 @nfs_size_to_loff_t(i32 %357)
  %359 = load %struct.inode*, %struct.inode** %10, align 8
  %360 = getelementptr inbounds %struct.inode, %struct.inode* %359, i32 0, i32 8
  store i64 %358, i64* %360, align 8
  br label %365

361:                                              ; preds = %347
  %362 = load %struct.inode*, %struct.inode** %10, align 8
  %363 = load i32, i32* @NFS_INO_INVALID_SIZE, align 4
  %364 = call i32 @nfs_set_cache_invalid(%struct.inode* %362, i32 %363)
  br label %365

365:                                              ; preds = %361, %354
  %366 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %367 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @NFS_ATTR_FATTR_NLINK, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %365
  %373 = load %struct.inode*, %struct.inode** %10, align 8
  %374 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %375 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @set_nlink(%struct.inode* %373, i32 %376)
  br label %388

378:                                              ; preds = %365
  %379 = load %struct.inode*, %struct.inode** %10, align 8
  %380 = load i32, i32* @NFS_CAP_NLINK, align 4
  %381 = call i64 @nfs_server_capable(%struct.inode* %379, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = load %struct.inode*, %struct.inode** %10, align 8
  %385 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %386 = call i32 @nfs_set_cache_invalid(%struct.inode* %384, i32 %385)
  br label %387

387:                                              ; preds = %383, %378
  br label %388

388:                                              ; preds = %387, %372
  %389 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %390 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @NFS_ATTR_FATTR_OWNER, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %388
  %396 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %397 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.inode*, %struct.inode** %10, align 8
  %400 = getelementptr inbounds %struct.inode, %struct.inode* %399, i32 0, i32 7
  store i32 %398, i32* %400, align 4
  br label %411

401:                                              ; preds = %388
  %402 = load %struct.inode*, %struct.inode** %10, align 8
  %403 = load i32, i32* @NFS_CAP_OWNER, align 4
  %404 = call i64 @nfs_server_capable(%struct.inode* %402, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %401
  %407 = load %struct.inode*, %struct.inode** %10, align 8
  %408 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %409 = call i32 @nfs_set_cache_invalid(%struct.inode* %407, i32 %408)
  br label %410

410:                                              ; preds = %406, %401
  br label %411

411:                                              ; preds = %410, %395
  %412 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %413 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @NFS_ATTR_FATTR_GROUP, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %411
  %419 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %420 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.inode*, %struct.inode** %10, align 8
  %423 = getelementptr inbounds %struct.inode, %struct.inode* %422, i32 0, i32 6
  store i32 %421, i32* %423, align 8
  br label %434

424:                                              ; preds = %411
  %425 = load %struct.inode*, %struct.inode** %10, align 8
  %426 = load i32, i32* @NFS_CAP_OWNER_GROUP, align 4
  %427 = call i64 @nfs_server_capable(%struct.inode* %425, i32 %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load %struct.inode*, %struct.inode** %10, align 8
  %431 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %432 = call i32 @nfs_set_cache_invalid(%struct.inode* %430, i32 %431)
  br label %433

433:                                              ; preds = %429, %424
  br label %434

434:                                              ; preds = %433, %418
  %435 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %436 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @NFS_ATTR_FATTR_BLOCKS_USED, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %449

441:                                              ; preds = %434
  %442 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %443 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.inode*, %struct.inode** %10, align 8
  %448 = getelementptr inbounds %struct.inode, %struct.inode* %447, i32 0, i32 5
  store i64 %446, i64* %448, align 8
  br label %449

449:                                              ; preds = %441, %434
  %450 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %451 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @NFS_ATTR_FATTR_SPACE_USED, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %465

456:                                              ; preds = %449
  %457 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %458 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = call i64 @nfs_calc_block_size(i32 %461)
  %463 = load %struct.inode*, %struct.inode** %10, align 8
  %464 = getelementptr inbounds %struct.inode, %struct.inode* %463, i32 0, i32 5
  store i64 %462, i64* %464, align 8
  br label %465

465:                                              ; preds = %456, %449
  %466 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %467 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 8
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %465
  %471 = load i32, i32* @NFS_INO_REVAL_FORCED, align 4
  %472 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %473 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = or i32 %474, %471
  store i32 %475, i32* %473, align 8
  br label %476

476:                                              ; preds = %470, %465
  %477 = load %struct.inode*, %struct.inode** %10, align 8
  %478 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %479 = load %struct.nfs4_label*, %struct.nfs4_label** %8, align 8
  %480 = call i32 @nfs_setsecurity(%struct.inode* %477, %struct.nfs_fattr* %478, %struct.nfs4_label* %479)
  %481 = load %struct.inode*, %struct.inode** %10, align 8
  %482 = call i32 @NFS_MINATTRTIMEO(%struct.inode* %481)
  %483 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %484 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %483, i32 0, i32 2
  store i32 %482, i32* %484, align 4
  %485 = load i64, i64* %13, align 8
  %486 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %487 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %486, i32 0, i32 0
  store i64 %485, i64* %487, align 8
  %488 = load i32, i32* @RB_ROOT, align 4
  %489 = load %struct.nfs_inode*, %struct.nfs_inode** %12, align 8
  %490 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %489, i32 0, i32 1
  store i32 %488, i32* %490, align 8
  %491 = load %struct.inode*, %struct.inode** %10, align 8
  %492 = call i32 @nfs_fscache_init_inode(%struct.inode* %491)
  %493 = load %struct.inode*, %struct.inode** %10, align 8
  %494 = call i32 @unlock_new_inode(%struct.inode* %493)
  br label %507

495:                                              ; preds = %65
  %496 = load %struct.inode*, %struct.inode** %10, align 8
  %497 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %498 = call i32 @nfs_refresh_inode(%struct.inode* %496, %struct.nfs_fattr* %497)
  store i32 %498, i32* %14, align 4
  %499 = load i32, i32* %14, align 4
  %500 = icmp slt i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %495
  %502 = load %struct.inode*, %struct.inode** %10, align 8
  %503 = call i32 @iput(%struct.inode* %502)
  %504 = load i32, i32* %14, align 4
  %505 = call %struct.inode* @ERR_PTR(i32 %504)
  store %struct.inode* %505, %struct.inode** %10, align 8
  br label %523

506:                                              ; preds = %495
  br label %507

507:                                              ; preds = %506, %476
  %508 = load %struct.inode*, %struct.inode** %10, align 8
  %509 = getelementptr inbounds %struct.inode, %struct.inode* %508, i32 0, i32 4
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.inode*, %struct.inode** %10, align 8
  %514 = call i64 @NFS_FILEID(%struct.inode* %513)
  %515 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %516 = call i32 @nfs_display_fhandle_hash(%struct.nfs_fh* %515)
  %517 = load %struct.inode*, %struct.inode** %10, align 8
  %518 = getelementptr inbounds %struct.inode, %struct.inode* %517, i32 0, i32 3
  %519 = call i32 @atomic_read(i32* %518)
  %520 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %512, i64 %514, i32 %516, i32 %519)
  br label %521

521:                                              ; preds = %523, %507
  %522 = load %struct.inode*, %struct.inode** %10, align 8
  ret %struct.inode* %522

523:                                              ; preds = %501, %61, %50, %41
  %524 = load %struct.inode*, %struct.inode** %10, align 8
  %525 = call i32 @PTR_ERR(%struct.inode* %524)
  %526 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %525)
  br label %521
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_attr_check_mountpoint(%struct.super_block*, %struct.nfs_fattr*) #1

declare dso_local i64 @nfs_attr_use_mounted_on_fileid(%struct.nfs_fattr*) #1

declare dso_local i64 @nfs_fattr_to_ino_t(%struct.nfs_fattr*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.nfs_find_desc*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local i32 @nfs_set_cache_invalid(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_16__* @NFS_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @inode_set_iversion_raw(%struct.inode*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @make_kuid(i32*, i32) #1

declare dso_local i32 @make_kgid(i32*, i32) #1

declare dso_local i8* @timespec_to_timespec64(i32) #1

declare dso_local i64 @nfs_size_to_loff_t(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i64 @nfs_calc_block_size(i32) #1

declare dso_local i32 @nfs_setsecurity(%struct.inode*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local i32 @NFS_MINATTRTIMEO(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_init_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i32 @nfs_display_fhandle_hash(%struct.nfs_fh*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

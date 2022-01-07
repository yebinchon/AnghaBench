; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i64, i32, i32, i32*, i32, %struct.TYPE_5__*, i32*, i32*, i32, i32*, i32*, i32, i32, i64, i32, %struct.jfs_sb_info* }
%struct.TYPE_5__ = type { i32 }
%struct.jfs_sb_info = type { i32, i32, i32, i32, %struct.inode*, i32*, i32, i32, %struct.super_block* }
%struct.inode = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"In jfs_read_super: s_flags=0x%lx\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JFS_LINK_MAX = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@INVALID_GID = common dso_local global i32 0, align 4
@JFS_ERR_REMOUNT_RO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"resize option for remount only\0A\00", align 1
@PSIZE = common dso_local global i32 0, align 4
@jfs_super_operations = common dso_local global i32 0, align 4
@jfs_export_operations = common dso_local global i32 0, align 4
@jfs_xattr_handlers = common dso_local global i32 0, align 4
@jfs_metapage_aops = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"jfs_mount failed w/return code = %d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"jfs_mount_rw failed, return code = %d\00", align 1
@JFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@jfs_ci_dentry_operations = common dso_local global i32 0, align 4
@ROOT_I = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"jfs_read_super: get root dentry failed\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"jfs_umount failed with return code %d\00", align 1
@QTYPE_MASK_GRP = common dso_local global i32 0, align 4
@QTYPE_MASK_USR = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@dquot_operations = common dso_local global i32 0, align 4
@jfs_quotactl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @jfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jfs_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @jfs_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.jfs_sb_info* @kzalloc(i32 48, i32 %20)
  store %struct.jfs_sb_info* %21, %struct.jfs_sb_info** %8, align 8
  %22 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %23 = icmp ne %struct.jfs_sb_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %226

27:                                               ; preds = %3
  %28 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 17
  store %struct.jfs_sb_info* %28, %struct.jfs_sb_info** %30, align 8
  %31 = load i32, i32* @JFS_LINK_MAX, align 4
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 16
  store i32 %31, i32* %33, align 8
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 15
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @U32_MAX, align 4
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 14
  store i32 %36, i32* %38, align 4
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %41 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %40, i32 0, i32 8
  store %struct.super_block* %39, %struct.super_block** %41, align 8
  %42 = load i32, i32* @INVALID_UID, align 4
  %43 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %44 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @INVALID_GID, align 4
  %46 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %47 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load i32, i32* @JFS_ERR_REMOUNT_RO, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = call i32 @parse_options(i8* %51, %struct.super_block* %52, i64* %11, i32* %12)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %27
  br label %222

56:                                               ; preds = %27
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %59 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %222

64:                                               ; preds = %56
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = load i32, i32* @PSIZE, align 4
  %67 = call i32 @sb_set_blocksize(%struct.super_block* %65, i32 %66)
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 12
  store i32* @jfs_super_operations, i32** %69, align 8
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 11
  store i32* @jfs_export_operations, i32** %71, align 8
  %72 = load i32, i32* @jfs_xattr_handlers, align 4
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 8
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = call %struct.inode* @new_inode(%struct.super_block* %75)
  store %struct.inode* %76, %struct.inode** %9, align 8
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = icmp eq %struct.inode* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %217

82:                                               ; preds = %64
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.super_block*, %struct.super_block** %5, align 8
  %86 = getelementptr inbounds %struct.super_block, %struct.super_block* %85, i32 0, i32 7
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @i_size_read(i32 %89)
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32* @jfs_metapage_aops, i32** %96, align 8
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = call i32 @inode_fake_hash(%struct.inode* %97)
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* @GFP_NOFS, align 4
  %103 = call i32 @mapping_set_gfp_mask(%struct.TYPE_6__* %101, i32 %102)
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %106 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %105, i32 0, i32 4
  store %struct.inode* %104, %struct.inode** %106, align 8
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = call i32 @jfs_mount(%struct.super_block* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %82
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %194

118:                                              ; preds = %82
  %119 = load %struct.super_block*, %struct.super_block** %5, align 8
  %120 = call i64 @sb_rdonly(%struct.super_block* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %124 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %123, i32 0, i32 5
  store i32* null, i32** %124, align 8
  br label %138

125:                                              ; preds = %118
  %126 = load %struct.super_block*, %struct.super_block** %5, align 8
  %127 = call i32 @jfs_mount_rw(%struct.super_block* %126, i32 0)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %130
  br label %185

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %122
  %139 = load i32, i32* @JFS_SUPER_MAGIC, align 4
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  %142 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %143 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @JFS_OS2, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load %struct.super_block*, %struct.super_block** %5, align 8
  %150 = getelementptr inbounds %struct.super_block, %struct.super_block* %149, i32 0, i32 5
  store i32* @jfs_ci_dentry_operations, i32** %150, align 8
  br label %151

151:                                              ; preds = %148, %138
  %152 = load %struct.super_block*, %struct.super_block** %5, align 8
  %153 = load i32, i32* @ROOT_I, align 4
  %154 = call %struct.inode* @jfs_iget(%struct.super_block* %152, i32 %153)
  store %struct.inode* %154, %struct.inode** %9, align 8
  %155 = load %struct.inode*, %struct.inode** %9, align 8
  %156 = call i64 @IS_ERR(%struct.inode* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = call i32 @PTR_ERR(%struct.inode* %159)
  store i32 %160, i32* %13, align 4
  br label %185

161:                                              ; preds = %151
  %162 = load %struct.inode*, %struct.inode** %9, align 8
  %163 = call i32 @d_make_root(%struct.inode* %162)
  %164 = load %struct.super_block*, %struct.super_block** %5, align 8
  %165 = getelementptr inbounds %struct.super_block, %struct.super_block* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load %struct.super_block*, %struct.super_block** %5, align 8
  %167 = getelementptr inbounds %struct.super_block, %struct.super_block* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  br label %183

171:                                              ; preds = %161
  %172 = load %struct.super_block*, %struct.super_block** %5, align 8
  %173 = getelementptr inbounds %struct.super_block, %struct.super_block* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = shl i32 %175, 40
  %177 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %178 = call i32 @min(i32 %176, i32 %177)
  %179 = load %struct.super_block*, %struct.super_block** %5, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load %struct.super_block*, %struct.super_block** %5, align 8
  %182 = getelementptr inbounds %struct.super_block, %struct.super_block* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  store i32 0, i32* %4, align 4
  br label %226

183:                                              ; preds = %170
  %184 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %158, %136
  %186 = load %struct.super_block*, %struct.super_block** %5, align 8
  %187 = call i32 @jfs_umount(%struct.super_block* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %190, %185
  br label %194

194:                                              ; preds = %193, %117
  %195 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %196 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %195, i32 0, i32 4
  %197 = load %struct.inode*, %struct.inode** %196, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = call i32 @filemap_write_and_wait(%struct.TYPE_6__* %199)
  %201 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %202 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %201, i32 0, i32 4
  %203 = load %struct.inode*, %struct.inode** %202, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 0
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = call i32 @truncate_inode_pages(%struct.TYPE_6__* %205, i32 0)
  %207 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %208 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %207, i32 0, i32 4
  %209 = load %struct.inode*, %struct.inode** %208, align 8
  %210 = call i32 @make_bad_inode(%struct.inode* %209)
  %211 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %212 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %211, i32 0, i32 4
  %213 = load %struct.inode*, %struct.inode** %212, align 8
  %214 = call i32 @iput(%struct.inode* %213)
  %215 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %216 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %215, i32 0, i32 4
  store %struct.inode* null, %struct.inode** %216, align 8
  br label %217

217:                                              ; preds = %194, %79
  %218 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %219 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @unload_nls(i32 %220)
  br label %222

222:                                              ; preds = %217, %62, %55
  %223 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %224 = call i32 @kfree(%struct.jfs_sb_info* %223)
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %222, %171, %24
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @jfs_info(i8*, i32) #1

declare dso_local %struct.jfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @parse_options(i8*, %struct.super_block*, i64*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @inode_fake_hash(%struct.inode*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @jfs_mount(%struct.super_block*) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @jfs_mount_rw(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @jfs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @jfs_umount(%struct.super_block*) #1

declare dso_local i32 @filemap_write_and_wait(%struct.TYPE_6__*) #1

declare dso_local i32 @truncate_inode_pages(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @kfree(%struct.jfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

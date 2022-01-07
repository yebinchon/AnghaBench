; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_handle_mount_opt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_handle_mount_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount_opts = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.path = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@deprecated_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"3.5\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Ignoring removed %s option\00", align 1
@EXT4_MF_FS_ABORTED = common dso_local global i32 0, align 4
@SB_I_VERSION = common dso_local global i32 0, align 4
@SB_LAZYTIME = common dso_local global i32 0, align 4
@ext4_mount_opts = common dso_local global %struct.mount_opts* null, align 8
@Opt_err = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Unrecognized mount option \22%s\22 or missing value\00", align 1
@MOPT_NO_EXT2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Mount option \22%s\22 incompatible with ext2\00", align 1
@MOPT_NO_EXT3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Mount option \22%s\22 incompatible with ext3\00", align 1
@MOPT_STRING = common dso_local global i32 0, align 4
@MOPT_GTE0 = common dso_local global i32 0, align 4
@MOPT_EXPLICIT = common dso_local global i32 0, align 4
@EXT4_MOUNT_DELALLOC = common dso_local global i32 0, align 4
@EXPLICIT_DELALLOC = common dso_local global i32 0, align 4
@EXT4_MOUNT_JOURNAL_CHECKSUM = common dso_local global i32 0, align 4
@EXPLICIT_JOURNAL_CHECKSUM = common dso_local global i32 0, align 4
@MOPT_CLEAR_ERR = common dso_local global i32 0, align 4
@ERRORS_MASK = common dso_local global i32 0, align 4
@Opt_noquota = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Cannot change quota options when quota turned on\00", align 1
@MOPT_NOSUPPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"%s option not supported\00", align 1
@Opt_commit = common dso_local global i32 0, align 4
@JBD2_DEFAULT_MAX_COMMIT_AGE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"Invalid commit interval %d, must be smaller than %d\00", align 1
@Opt_debug_want_extra_isize = common dso_local global i32 0, align 4
@Opt_max_batch_time = common dso_local global i32 0, align 4
@Opt_min_batch_time = common dso_local global i32 0, align 4
@Opt_inode_readahead_blks = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [74 x i8] c"EXT4-fs: inode_readahead_blks must be 0 or a power of 2 smaller than 2^31\00", align 1
@Opt_init_itable = common dso_local global i32 0, align 4
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@EXT4_DEF_LI_WAIT_MULT = common dso_local global i32 0, align 4
@Opt_max_dir_size_kb = common dso_local global i32 0, align 4
@Opt_stripe = common dso_local global i32 0, align 4
@Opt_resuid = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Invalid uid value %d\00", align 1
@Opt_resgid = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Invalid gid value %d\00", align 1
@Opt_journal_dev = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Cannot specify journal on remount\00", align 1
@Opt_journal_path = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"error: could not dup journal device string\00", align 1
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [52 x i8] c"error: could not find journal device path: error %d\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"error: journal path %s is not a block device\00", align 1
@Opt_journal_ioprio = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"Invalid journal IO priority (must be 0-7)\00", align 1
@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@Opt_test_dummy_encryption = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"Test dummy encryption mount option ignored\00", align 1
@MOPT_DATAJ = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [74 x i8] c"Remounting file system with no journal so ignoring journalled data option\00", align 1
@DATA_FLAGS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"Cannot change data mode on remount\00", align 1
@Opt_dax = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"dax option not supported\00", align 1
@Opt_data_err_abort = common dso_local global i32 0, align 4
@Opt_data_err_ignore = common dso_local global i32 0, align 4
@MOPT_CLEAR = common dso_local global i32 0, align 4
@MOPT_SET = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [28 x i8] c"buggy handling of option %s\00", align 1
@EXT4_MF_TEST_DUMMY_ENCRYPTION = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@MOPT_QFMT = common dso_local global i32 0, align 4
@Opt_grpjquota = common dso_local global i32 0, align 4
@Opt_offgrpjquota = common dso_local global i32 0, align 4
@Opt_offusrjquota = common dso_local global i32 0, align 4
@Opt_usrjquota = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32, %struct.TYPE_6__*, i64*, i32*, i32)* @handle_mount_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_mount_opt(%struct.super_block* %0, i8* %1, i32 %2, %struct.TYPE_6__* %3, i64* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_sb_info*, align 8
  %17 = alloca %struct.mount_opts*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.inode*, align 8
  %23 = alloca %struct.path, align 4
  %24 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %25)
  store %struct.ext4_sb_info* %26, %struct.ext4_sb_info** %16, align 8
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %67 [
    i32 132, label %28
    i32 130, label %28
    i32 128, label %36
    i32 129, label %37
    i32 135, label %42
    i32 134, label %48
    i32 133, label %54
    i32 131, label %60
  ]

28:                                               ; preds = %7, %7
  %29 = load %struct.super_block*, %struct.super_block** %9, align 8
  %30 = load i32, i32* @KERN_WARNING, align 4
  %31 = load i32, i32* @deprecated_msg, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %29, i32 %30, i8* %33, i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %67

36:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %632

37:                                               ; preds = %7
  %38 = load %struct.super_block*, %struct.super_block** %9, align 8
  %39 = load i32, i32* @KERN_WARNING, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %38, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 1, i32* %8, align 4
  br label %632

42:                                               ; preds = %7
  %43 = load i32, i32* @EXT4_MF_FS_ABORTED, align 4
  %44 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %45 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i32 1, i32* %8, align 4
  br label %632

48:                                               ; preds = %7
  %49 = load i32, i32* @SB_I_VERSION, align 4
  %50 = load %struct.super_block*, %struct.super_block** %9, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 1, i32* %8, align 4
  br label %632

54:                                               ; preds = %7
  %55 = load i32, i32* @SB_LAZYTIME, align 4
  %56 = load %struct.super_block*, %struct.super_block** %9, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  store i32 1, i32* %8, align 4
  br label %632

60:                                               ; preds = %7
  %61 = load i32, i32* @SB_LAZYTIME, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.super_block*, %struct.super_block** %9, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  store i32 1, i32* %8, align 4
  br label %632

67:                                               ; preds = %7, %28
  %68 = load %struct.mount_opts*, %struct.mount_opts** @ext4_mount_opts, align 8
  store %struct.mount_opts* %68, %struct.mount_opts** %17, align 8
  br label %69

69:                                               ; preds = %83, %67
  %70 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %71 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @Opt_err, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %78 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %85 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %84, i32 1
  store %struct.mount_opts* %85, %struct.mount_opts** %17, align 8
  br label %69

86:                                               ; preds = %81, %69
  %87 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %88 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @Opt_err, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.super_block*, %struct.super_block** %9, align 8
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %93, i32 %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  store i32 -1, i32* %8, align 4
  br label %632

97:                                               ; preds = %86
  %98 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %99 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MOPT_NO_EXT2, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.super_block*, %struct.super_block** %9, align 8
  %106 = call i64 @IS_EXT2_SB(%struct.super_block* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.super_block*, %struct.super_block** %9, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %109, i32 %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  store i32 -1, i32* %8, align 4
  br label %632

113:                                              ; preds = %104, %97
  %114 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %115 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MOPT_NO_EXT3, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.super_block*, %struct.super_block** %9, align 8
  %122 = call i64 @IS_EXT3_SB(%struct.super_block* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.super_block*, %struct.super_block** %9, align 8
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %125, i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  store i32 -1, i32* %8, align 4
  br label %632

129:                                              ; preds = %120, %113
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %136 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MOPT_STRING, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %143 = call i64 @match_int(%struct.TYPE_6__* %142, i32* %20)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 -1, i32* %8, align 4
  br label %632

146:                                              ; preds = %141, %134, %129
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %153 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MOPT_GTE0, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* %20, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 -1, i32* %8, align 4
  br label %632

162:                                              ; preds = %158, %151, %146
  %163 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %164 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MOPT_EXPLICIT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %162
  %170 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %171 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @EXT4_MOUNT_DELALLOC, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load %struct.super_block*, %struct.super_block** %9, align 8
  %178 = load i32, i32* @EXPLICIT_DELALLOC, align 4
  %179 = call i32 @set_opt2(%struct.super_block* %177, i32 %178)
  br label %193

180:                                              ; preds = %169
  %181 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %182 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @EXT4_MOUNT_JOURNAL_CHECKSUM, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = load %struct.super_block*, %struct.super_block** %9, align 8
  %189 = load i32, i32* @EXPLICIT_JOURNAL_CHECKSUM, align 4
  %190 = call i32 @set_opt2(%struct.super_block* %188, i32 %189)
  br label %192

191:                                              ; preds = %180
  store i32 -1, i32* %8, align 4
  br label %632

192:                                              ; preds = %187
  br label %193

193:                                              ; preds = %192, %176
  br label %194

194:                                              ; preds = %193, %162
  %195 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %196 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @MOPT_CLEAR_ERR, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load %struct.super_block*, %struct.super_block** %9, align 8
  %203 = load i32, i32* @ERRORS_MASK, align 4
  %204 = call i32 @clear_opt(%struct.super_block* %202, i32 %203)
  br label %205

205:                                              ; preds = %201, %194
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @Opt_noquota, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load %struct.super_block*, %struct.super_block** %9, align 8
  %211 = call i64 @sb_any_quota_loaded(%struct.super_block* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load %struct.super_block*, %struct.super_block** %9, align 8
  %215 = load i32, i32* @KERN_ERR, align 4
  %216 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %214, i32 %215, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

217:                                              ; preds = %209, %205
  %218 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %219 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @MOPT_NOSUPPORT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %217
  %225 = load %struct.super_block*, %struct.super_block** %9, align 8
  %226 = load i32, i32* @KERN_ERR, align 4
  %227 = load i8*, i8** %10, align 8
  %228 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %225, i32 %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %227)
  br label %631

229:                                              ; preds = %217
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @Opt_commit, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %259

233:                                              ; preds = %229
  %234 = load i32, i32* %20, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i32, i32* @JBD2_DEFAULT_MAX_COMMIT_AGE, align 4
  store i32 %237, i32* %20, align 4
  br label %253

238:                                              ; preds = %233
  %239 = load i32, i32* %20, align 4
  %240 = load i32, i32* @INT_MAX, align 4
  %241 = load i32, i32* @HZ, align 4
  %242 = sdiv i32 %240, %241
  %243 = icmp sgt i32 %239, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %238
  %245 = load %struct.super_block*, %struct.super_block** %9, align 8
  %246 = load i32, i32* @KERN_ERR, align 4
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* @INT_MAX, align 4
  %249 = load i32, i32* @HZ, align 4
  %250 = sdiv i32 %248, %249
  %251 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %245, i32 %246, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %247, i32 %250)
  store i32 -1, i32* %8, align 4
  br label %632

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252, %236
  %254 = load i32, i32* @HZ, align 4
  %255 = load i32, i32* %20, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %258 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 4
  br label %630

259:                                              ; preds = %229
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @Opt_debug_want_extra_isize, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i32, i32* %20, align 4
  %265 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %266 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  br label %629

267:                                              ; preds = %259
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @Opt_max_batch_time, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i32, i32* %20, align 4
  %273 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %274 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 4
  br label %628

275:                                              ; preds = %267
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @Opt_min_batch_time, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load i32, i32* %20, align 4
  %281 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %282 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  br label %627

283:                                              ; preds = %275
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @Opt_inode_readahead_blks, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %305

287:                                              ; preds = %283
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %287
  %291 = load i32, i32* %20, align 4
  %292 = icmp sgt i32 %291, 1073741824
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @is_power_of_2(i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %293, %290
  %298 = load %struct.super_block*, %struct.super_block** %9, align 8
  %299 = load i32, i32* @KERN_ERR, align 4
  %300 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %298, i32 %299, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

301:                                              ; preds = %293, %287
  %302 = load i32, i32* %20, align 4
  %303 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %304 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %303, i32 0, i32 4
  store i32 %302, i32* %304, align 4
  br label %626

305:                                              ; preds = %283
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @Opt_init_itable, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %323

309:                                              ; preds = %305
  %310 = load %struct.super_block*, %struct.super_block** %9, align 8
  %311 = load i32, i32* @INIT_INODE_TABLE, align 4
  %312 = call i32 @set_opt(%struct.super_block* %310, i32 %311)
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %309
  %318 = load i32, i32* @EXT4_DEF_LI_WAIT_MULT, align 4
  store i32 %318, i32* %20, align 4
  br label %319

319:                                              ; preds = %317, %309
  %320 = load i32, i32* %20, align 4
  %321 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %322 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 4
  br label %625

323:                                              ; preds = %305
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* @Opt_max_dir_size_kb, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load i32, i32* %20, align 4
  %329 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %330 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %329, i32 0, i32 6
  store i32 %328, i32* %330, align 4
  br label %624

331:                                              ; preds = %323
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* @Opt_stripe, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load i32, i32* %20, align 4
  %337 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %338 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %337, i32 0, i32 7
  store i32 %336, i32* %338, align 4
  br label %623

339:                                              ; preds = %331
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* @Opt_resuid, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %359

343:                                              ; preds = %339
  %344 = call i32 (...) @current_user_ns()
  %345 = load i32, i32* %20, align 4
  %346 = call i32 @make_kuid(i32 %344, i32 %345)
  store i32 %346, i32* %18, align 4
  %347 = load i32, i32* %18, align 4
  %348 = call i32 @uid_valid(i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %343
  %351 = load %struct.super_block*, %struct.super_block** %9, align 8
  %352 = load i32, i32* @KERN_ERR, align 4
  %353 = load i32, i32* %20, align 4
  %354 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %351, i32 %352, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %353)
  store i32 -1, i32* %8, align 4
  br label %632

355:                                              ; preds = %343
  %356 = load i32, i32* %18, align 4
  %357 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %358 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %357, i32 0, i32 13
  store i32 %356, i32* %358, align 4
  br label %622

359:                                              ; preds = %339
  %360 = load i32, i32* %11, align 4
  %361 = load i32, i32* @Opt_resgid, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %379

363:                                              ; preds = %359
  %364 = call i32 (...) @current_user_ns()
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @make_kgid(i32 %364, i32 %365)
  store i32 %366, i32* %19, align 4
  %367 = load i32, i32* %19, align 4
  %368 = call i32 @gid_valid(i32 %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %363
  %371 = load %struct.super_block*, %struct.super_block** %9, align 8
  %372 = load i32, i32* @KERN_ERR, align 4
  %373 = load i32, i32* %20, align 4
  %374 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %371, i32 %372, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %373)
  store i32 -1, i32* %8, align 4
  br label %632

375:                                              ; preds = %363
  %376 = load i32, i32* %19, align 4
  %377 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %378 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %377, i32 0, i32 12
  store i32 %376, i32* %378, align 4
  br label %621

379:                                              ; preds = %359
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* @Opt_journal_dev, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %394

383:                                              ; preds = %379
  %384 = load i32, i32* %15, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load %struct.super_block*, %struct.super_block** %9, align 8
  %388 = load i32, i32* @KERN_ERR, align 4
  %389 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %387, i32 %388, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

390:                                              ; preds = %383
  %391 = load i32, i32* %20, align 4
  %392 = sext i32 %391 to i64
  %393 = load i64*, i64** %13, align 8
  store i64 %392, i64* %393, align 8
  br label %620

394:                                              ; preds = %379
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* @Opt_journal_path, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %454

398:                                              ; preds = %394
  %399 = load i32, i32* %15, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %398
  %402 = load %struct.super_block*, %struct.super_block** %9, align 8
  %403 = load i32, i32* @KERN_ERR, align 4
  %404 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %402, i32 %403, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

405:                                              ; preds = %398
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i64 0
  %408 = call i8* @match_strdup(%struct.TYPE_6__* %407)
  store i8* %408, i8** %21, align 8
  %409 = load i8*, i8** %21, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %415, label %411

411:                                              ; preds = %405
  %412 = load %struct.super_block*, %struct.super_block** %9, align 8
  %413 = load i32, i32* @KERN_ERR, align 4
  %414 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %412, i32 %413, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

415:                                              ; preds = %405
  %416 = load i8*, i8** %21, align 8
  %417 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %418 = call i32 @kern_path(i8* %416, i32 %417, %struct.path* %23)
  store i32 %418, i32* %24, align 4
  %419 = load i32, i32* %24, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %415
  %422 = load %struct.super_block*, %struct.super_block** %9, align 8
  %423 = load i32, i32* @KERN_ERR, align 4
  %424 = load i32, i32* %24, align 4
  %425 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %422, i32 %423, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %424)
  %426 = load i8*, i8** %21, align 8
  %427 = call i32 @kfree(i8* %426)
  store i32 -1, i32* %8, align 4
  br label %632

428:                                              ; preds = %415
  %429 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call %struct.inode* @d_inode(i32 %430)
  store %struct.inode* %431, %struct.inode** %22, align 8
  %432 = load %struct.inode*, %struct.inode** %22, align 8
  %433 = getelementptr inbounds %struct.inode, %struct.inode* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @S_ISBLK(i32 %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %445, label %437

437:                                              ; preds = %428
  %438 = load %struct.super_block*, %struct.super_block** %9, align 8
  %439 = load i32, i32* @KERN_ERR, align 4
  %440 = load i8*, i8** %21, align 8
  %441 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %438, i32 %439, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %440)
  %442 = call i32 @path_put(%struct.path* %23)
  %443 = load i8*, i8** %21, align 8
  %444 = call i32 @kfree(i8* %443)
  store i32 -1, i32* %8, align 4
  br label %632

445:                                              ; preds = %428
  %446 = load %struct.inode*, %struct.inode** %22, align 8
  %447 = getelementptr inbounds %struct.inode, %struct.inode* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i64 @new_encode_dev(i32 %448)
  %450 = load i64*, i64** %13, align 8
  store i64 %449, i64* %450, align 8
  %451 = call i32 @path_put(%struct.path* %23)
  %452 = load i8*, i8** %21, align 8
  %453 = call i32 @kfree(i8* %452)
  br label %619

454:                                              ; preds = %394
  %455 = load i32, i32* %11, align 4
  %456 = load i32, i32* @Opt_journal_ioprio, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %470

458:                                              ; preds = %454
  %459 = load i32, i32* %20, align 4
  %460 = icmp sgt i32 %459, 7
  br i1 %460, label %461, label %465

461:                                              ; preds = %458
  %462 = load %struct.super_block*, %struct.super_block** %9, align 8
  %463 = load i32, i32* @KERN_ERR, align 4
  %464 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %462, i32 %463, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

465:                                              ; preds = %458
  %466 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %467 = load i32, i32* %20, align 4
  %468 = call i32 @IOPRIO_PRIO_VALUE(i32 %466, i32 %467)
  %469 = load i32*, i32** %14, align 8
  store i32 %468, i32* %469, align 4
  br label %618

470:                                              ; preds = %454
  %471 = load i32, i32* %11, align 4
  %472 = load i32, i32* @Opt_test_dummy_encryption, align 4
  %473 = icmp eq i32 %471, %472
  br i1 %473, label %474, label %478

474:                                              ; preds = %470
  %475 = load %struct.super_block*, %struct.super_block** %9, align 8
  %476 = load i32, i32* @KERN_WARNING, align 4
  %477 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %475, i32 %476, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  br label %617

478:                                              ; preds = %470
  %479 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %480 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @MOPT_DATAJ, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %523

485:                                              ; preds = %478
  %486 = load i32, i32* %15, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %511

488:                                              ; preds = %485
  %489 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %490 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %489, i32 0, i32 10
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %497, label %493

493:                                              ; preds = %488
  %494 = load %struct.super_block*, %struct.super_block** %9, align 8
  %495 = load i32, i32* @KERN_WARNING, align 4
  %496 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %494, i32 %495, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0))
  br label %510

497:                                              ; preds = %488
  %498 = load %struct.super_block*, %struct.super_block** %9, align 8
  %499 = load i32, i32* @DATA_FLAGS, align 4
  %500 = call i32 @test_opt(%struct.super_block* %498, i32 %499)
  %501 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %502 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = icmp ne i32 %500, %503
  br i1 %504, label %505, label %509

505:                                              ; preds = %497
  %506 = load %struct.super_block*, %struct.super_block** %9, align 8
  %507 = load i32, i32* @KERN_ERR, align 4
  %508 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %506, i32 %507, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

509:                                              ; preds = %497
  br label %510

510:                                              ; preds = %509, %493
  br label %522

511:                                              ; preds = %485
  %512 = load %struct.super_block*, %struct.super_block** %9, align 8
  %513 = load i32, i32* @DATA_FLAGS, align 4
  %514 = call i32 @clear_opt(%struct.super_block* %512, i32 %513)
  %515 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %516 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %519 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %518, i32 0, i32 8
  %520 = load i32, i32* %519, align 4
  %521 = or i32 %520, %517
  store i32 %521, i32* %519, align 4
  br label %522

522:                                              ; preds = %511, %510
  br label %616

523:                                              ; preds = %478
  %524 = load i32, i32* %11, align 4
  %525 = load i32, i32* @Opt_dax, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %531

527:                                              ; preds = %523
  %528 = load %struct.super_block*, %struct.super_block** %9, align 8
  %529 = load i32, i32* @KERN_INFO, align 4
  %530 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %528, i32 %529, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %632

531:                                              ; preds = %523
  %532 = load i32, i32* %11, align 4
  %533 = load i32, i32* @Opt_data_err_abort, align 4
  %534 = icmp eq i32 %532, %533
  br i1 %534, label %535, label %543

535:                                              ; preds = %531
  %536 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %537 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %540 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %539, i32 0, i32 8
  %541 = load i32, i32* %540, align 4
  %542 = or i32 %541, %538
  store i32 %542, i32* %540, align 4
  br label %614

543:                                              ; preds = %531
  %544 = load i32, i32* %11, align 4
  %545 = load i32, i32* @Opt_data_err_ignore, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %556

547:                                              ; preds = %543
  %548 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %549 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 4
  %551 = xor i32 %550, -1
  %552 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %553 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %552, i32 0, i32 8
  %554 = load i32, i32* %553, align 4
  %555 = and i32 %554, %551
  store i32 %555, i32* %553, align 4
  br label %613

556:                                              ; preds = %543
  %557 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %558 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %562, label %561

561:                                              ; preds = %556
  store i32 1, i32* %20, align 4
  br label %562

562:                                              ; preds = %561, %556
  %563 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %564 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = load i32, i32* @MOPT_CLEAR, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %574

569:                                              ; preds = %562
  %570 = load i32, i32* %20, align 4
  %571 = icmp ne i32 %570, 0
  %572 = xor i1 %571, true
  %573 = zext i1 %572 to i32
  store i32 %573, i32* %20, align 4
  br label %592

574:                                              ; preds = %562
  %575 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %576 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 4
  %578 = load i32, i32* @MOPT_SET, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  %581 = xor i1 %580, true
  %582 = zext i1 %581 to i32
  %583 = call i64 @unlikely(i32 %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %591

585:                                              ; preds = %574
  %586 = load %struct.super_block*, %struct.super_block** %9, align 8
  %587 = load i32, i32* @KERN_WARNING, align 4
  %588 = load i8*, i8** %10, align 8
  %589 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %586, i32 %587, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* %588)
  %590 = call i32 @WARN_ON(i32 1)
  store i32 -1, i32* %8, align 4
  br label %632

591:                                              ; preds = %574
  br label %592

592:                                              ; preds = %591, %569
  %593 = load i32, i32* %20, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %603

595:                                              ; preds = %592
  %596 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %597 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %600 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %599, i32 0, i32 8
  %601 = load i32, i32* %600, align 4
  %602 = or i32 %601, %598
  store i32 %602, i32* %600, align 4
  br label %612

603:                                              ; preds = %592
  %604 = load %struct.mount_opts*, %struct.mount_opts** %17, align 8
  %605 = getelementptr inbounds %struct.mount_opts, %struct.mount_opts* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = xor i32 %606, -1
  %608 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %16, align 8
  %609 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %608, i32 0, i32 8
  %610 = load i32, i32* %609, align 4
  %611 = and i32 %610, %607
  store i32 %611, i32* %609, align 4
  br label %612

612:                                              ; preds = %603, %595
  br label %613

613:                                              ; preds = %612, %547
  br label %614

614:                                              ; preds = %613, %535
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615, %522
  br label %617

617:                                              ; preds = %616, %474
  br label %618

618:                                              ; preds = %617, %465
  br label %619

619:                                              ; preds = %618, %445
  br label %620

620:                                              ; preds = %619, %390
  br label %621

621:                                              ; preds = %620, %375
  br label %622

622:                                              ; preds = %621, %355
  br label %623

623:                                              ; preds = %622, %335
  br label %624

624:                                              ; preds = %623, %327
  br label %625

625:                                              ; preds = %624, %319
  br label %626

626:                                              ; preds = %625, %301
  br label %627

627:                                              ; preds = %626, %279
  br label %628

628:                                              ; preds = %627, %271
  br label %629

629:                                              ; preds = %628, %263
  br label %630

630:                                              ; preds = %629, %253
  br label %631

631:                                              ; preds = %630, %224
  store i32 1, i32* %8, align 4
  br label %632

632:                                              ; preds = %631, %585, %527, %505, %461, %437, %421, %411, %401, %386, %370, %350, %297, %244, %213, %191, %161, %145, %124, %108, %92, %60, %54, %48, %42, %37, %36
  %633 = load i32, i32* %8, align 4
  ret i32 %633
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i64 @IS_EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @IS_EXT3_SB(%struct.super_block*) #1

declare dso_local i64 @match_int(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @set_opt2(%struct.super_block*, i32) #1

declare dso_local i32 @clear_opt(%struct.super_block*, i32) #1

declare dso_local i64 @sb_any_quota_loaded(%struct.super_block*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @set_opt(%struct.super_block*, i32) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i8* @match_strdup(%struct.TYPE_6__*) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i64 @new_encode_dev(i32) #1

declare dso_local i32 @IOPRIO_PRIO_VALUE(i32, i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

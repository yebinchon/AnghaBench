; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i8*, i8*, i32*, i32*, i32, i32, %struct.hpfs_sb_info* }
%struct.hpfs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64, i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_boot_block = type { i32 }
%struct.hpfs_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.hpfs_spare_block = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.hpfs_dirent = type { i32, i32, i32, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bad mount options.\0A\00", align 1
@SB_MAGIC = common dso_local global i32 0, align 4
@SP_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Bad magic ... probably not HPFS\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Bad version %d,%d. Mount readonly to go around\0A\00", align 1
@.str.3 = private unnamed_addr constant [207 x i8] c"please try recent version of HPFS driver at http://artax.karlin.mff.cuni.cz/~mikulas/vyplody/hpfs/index-e.cgi and if it still can't understand this format, contact author - mikulas@artax.karlin.mff.cuni.cz\0A\00", align 1
@SB_NOATIME = common dso_local global i32 0, align 4
@HPFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@hpfs_sops = common dso_local global i32 0, align 4
@hpfs_dentry_operations = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid size in superblock: %08x\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Improperly stopped, not mounted\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"improperly stopped\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Spare dnodes used, try chkdsk\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"warning: spare dnodes used, try chkdsk\00", align 1
@.str.9 = private unnamed_addr constant [87 x i8] c"Proceeding, but your filesystem could be corrupted if you delete files or directories\0A\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"dir band size mismatch: dir_band_start==%08x, dir_band_end==%08x, n_dir_band==%08x\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dir_band\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"dir_band_bitmap\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"bitmaps\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"You really don't want any checks? You are crazy...\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"code page support is disabled\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"unable to find root dir\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hpfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.hpfs_boot_block*, align 8
  %12 = alloca %struct.hpfs_super_block*, align 8
  %13 = alloca %struct.hpfs_spare_block*, align 8
  %14 = alloca %struct.hpfs_sb_info*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.hpfs_dirent*, align 8
  %27 = alloca %struct.quad_buffer_head, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %26, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.hpfs_sb_info* @kzalloc(i32 112, i32 %30)
  store %struct.hpfs_sb_info* %31, %struct.hpfs_sb_info** %14, align 8
  %32 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %33 = icmp ne %struct.hpfs_sb_info* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %555

37:                                               ; preds = %3
  %38 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 7
  store %struct.hpfs_sb_info* %38, %struct.hpfs_sb_info** %40, align 8
  %41 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %42 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %41, i32 0, i32 22
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = call i32 @hpfs_lock(%struct.super_block* %44)
  %46 = call i32 (...) @current_uid()
  store i32 %46, i32* %16, align 4
  %47 = call i32 (...) @current_gid()
  store i32 %47, i32* %17, align 4
  %48 = call i32 (...) @current_umask()
  store i32 %48, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 2, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @parse_opts(i8* %49, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24)
  store i32 %50, i32* %28, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %37
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %548

54:                                               ; preds = %37
  %55 = load i32, i32* %28, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @hpfs_help()
  br label %548

59:                                               ; preds = %54
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = call i32 @sb_set_blocksize(%struct.super_block* %60, i32 512)
  %62 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %63 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call i8* @hpfs_map_sector(%struct.super_block* %64, i32 0, %struct.buffer_head** %8, i32 0)
  %66 = bitcast i8* %65 to %struct.hpfs_boot_block*
  store %struct.hpfs_boot_block* %66, %struct.hpfs_boot_block** %11, align 8
  %67 = icmp ne %struct.hpfs_boot_block* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %547

69:                                               ; preds = %59
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = call i8* @hpfs_map_sector(%struct.super_block* %70, i32 16, %struct.buffer_head** %9, i32 1)
  %72 = bitcast i8* %71 to %struct.hpfs_super_block*
  store %struct.hpfs_super_block* %72, %struct.hpfs_super_block** %12, align 8
  %73 = icmp ne %struct.hpfs_super_block* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %544

75:                                               ; preds = %69
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = call i8* @hpfs_map_sector(%struct.super_block* %76, i32 17, %struct.buffer_head** %10, i32 0)
  %78 = bitcast i8* %77 to %struct.hpfs_spare_block*
  store %struct.hpfs_spare_block* %78, %struct.hpfs_spare_block** %13, align 8
  %79 = icmp ne %struct.hpfs_spare_block* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %541

81:                                               ; preds = %75
  %82 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %83 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = load i32, i32* @SB_MAGIC, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %90 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load i32, i32* @SP_MAGIC, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  br label %538

101:                                              ; preds = %88
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = call i32 @sb_rdonly(%struct.super_block* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %101
  %106 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %107 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 2
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %112 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 3
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %117 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %121 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %122)
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.3, i64 0, i64 0))
  br label %538

125:                                              ; preds = %110, %105, %101
  %126 = load i32, i32* @SB_NOATIME, align 4
  %127 = load %struct.super_block*, %struct.super_block** %5, align 8
  %128 = getelementptr inbounds %struct.super_block, %struct.super_block* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @HPFS_SUPER_MAGIC, align 4
  %132 = load %struct.super_block*, %struct.super_block** %5, align 8
  %133 = getelementptr inbounds %struct.super_block, %struct.super_block* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.super_block*, %struct.super_block** %5, align 8
  %135 = getelementptr inbounds %struct.super_block, %struct.super_block* %134, i32 0, i32 4
  store i32* @hpfs_sops, i32** %135, align 8
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = getelementptr inbounds %struct.super_block, %struct.super_block* %136, i32 0, i32 3
  store i32* @hpfs_dentry_operations, i32** %137, align 8
  %138 = load %struct.super_block*, %struct.super_block** %5, align 8
  %139 = call i8* @local_to_gmt(%struct.super_block* %138, i32 0)
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.super_block*, %struct.super_block** %5, align 8
  %143 = load i32, i32* @U32_MAX, align 4
  %144 = call i8* @local_to_gmt(%struct.super_block* %142, i32 %143)
  %145 = load %struct.super_block*, %struct.super_block** %5, align 8
  %146 = getelementptr inbounds %struct.super_block, %struct.super_block* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %148 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le32_to_cpu(i32 %149)
  %151 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %152 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %154 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @le32_to_cpu(i32 %155)
  %157 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %158 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %160 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %164 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %166 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @le32_to_cpu(i32 %167)
  %169 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %170 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %172 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %176 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %178 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @le32_to_cpu(i32 %179)
  %181 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %182 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %185 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %184, i32 0, i32 21
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %17, align 4
  %187 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %188 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %187, i32 0, i32 20
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %18, align 4
  %190 = xor i32 %189, -1
  %191 = and i32 511, %190
  %192 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %193 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 8
  %194 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %195 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %194, i32 0, i32 7
  store i32 -1, i32* %195, align 4
  %196 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %197 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %196, i32 0, i32 8
  store i32 -1, i32* %197, align 8
  %198 = load i32, i32* %19, align 4
  %199 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %200 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %199, i32 0, i32 9
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %20, align 4
  %202 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %203 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %21, align 4
  %205 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %206 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %205, i32 0, i32 11
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %23, align 4
  %208 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %209 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %208, i32 0, i32 12
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %22, align 4
  %211 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %212 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %211, i32 0, i32 13
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %24, align 4
  %214 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %215 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %214, i32 0, i32 14
  store i32 %213, i32* %215, align 8
  %216 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %217 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %216, i32 0, i32 19
  store i64 0, i64* %217, align 8
  %218 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %219 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %218, i32 0, i32 17
  store i32* null, i32** %219, align 8
  %220 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %221 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %220, i32 0, i32 15
  store i32 -1, i32* %221, align 4
  %222 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %223 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %222, i32 0, i32 16
  store i32 16777215, i32* %223, align 8
  %224 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %225 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp uge i32 %226, -2147483648
  br i1 %227, label %228, label %234

228:                                              ; preds = %125
  %229 = load %struct.super_block*, %struct.super_block** %5, align 8
  %230 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %231 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %229, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %232)
  br label %538

234:                                              ; preds = %125
  %235 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %236 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %235, i32 0, i32 6
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load %struct.super_block*, %struct.super_block** %5, align 8
  %241 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %242 = call i32 @hpfs_load_hotfix_map(%struct.super_block* %240, %struct.hpfs_spare_block* %241)
  br label %243

243:                                              ; preds = %239, %234
  %244 = load %struct.super_block*, %struct.super_block** %5, align 8
  %245 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %246 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @le32_to_cpu(i32 %247)
  %249 = call i32 @hpfs_load_bitmap_directory(%struct.super_block* %244, i32 %248)
  %250 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %251 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %250, i32 0, i32 18
  store i32 %249, i32* %251, align 8
  %252 = icmp ne i32 %249, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %243
  br label %538

254:                                              ; preds = %243
  %255 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %256 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %254
  %260 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %261 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %22, align 4
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %538

269:                                              ; preds = %264
  %270 = load %struct.super_block*, %struct.super_block** %5, align 8
  %271 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %270, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %259, %254
  %273 = load %struct.super_block*, %struct.super_block** %5, align 8
  %274 = call i32 @sb_rdonly(%struct.super_block* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %272
  %277 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %278 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  %279 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %280 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %279, i32 0, i32 5
  store i64 0, i64* %280, align 8
  %281 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %282 = call i32 @mark_buffer_dirty(%struct.buffer_head* %281)
  br label %283

283:                                              ; preds = %276, %272
  %284 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %285 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @le32_to_cpu(i32 %286)
  %288 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %289 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le32_to_cpu(i32 %290)
  %292 = icmp ne i32 %287, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %283
  %294 = load i32, i32* %22, align 4
  %295 = icmp sge i32 %294, 2
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %298 = load %struct.super_block*, %struct.super_block** %5, align 8
  %299 = call i32 @mark_dirty(%struct.super_block* %298, i32 0)
  br label %538

300:                                              ; preds = %293
  %301 = load %struct.super_block*, %struct.super_block** %5, align 8
  %302 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %301, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %303 = load i32, i32* %22, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.9, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %300
  br label %308

308:                                              ; preds = %307, %283
  %309 = load i32, i32* %21, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %398

311:                                              ; preds = %308
  %312 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %313 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @le32_to_cpu(i32 %314)
  %316 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %317 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @le32_to_cpu(i32 %318)
  %320 = sub nsw i32 %315, %319
  %321 = add nsw i32 %320, 1
  %322 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %323 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @le32_to_cpu(i32 %324)
  %326 = icmp ne i32 %321, %325
  br i1 %326, label %343, label %327

327:                                              ; preds = %311
  %328 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %329 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @le32_to_cpu(i32 %330)
  %332 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %333 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @le32_to_cpu(i32 %334)
  %336 = icmp slt i32 %331, %335
  br i1 %336, label %343, label %337

337:                                              ; preds = %327
  %338 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %339 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @le32_to_cpu(i32 %340)
  %342 = icmp sgt i32 %341, 16384
  br i1 %342, label %343, label %358

343:                                              ; preds = %337, %327, %311
  %344 = load %struct.super_block*, %struct.super_block** %5, align 8
  %345 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %346 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @le32_to_cpu(i32 %347)
  %349 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %350 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @le32_to_cpu(i32 %351)
  %353 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %354 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @le32_to_cpu(i32 %355)
  %357 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %344, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.10, i64 0, i64 0), i32 %348, i32 %352, i32 %356)
  br label %538

358:                                              ; preds = %337
  %359 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %360 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  store i32 %361, i32* %29, align 4
  %362 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %363 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %362, i32 0, i32 4
  store i32 0, i32* %363, align 8
  %364 = load %struct.super_block*, %struct.super_block** %5, align 8
  %365 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %366 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @le32_to_cpu(i32 %367)
  %369 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %370 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @le32_to_cpu(i32 %371)
  %373 = call i64 @hpfs_chk_sectors(%struct.super_block* %364, i32 %368, i32 %372, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %391, label %375

375:                                              ; preds = %358
  %376 = load %struct.super_block*, %struct.super_block** %5, align 8
  %377 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %378 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @le32_to_cpu(i32 %379)
  %381 = call i64 @hpfs_chk_sectors(%struct.super_block* %376, i32 %380, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %375
  %384 = load %struct.super_block*, %struct.super_block** %5, align 8
  %385 = load %struct.hpfs_super_block*, %struct.hpfs_super_block** %12, align 8
  %386 = getelementptr inbounds %struct.hpfs_super_block, %struct.hpfs_super_block* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @le32_to_cpu(i32 %387)
  %389 = call i64 @hpfs_chk_sectors(%struct.super_block* %384, i32 %388, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %383, %375, %358
  %392 = load %struct.super_block*, %struct.super_block** %5, align 8
  %393 = call i32 @mark_dirty(%struct.super_block* %392, i32 0)
  br label %538

394:                                              ; preds = %383
  %395 = load i32, i32* %29, align 4
  %396 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %397 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %396, i32 0, i32 4
  store i32 %395, i32* %397, align 8
  br label %400

398:                                              ; preds = %308
  %399 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  br label %400

400:                                              ; preds = %398, %394
  %401 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %402 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @le32_to_cpu(i32 %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %419

406:                                              ; preds = %400
  %407 = load %struct.super_block*, %struct.super_block** %5, align 8
  %408 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %13, align 8
  %409 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @le32_to_cpu(i32 %410)
  %412 = call i32* @hpfs_load_code_page(%struct.super_block* %407, i32 %411)
  %413 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %414 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %413, i32 0, i32 17
  store i32* %412, i32** %414, align 8
  %415 = icmp ne i32* %412, null
  br i1 %415, label %418, label %416

416:                                              ; preds = %406
  %417 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  br label %418

418:                                              ; preds = %416, %406
  br label %419

419:                                              ; preds = %418, %400
  %420 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %421 = call i32 @brelse(%struct.buffer_head* %420)
  %422 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %423 = call i32 @brelse(%struct.buffer_head* %422)
  %424 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %425 = call i32 @brelse(%struct.buffer_head* %424)
  %426 = load %struct.super_block*, %struct.super_block** %5, align 8
  %427 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %428 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call %struct.inode* @iget_locked(%struct.super_block* %426, i32 %429)
  store %struct.inode* %430, %struct.inode** %15, align 8
  %431 = load %struct.inode*, %struct.inode** %15, align 8
  %432 = icmp ne %struct.inode* %431, null
  br i1 %432, label %434, label %433

433:                                              ; preds = %419
  br label %548

434:                                              ; preds = %419
  %435 = load %struct.inode*, %struct.inode** %15, align 8
  %436 = call i32 @hpfs_init_inode(%struct.inode* %435)
  %437 = load %struct.inode*, %struct.inode** %15, align 8
  %438 = call i32 @hpfs_read_inode(%struct.inode* %437)
  %439 = load %struct.inode*, %struct.inode** %15, align 8
  %440 = call i32 @unlock_new_inode(%struct.inode* %439)
  %441 = load %struct.inode*, %struct.inode** %15, align 8
  %442 = call i32 @d_make_root(%struct.inode* %441)
  %443 = load %struct.super_block*, %struct.super_block** %5, align 8
  %444 = getelementptr inbounds %struct.super_block, %struct.super_block* %443, i32 0, i32 0
  store i32 %442, i32* %444, align 8
  %445 = load %struct.super_block*, %struct.super_block** %5, align 8
  %446 = getelementptr inbounds %struct.super_block, %struct.super_block* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %434
  br label %548

450:                                              ; preds = %434
  %451 = load %struct.super_block*, %struct.super_block** %5, align 8
  %452 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %453 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = call i64 @hpfs_fnode_dno(%struct.super_block* %451, i32 %454)
  store i64 %455, i64* %25, align 8
  %456 = load i64, i64* %25, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %450
  %459 = load %struct.inode*, %struct.inode** %15, align 8
  %460 = load i64, i64* %25, align 8
  %461 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %459, i64 %460, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 2, i32* null, %struct.quad_buffer_head* %27)
  store %struct.hpfs_dirent* %461, %struct.hpfs_dirent** %26, align 8
  br label %462

462:                                              ; preds = %458, %450
  %463 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %26, align 8
  %464 = icmp ne %struct.hpfs_dirent* %463, null
  br i1 %464, label %468, label %465

465:                                              ; preds = %462
  %466 = load %struct.super_block*, %struct.super_block** %5, align 8
  %467 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %466, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %535

468:                                              ; preds = %462
  %469 = load %struct.super_block*, %struct.super_block** %5, align 8
  %470 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %26, align 8
  %471 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @le32_to_cpu(i32 %472)
  %474 = call i8* @local_to_gmt(%struct.super_block* %469, i32 %473)
  %475 = load %struct.inode*, %struct.inode** %15, align 8
  %476 = getelementptr inbounds %struct.inode, %struct.inode* %475, i32 0, i32 5
  %477 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %476, i32 0, i32 1
  store i8* %474, i8** %477, align 8
  %478 = load %struct.inode*, %struct.inode** %15, align 8
  %479 = getelementptr inbounds %struct.inode, %struct.inode* %478, i32 0, i32 5
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 0
  store i64 0, i64* %480, align 8
  %481 = load %struct.super_block*, %struct.super_block** %5, align 8
  %482 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %26, align 8
  %483 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @le32_to_cpu(i32 %484)
  %486 = call i8* @local_to_gmt(%struct.super_block* %481, i32 %485)
  %487 = load %struct.inode*, %struct.inode** %15, align 8
  %488 = getelementptr inbounds %struct.inode, %struct.inode* %487, i32 0, i32 4
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 1
  store i8* %486, i8** %489, align 8
  %490 = load %struct.inode*, %struct.inode** %15, align 8
  %491 = getelementptr inbounds %struct.inode, %struct.inode* %490, i32 0, i32 4
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 0
  store i64 0, i64* %492, align 8
  %493 = load %struct.super_block*, %struct.super_block** %5, align 8
  %494 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %26, align 8
  %495 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @le32_to_cpu(i32 %496)
  %498 = call i8* @local_to_gmt(%struct.super_block* %493, i32 %497)
  %499 = load %struct.inode*, %struct.inode** %15, align 8
  %500 = getelementptr inbounds %struct.inode, %struct.inode* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 1
  store i8* %498, i8** %501, align 8
  %502 = load %struct.inode*, %struct.inode** %15, align 8
  %503 = getelementptr inbounds %struct.inode, %struct.inode* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 0
  store i64 0, i64* %504, align 8
  %505 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %26, align 8
  %506 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @le32_to_cpu(i32 %507)
  %509 = load %struct.inode*, %struct.inode** %15, align 8
  %510 = call %struct.TYPE_8__* @hpfs_i(%struct.inode* %509)
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 0
  store i32 %508, i32* %511, align 4
  %512 = load %struct.inode*, %struct.inode** %15, align 8
  %513 = getelementptr inbounds %struct.inode, %struct.inode* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.inode*, %struct.inode** %15, align 8
  %516 = call %struct.TYPE_8__* @hpfs_i(%struct.inode* %515)
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 1
  store i32 %514, i32* %517, align 4
  %518 = load %struct.inode*, %struct.inode** %15, align 8
  %519 = getelementptr inbounds %struct.inode, %struct.inode* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = icmp eq i32 %520, -1
  br i1 %521, label %522, label %525

522:                                              ; preds = %468
  %523 = load %struct.inode*, %struct.inode** %15, align 8
  %524 = getelementptr inbounds %struct.inode, %struct.inode* %523, i32 0, i32 0
  store i32 2048, i32* %524, align 8
  br label %525

525:                                              ; preds = %522, %468
  %526 = load %struct.inode*, %struct.inode** %15, align 8
  %527 = getelementptr inbounds %struct.inode, %struct.inode* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = icmp eq i32 %528, -1
  br i1 %529, label %530, label %533

530:                                              ; preds = %525
  %531 = load %struct.inode*, %struct.inode** %15, align 8
  %532 = getelementptr inbounds %struct.inode, %struct.inode* %531, i32 0, i32 1
  store i32 5, i32* %532, align 4
  br label %533

533:                                              ; preds = %530, %525
  %534 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %27)
  br label %535

535:                                              ; preds = %533, %465
  %536 = load %struct.super_block*, %struct.super_block** %5, align 8
  %537 = call i32 @hpfs_unlock(%struct.super_block* %536)
  store i32 0, i32* %4, align 4
  br label %555

538:                                              ; preds = %391, %343, %296, %267, %253, %228, %115, %100
  %539 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %540 = call i32 @brelse(%struct.buffer_head* %539)
  br label %541

541:                                              ; preds = %538, %80
  %542 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %543 = call i32 @brelse(%struct.buffer_head* %542)
  br label %544

544:                                              ; preds = %541, %74
  %545 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %546 = call i32 @brelse(%struct.buffer_head* %545)
  br label %547

547:                                              ; preds = %544, %68
  br label %548

548:                                              ; preds = %547, %449, %433, %57, %52
  %549 = load %struct.super_block*, %struct.super_block** %5, align 8
  %550 = call i32 @hpfs_unlock(%struct.super_block* %549)
  %551 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %552 = call i32 @free_sbi(%struct.hpfs_sb_info* %551)
  %553 = load i32, i32* @EINVAL, align 4
  %554 = sub nsw i32 0, %553
  store i32 %554, i32* %4, align 4
  br label %555

555:                                              ; preds = %548, %535, %34
  %556 = load i32, i32* %4, align 4
  ret i32 %556
}

declare dso_local %struct.hpfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hpfs_lock(%struct.super_block*) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i32 @current_umask(...) #1

declare dso_local i32 @parse_opts(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @hpfs_help(...) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i8* @local_to_gmt(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @hpfs_load_hotfix_map(%struct.super_block*, %struct.hpfs_spare_block*) #1

declare dso_local i32 @hpfs_load_bitmap_directory(%struct.super_block*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_dirty(%struct.super_block*, i32) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i32, i32, i8*) #1

declare dso_local i32* @hpfs_load_code_page(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_read_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i64 @hpfs_fnode_dno(%struct.super_block*, i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i64, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local %struct.TYPE_8__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_unlock(%struct.super_block*) #1

declare dso_local i32 @free_sbi(%struct.hpfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

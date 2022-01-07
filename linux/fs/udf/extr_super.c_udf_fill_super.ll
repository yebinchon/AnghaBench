; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.udf_sb_info*, i32, i32, i32, i32, i32, i32*, i32* }
%struct.udf_sb_info = type { i32, i32, i32, i64, i32*, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32, i32*, i8*, i8*, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.udf_options = type { i32, i32, i32, i32*, i8*, i8*, i64, i32, i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }
%struct.timestamp = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDF_FLAG_USE_AD_IN_ICB = common dso_local global i32 0, align 4
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4
@overflowuid = common dso_local global i32 0, align 4
@overflowgid = common dso_local global i32 0, align 4
@UDF_INVALID_MODE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UDF_FLAG_UTF8 = common dso_local global i32 0, align 4
@UDF_FLAG_NLS_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"utf8 cannot be combined with iocharset\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Using default NLS map\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Multi-session=%d\0A\00", align 1
@udf_sb_ops = common dso_local global i32 0, align 4
@udf_export_ops = common dso_local global i32 0, align 4
@UDF_SUPER_MAGIC = common dso_local global i32 0, align 4
@UDF_FLAG_BLOCKSIZE_SET = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Scanning with blocksize %u failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"No partition found (1)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Lastblock=%u\0A\00", align 1
@UDF_MAX_READ_VERSION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"minUDFReadRev=%x (max is %x)\0A\00", align 1
@UDF_MAX_WRITE_VERSION = common dso_local global i64 0, align 8
@UDF_FLAG_RW_INCOMPAT = common dso_local global i32 0, align 4
@UDF_VERS_USE_EXTENDED_FE = common dso_local global i64 0, align 8
@UDF_FLAG_USE_EXTENDED_FE = common dso_local global i32 0, align 4
@UDF_VERS_USE_STREAMS = common dso_local global i64 0, align 8
@UDF_FLAG_USE_STREAMS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"No partition found (2)\0A\00", align 1
@UDF_PART_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"No fileset found\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Mounting volume '%s', timestamp %04u/%02u/%02u %02u:%02u (%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Error in udf_iget, block=%u, partition=%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Couldn't allocate root dentry\0A\00", align 1
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@UDF_MAX_LINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @udf_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.udf_options, align 8
  %11 = alloca %struct.kernel_lb_addr, align 4
  %12 = alloca %struct.kernel_lb_addr, align 4
  %13 = alloca %struct.udf_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.timestamp, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @UDF_FLAG_USE_AD_IN_ICB, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = call i32 (...) @current_user_ns()
  %28 = load i32, i32* @overflowuid, align 4
  %29 = call i32 @make_kuid(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 8
  store i32 %29, i32* %30, align 4
  %31 = call i32 (...) @current_user_ns()
  %32 = load i32, i32* @overflowgid, align 4
  %33 = call i32 @make_kgid(i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 7
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** @UDF_INVALID_MODE, align 8
  %37 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** @UDF_INVALID_MODE, align 8
  %39 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.udf_sb_info* @kzalloc(i32 128, i32 %41)
  store %struct.udf_sb_info* %42, %struct.udf_sb_info** %13, align 8
  %43 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %44 = icmp ne %struct.udf_sb_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %462

48:                                               ; preds = %3
  %49 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 1
  store %struct.udf_sb_info* %49, %struct.udf_sb_info** %51, align 8
  %52 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %53 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %52, i32 0, i32 18
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @udf_parse_options(i8* %55, %struct.udf_options* %10, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %436

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UDF_FLAG_UTF8, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = call i32 (%struct.super_block*, i8*, ...) @udf_err(%struct.super_block* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %436

76:                                               ; preds = %66, %59
  %77 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %80 = shl i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %83
  %88 = call i32* (...) @load_nls_default()
  %89 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  store i32* %88, i32** %89, align 8
  %90 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %95 = shl i32 1, %94
  %96 = xor i32 %95, -1
  %97 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %96
  store i32 %99, i32* %97, align 8
  br label %102

100:                                              ; preds = %87
  %101 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %93
  br label %103

103:                                              ; preds = %102, %83, %76
  %104 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @UDF_FLAG_UTF8, align 4
  %112 = shl i32 1, %111
  %113 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %103
  %117 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 0
  store i32 -1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 1
  store i32 65535, i32* %118, align 4
  %119 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %122 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %126 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %125, i32 0, i32 17
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %130 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %129, i32 0, i32 16
  store i32 %128, i32* %130, align 8
  %131 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %134 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %133, i32 0, i32 15
  store i64 %132, i64* %134, align 8
  %135 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %138 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %137, i32 0, i32 14
  store i8* %136, i8** %138, align 8
  %139 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %142 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %141, i32 0, i32 13
  store i8* %140, i8** %142, align 8
  %143 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %146 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %145, i32 0, i32 12
  store i32* %144, i32** %146, align 8
  %147 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %148 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %147, i32 0, i32 11
  %149 = call i32 @rwlock_init(i32* %148)
  %150 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %158

153:                                              ; preds = %116
  %154 = load %struct.super_block*, %struct.super_block** %5, align 8
  %155 = call i32 @udf_get_last_session(%struct.super_block* %154)
  %156 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %157 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %163

158:                                              ; preds = %116
  %159 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %162 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %165 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load %struct.super_block*, %struct.super_block** %5, align 8
  %169 = getelementptr inbounds %struct.super_block, %struct.super_block* %168, i32 0, i32 8
  store i32* @udf_sb_ops, i32** %169, align 8
  %170 = load %struct.super_block*, %struct.super_block** %5, align 8
  %171 = getelementptr inbounds %struct.super_block, %struct.super_block* %170, i32 0, i32 7
  store i32* @udf_export_ops, i32** %171, align 8
  %172 = load i32, i32* @UDF_SUPER_MAGIC, align 4
  %173 = load %struct.super_block*, %struct.super_block** %5, align 8
  %174 = getelementptr inbounds %struct.super_block, %struct.super_block* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 8
  %175 = load %struct.super_block*, %struct.super_block** %5, align 8
  %176 = getelementptr inbounds %struct.super_block, %struct.super_block* %175, i32 0, i32 0
  store i32 1000, i32* %176, align 8
  %177 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @UDF_FLAG_BLOCKSIZE_SET, align 4
  %180 = shl i32 1, %179
  %181 = and i32 %178, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %163
  %184 = load %struct.super_block*, %struct.super_block** %5, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @udf_load_vrs(%struct.super_block* %184, %struct.udf_options* %10, i32 %185, %struct.kernel_lb_addr* %12)
  store i32 %186, i32* %8, align 4
  br label %234

187:                                              ; preds = %163
  %188 = load %struct.super_block*, %struct.super_block** %5, align 8
  %189 = getelementptr inbounds %struct.super_block, %struct.super_block* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @bdev_logical_block_size(i32 %190)
  %192 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 2
  store i32 %191, i32* %192, align 8
  br label %193

193:                                              ; preds = %229, %187
  %194 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp sle i32 %195, 4096
  br i1 %196, label %197, label %233

197:                                              ; preds = %193
  %198 = load %struct.super_block*, %struct.super_block** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @udf_load_vrs(%struct.super_block* %198, %struct.udf_options* %10, i32 %199, %struct.kernel_lb_addr* %12)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %197
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @EACCES, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @pr_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %211, %206, %203
  %216 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %217 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %216, i32 0, i32 4
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @brelse(i32* %218)
  %220 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %221 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %220, i32 0, i32 4
  store i32* null, i32** %221, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @EACCES, align 4
  %224 = sub nsw i32 0, %223
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %215
  br label %233

227:                                              ; preds = %215
  br label %229

228:                                              ; preds = %197
  br label %233

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = shl i32 %231, 1
  store i32 %232, i32* %230, align 8
  br label %193

233:                                              ; preds = %228, %226, %193
  br label %234

234:                                              ; preds = %233, %183
  %235 = load i32, i32* %8, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %234
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @EAGAIN, align 4
  %240 = sub nsw i32 0, %239
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.super_block*, %struct.super_block** %5, align 8
  %244 = call i32 @udf_warn(%struct.super_block* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %8, align 4
  br label %247

247:                                              ; preds = %242, %237
  br label %431

248:                                              ; preds = %234
  %249 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %250 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %251)
  %253 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %254 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %320

257:                                              ; preds = %248
  %258 = load %struct.super_block*, %struct.super_block** %5, align 8
  %259 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block* %258)
  store %struct.logicalVolIntegrityDescImpUse* %259, %struct.logicalVolIntegrityDescImpUse** %15, align 8
  %260 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %15, align 8
  %261 = icmp ne %struct.logicalVolIntegrityDescImpUse* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* @EINVAL, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %8, align 4
  br label %431

265:                                              ; preds = %257
  %266 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %15, align 8
  %267 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i64 @le16_to_cpu(i32 %268)
  store i64 %269, i64* %16, align 8
  %270 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %15, align 8
  %271 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @le16_to_cpu(i32 %272)
  store i64 %273, i64* %17, align 8
  %274 = load i64, i64* %16, align 8
  %275 = load i64, i64* @UDF_MAX_READ_VERSION, align 8
  %276 = icmp sgt i64 %274, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %265
  %278 = load %struct.super_block*, %struct.super_block** %5, align 8
  %279 = load i64, i64* %16, align 8
  %280 = load i64, i64* @UDF_MAX_READ_VERSION, align 8
  %281 = call i32 (%struct.super_block*, i8*, ...) @udf_err(%struct.super_block* %278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %279, i64 %280)
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %8, align 4
  br label %431

284:                                              ; preds = %265
  %285 = load i64, i64* %17, align 8
  %286 = load i64, i64* @UDF_MAX_WRITE_VERSION, align 8
  %287 = icmp sgt i64 %285, %286
  br i1 %287, label %288, label %299

288:                                              ; preds = %284
  %289 = load %struct.super_block*, %struct.super_block** %5, align 8
  %290 = call i32 @sb_rdonly(%struct.super_block* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* @EACCES, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %8, align 4
  br label %431

295:                                              ; preds = %288
  %296 = load %struct.super_block*, %struct.super_block** %5, align 8
  %297 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %298 = call i32 @UDF_SET_FLAG(%struct.super_block* %296, i32 %297)
  br label %299

299:                                              ; preds = %295, %284
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %17, align 8
  %302 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %303 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %302, i32 0, i32 10
  store i64 %301, i64* %303, align 8
  %304 = load i64, i64* %16, align 8
  %305 = load i64, i64* @UDF_VERS_USE_EXTENDED_FE, align 8
  %306 = icmp sge i64 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load %struct.super_block*, %struct.super_block** %5, align 8
  %309 = load i32, i32* @UDF_FLAG_USE_EXTENDED_FE, align 4
  %310 = call i32 @UDF_SET_FLAG(%struct.super_block* %308, i32 %309)
  br label %311

311:                                              ; preds = %307, %300
  %312 = load i64, i64* %16, align 8
  %313 = load i64, i64* @UDF_VERS_USE_STREAMS, align 8
  %314 = icmp sge i64 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load %struct.super_block*, %struct.super_block** %5, align 8
  %317 = load i32, i32* @UDF_FLAG_USE_STREAMS, align 4
  %318 = call i32 @UDF_SET_FLAG(%struct.super_block* %316, i32 %317)
  br label %319

319:                                              ; preds = %315, %311
  br label %320

320:                                              ; preds = %319, %248
  %321 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %322 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %321, i32 0, i32 9
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %320
  %326 = load %struct.super_block*, %struct.super_block** %5, align 8
  %327 = call i32 @udf_warn(%struct.super_block* %326, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %8, align 4
  br label %431

330:                                              ; preds = %320
  %331 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %332 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %331, i32 0, i32 8
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** %332, align 8
  %334 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %335 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @UDF_PART_FLAG_READ_ONLY, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %330
  %344 = load %struct.super_block*, %struct.super_block** %5, align 8
  %345 = call i32 @sb_rdonly(%struct.super_block* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %343
  %348 = load i32, i32* @EACCES, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %8, align 4
  br label %431

350:                                              ; preds = %343
  %351 = load %struct.super_block*, %struct.super_block** %5, align 8
  %352 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %353 = call i32 @UDF_SET_FLAG(%struct.super_block* %351, i32 %352)
  br label %354

354:                                              ; preds = %350, %330
  %355 = load %struct.super_block*, %struct.super_block** %5, align 8
  %356 = call i32 @udf_find_fileset(%struct.super_block* %355, %struct.kernel_lb_addr* %12, %struct.kernel_lb_addr* %11)
  store i32 %356, i32* %8, align 4
  %357 = load i32, i32* %8, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load %struct.super_block*, %struct.super_block** %5, align 8
  %361 = call i32 @udf_warn(%struct.super_block* %360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %431

362:                                              ; preds = %354
  %363 = load i32, i32* %7, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %388, label %365

365:                                              ; preds = %362
  %366 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %367 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @udf_time_to_disk_stamp(%struct.timestamp* %18, i32 %368)
  %370 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %371 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = call i64 @le16_to_cpu(i32 %374)
  %376 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i64 @le16_to_cpu(i32 %385)
  %387 = call i32 @udf_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %372, i64 %375, i32 %377, i32 %379, i32 %381, i32 %383, i64 %386)
  br label %388

388:                                              ; preds = %365, %362
  %389 = load %struct.super_block*, %struct.super_block** %5, align 8
  %390 = call i32 @sb_rdonly(%struct.super_block* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %388
  %393 = load %struct.super_block*, %struct.super_block** %5, align 8
  %394 = call i32 @udf_open_lvid(%struct.super_block* %393)
  store i32 1, i32* %14, align 4
  br label %395

395:                                              ; preds = %392, %388
  %396 = load %struct.super_block*, %struct.super_block** %5, align 8
  %397 = call %struct.inode* @udf_iget(%struct.super_block* %396, %struct.kernel_lb_addr* %11)
  store %struct.inode* %397, %struct.inode** %9, align 8
  %398 = load %struct.inode*, %struct.inode** %9, align 8
  %399 = call i64 @IS_ERR(%struct.inode* %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %395
  %402 = load %struct.super_block*, %struct.super_block** %5, align 8
  %403 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 (%struct.super_block*, i8*, ...) @udf_err(%struct.super_block* %402, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %404, i32 %406)
  %408 = load %struct.inode*, %struct.inode** %9, align 8
  %409 = call i32 @PTR_ERR(%struct.inode* %408)
  store i32 %409, i32* %8, align 4
  br label %431

410:                                              ; preds = %395
  %411 = load %struct.inode*, %struct.inode** %9, align 8
  %412 = call i32 @d_make_root(%struct.inode* %411)
  %413 = load %struct.super_block*, %struct.super_block** %5, align 8
  %414 = getelementptr inbounds %struct.super_block, %struct.super_block* %413, i32 0, i32 4
  store i32 %412, i32* %414, align 8
  %415 = load %struct.super_block*, %struct.super_block** %5, align 8
  %416 = getelementptr inbounds %struct.super_block, %struct.super_block* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 8
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %424, label %419

419:                                              ; preds = %410
  %420 = load %struct.super_block*, %struct.super_block** %5, align 8
  %421 = call i32 (%struct.super_block*, i8*, ...) @udf_err(%struct.super_block* %420, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %422 = load i32, i32* @ENOMEM, align 4
  %423 = sub nsw i32 0, %422
  store i32 %423, i32* %8, align 4
  br label %431

424:                                              ; preds = %410
  %425 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %426 = load %struct.super_block*, %struct.super_block** %5, align 8
  %427 = getelementptr inbounds %struct.super_block, %struct.super_block* %426, i32 0, i32 3
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* @UDF_MAX_LINKS, align 4
  %429 = load %struct.super_block*, %struct.super_block** %5, align 8
  %430 = getelementptr inbounds %struct.super_block, %struct.super_block* %429, i32 0, i32 2
  store i32 %428, i32* %430, align 8
  store i32 0, i32* %4, align 4
  br label %462

431:                                              ; preds = %419, %401, %359, %347, %325, %292, %277, %262, %247
  %432 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %433 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %432, i32 0, i32 5
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @iput(i32 %434)
  br label %436

436:                                              ; preds = %431, %73, %58
  %437 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  %438 = load i32*, i32** %437, align 8
  %439 = icmp ne i32* %438, null
  br i1 %439, label %440, label %444

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.udf_options, %struct.udf_options* %10, i32 0, i32 3
  %442 = load i32*, i32** %441, align 8
  %443 = call i32 @unload_nls(i32* %442)
  br label %444

444:                                              ; preds = %440, %436
  %445 = load i32, i32* %14, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = load %struct.super_block*, %struct.super_block** %5, align 8
  %449 = call i32 @udf_close_lvid(%struct.super_block* %448)
  br label %450

450:                                              ; preds = %447, %444
  %451 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %452 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %451, i32 0, i32 4
  %453 = load i32*, i32** %452, align 8
  %454 = call i32 @brelse(i32* %453)
  %455 = load %struct.super_block*, %struct.super_block** %5, align 8
  %456 = call i32 @udf_sb_free_partitions(%struct.super_block* %455)
  %457 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %458 = call i32 @kfree(%struct.udf_sb_info* %457)
  %459 = load %struct.super_block*, %struct.super_block** %5, align 8
  %460 = getelementptr inbounds %struct.super_block, %struct.super_block* %459, i32 0, i32 1
  store %struct.udf_sb_info* null, %struct.udf_sb_info** %460, align 8
  %461 = load i32, i32* %8, align 4
  store i32 %461, i32* %4, align 4
  br label %462

462:                                              ; preds = %450, %424, %45
  %463 = load i32, i32* %4, align 4
  ret i32 %463
}

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local %struct.udf_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @udf_parse_options(i8*, %struct.udf_options*, i32) #1

declare dso_local i32 @udf_err(%struct.super_block*, i8*, ...) #1

declare dso_local i32* @load_nls_default(...) #1

declare dso_local i32 @udf_debug(i8*, ...) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @udf_get_last_session(%struct.super_block*) #1

declare dso_local i32 @udf_load_vrs(%struct.super_block*, %struct.udf_options*, i32, %struct.kernel_lb_addr*) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_find_fileset(%struct.super_block*, %struct.kernel_lb_addr*, %struct.kernel_lb_addr*) #1

declare dso_local i32 @udf_time_to_disk_stamp(%struct.timestamp*, i32) #1

declare dso_local i32 @udf_info(i8*, i32, i64, i32, i32, i32, i32, i64) #1

declare dso_local i32 @udf_open_lvid(%struct.super_block*) #1

declare dso_local %struct.inode* @udf_iget(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @unload_nls(i32*) #1

declare dso_local i32 @udf_close_lvid(%struct.super_block*) #1

declare dso_local i32 @udf_sb_free_partitions(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.udf_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

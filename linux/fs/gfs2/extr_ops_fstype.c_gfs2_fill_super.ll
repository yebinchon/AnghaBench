; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32*, i64, i32, i32*, i32, i32*, i32*, i32*, i32, i32 }
%struct.fs_context = type { i32, %struct.gfs2_args* }
%struct.gfs2_args = type { i32, i64, i32, i32, i64, i64 }
%struct.gfs2_sbd = type { i8*, i32, i32*, i32*, %struct.TYPE_7__, i32, %struct.gfs2_args, %struct.TYPE_6__, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.gfs2_holder = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SB_SILENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't alloc struct gfs2_sbd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@SDF_RORECOVERY = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@SDF_NOBARRIERS = common dso_local global i32 0, align 4
@SB_NOSEC = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@gfs2_super_ops = common dso_local global i32 0, align 4
@gfs2_dops = common dso_local global i32 0, align 4
@gfs2_export_ops = common dso_local global i32 0, align 4
@gfs2_xattr_handlers = common dso_local global i32 0, align 4
@gfs2_quotactl_ops = common dso_local global i32 0, align 4
@QTYPE_MASK_USR = common dso_local global i32 0, align 4
@QTYPE_MASK_GRP = common dso_local global i32 0, align 4
@DQUOT_QUOTA_SYS_FILE = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@GFS2_BASIC_BLOCK = common dso_local global i32 0, align 4
@GFS2_BASIC_BLOCK_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s.s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"can't initialize statfs subsystem: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"can't make FS RW: %d\0A\00", align 1
@UNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @gfs2_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.gfs2_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_holder, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %11 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %11, i32 0, i32 1
  %13 = load %struct.gfs2_args*, %struct.gfs2_args** %12, align 8
  store %struct.gfs2_args* %13, %struct.gfs2_args** %6, align 8
  %14 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %15 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SB_SILENT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.gfs2_sbd* @init_sbd(%struct.super_block* %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %8, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %22 = icmp ne %struct.gfs2_sbd* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %367

27:                                               ; preds = %2
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 6
  %30 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %31 = bitcast %struct.gfs2_args* %29 to i8*
  %32 = bitcast %struct.gfs2_args* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 40, i1 false)
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load i32, i32* @SB_RDONLY, align 4
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @SDF_RORECOVERY, align 4
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %46 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %45, i32 0, i32 11
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %38, %27
  %49 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %50 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @SB_POSIXACL, align 4
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %62 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* @SDF_NOBARRIERS, align 4
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %69 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %68, i32 0, i32 11
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* @SB_NOSEC, align 4
  %73 = load %struct.super_block*, %struct.super_block** %4, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @GFS2_MAGIC, align 4
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 11
  store i32 %77, i32* %79, align 8
  %80 = load %struct.super_block*, %struct.super_block** %4, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 10
  store i32* @gfs2_super_ops, i32** %81, align 8
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 9
  store i32* @gfs2_dops, i32** %83, align 8
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 8
  store i32* @gfs2_export_ops, i32** %85, align 8
  %86 = load i32, i32* @gfs2_xattr_handlers, align 4
  %87 = load %struct.super_block*, %struct.super_block** %4, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 6
  store i32* @gfs2_quotactl_ops, i32** %90, align 8
  %91 = load i32, i32* @QTYPE_MASK_USR, align 4
  %92 = load i32, i32* @QTYPE_MASK_GRP, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.super_block*, %struct.super_block** %4, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %97 = load %struct.super_block*, %struct.super_block** %4, align 8
  %98 = call %struct.TYPE_8__* @sb_dqopt(%struct.super_block* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = getelementptr inbounds %struct.super_block, %struct.super_block* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.super_block*, %struct.super_block** %4, align 8
  %108 = load i32, i32* @GFS2_BASIC_BLOCK, align 4
  %109 = call i32 @sb_min_blocksize(%struct.super_block* %107, i32 %108)
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %111 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %110, i32 0, i32 10
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.super_block*, %struct.super_block** %4, align 8
  %114 = getelementptr inbounds %struct.super_block, %struct.super_block* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %117 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i64 %115, i64* %118, align 8
  %119 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %120 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @GFS2_BASIC_BLOCK_SHIFT, align 8
  %124 = sub nsw i64 %122, %123
  %125 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %126 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %125, i32 0, i32 8
  store i64 %124, i64* %126, align 8
  %127 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %128 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @BIT(i64 %129)
  %131 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %132 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 8
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %134 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %138 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %141 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %145 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %148 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %71
  %153 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %154 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %157 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %161 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  br label %170

163:                                              ; preds = %71
  %164 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %165 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %168 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i32 30, i32* %169, align 4
  br label %170

170:                                              ; preds = %163, %152
  %171 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @init_names(%struct.gfs2_sbd* %171, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %178 = call i32 @free_sbd(%struct.gfs2_sbd* %177)
  %179 = load %struct.super_block*, %struct.super_block** %4, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 2
  store i32* null, i32** %180, align 8
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %3, align 4
  br label %367

182:                                              ; preds = %170
  %183 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %184 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %187 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %185, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %188)
  %190 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %191 = call i32 @gfs2_sys_fs_add(%struct.gfs2_sbd* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %182
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %3, align 4
  br label %367

196:                                              ; preds = %182
  %197 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %198 = call i32 @gfs2_create_debugfs_file(%struct.gfs2_sbd* %197)
  %199 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @gfs2_lm_mount(%struct.gfs2_sbd* %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %359

205:                                              ; preds = %196
  %206 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %207 = load i32, i32* @DO, align 4
  %208 = call i32 @init_locking(%struct.gfs2_sbd* %206, %struct.gfs2_holder* %9, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %351

212:                                              ; preds = %205
  %213 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @init_sb(%struct.gfs2_sbd* %213, i32 %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %347

219:                                              ; preds = %212
  %220 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %221 = call i32 @wait_on_journal(%struct.gfs2_sbd* %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %314

225:                                              ; preds = %219
  %226 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %227 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %225
  %232 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %233 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* %10, align 4
  %236 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %237 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 8
  br label %314

239:                                              ; preds = %225
  %240 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %241 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %239
  %246 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %247 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %250 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %248, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %251)
  br label %265

253:                                              ; preds = %239
  %254 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %255 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %258 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %261 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %256, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %259, i32 %263)
  br label %265

265:                                              ; preds = %253, %245
  %266 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %267 = load i32, i32* @DO, align 4
  %268 = call i32 @init_inodes(%struct.gfs2_sbd* %266, i32 %267)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  br label %314

272:                                              ; preds = %265
  %273 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %274 = load i32, i32* @DO, align 4
  %275 = call i32 @init_per_node(%struct.gfs2_sbd* %273, i32 %274)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %310

279:                                              ; preds = %272
  %280 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %281 = call i32 @gfs2_statfs_init(%struct.gfs2_sbd* %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %286 = load i32, i32* %10, align 4
  %287 = call i32 @fs_err(%struct.gfs2_sbd* %285, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %286)
  br label %306

288:                                              ; preds = %279
  %289 = load %struct.super_block*, %struct.super_block** %4, align 8
  %290 = call i32 @sb_rdonly(%struct.super_block* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %288
  %293 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %294 = call i32 @gfs2_make_fs_rw(%struct.gfs2_sbd* %293)
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %299 = load i32, i32* %10, align 4
  %300 = call i32 @fs_err(%struct.gfs2_sbd* %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  br label %306

301:                                              ; preds = %292
  br label %302

302:                                              ; preds = %301, %288
  %303 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %9)
  %304 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %305 = call i32 @gfs2_online_uevent(%struct.gfs2_sbd* %304)
  store i32 0, i32* %3, align 4
  br label %367

306:                                              ; preds = %297, %284
  %307 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %308 = load i32, i32* @UNDO, align 4
  %309 = call i32 @init_per_node(%struct.gfs2_sbd* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %278
  %311 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %312 = load i32, i32* @UNDO, align 4
  %313 = call i32 @init_inodes(%struct.gfs2_sbd* %311, i32 %312)
  br label %314

314:                                              ; preds = %310, %271, %231, %224
  %315 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %316 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %321 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = call i32 @dput(i32* %322)
  br label %324

324:                                              ; preds = %319, %314
  %325 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %326 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %331 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @dput(i32* %332)
  br label %334

334:                                              ; preds = %329, %324
  %335 = load %struct.super_block*, %struct.super_block** %4, align 8
  %336 = getelementptr inbounds %struct.super_block, %struct.super_block* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.super_block*, %struct.super_block** %4, align 8
  %341 = getelementptr inbounds %struct.super_block, %struct.super_block* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @dput(i32* %342)
  br label %344

344:                                              ; preds = %339, %334
  %345 = load %struct.super_block*, %struct.super_block** %4, align 8
  %346 = getelementptr inbounds %struct.super_block, %struct.super_block* %345, i32 0, i32 3
  store i32* null, i32** %346, align 8
  br label %347

347:                                              ; preds = %344, %218
  %348 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %349 = load i32, i32* @UNDO, align 4
  %350 = call i32 @init_locking(%struct.gfs2_sbd* %348, %struct.gfs2_holder* %9, i32 %349)
  br label %351

351:                                              ; preds = %347, %211
  %352 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %353 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %352, i32 0, i32 1
  %354 = call i32 @complete_all(i32* %353)
  %355 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %356 = call i32 @gfs2_gl_hash_clear(%struct.gfs2_sbd* %355)
  %357 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %358 = call i32 @gfs2_lm_unmount(%struct.gfs2_sbd* %357)
  br label %359

359:                                              ; preds = %351, %204
  %360 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %361 = call i32 @gfs2_delete_debugfs_file(%struct.gfs2_sbd* %360)
  %362 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %363 = call i32 @gfs2_sys_fs_del(%struct.gfs2_sbd* %362)
  %364 = load %struct.super_block*, %struct.super_block** %4, align 8
  %365 = getelementptr inbounds %struct.super_block, %struct.super_block* %364, i32 0, i32 2
  store i32* null, i32** %365, align 8
  %366 = load i32, i32* %10, align 4
  store i32 %366, i32* %3, align 4
  br label %367

367:                                              ; preds = %359, %302, %194, %176, %23
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local %struct.gfs2_sbd* @init_sbd(%struct.super_block*) #1

declare dso_local i32 @pr_warn(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @sb_min_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @init_names(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @free_sbd(%struct.gfs2_sbd*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @gfs2_sys_fs_add(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_create_debugfs_file(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_lm_mount(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @init_locking(%struct.gfs2_sbd*, %struct.gfs2_holder*, i32) #1

declare dso_local i32 @init_sb(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @wait_on_journal(%struct.gfs2_sbd*) #1

declare dso_local i32 @init_inodes(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @init_per_node(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_statfs_init(%struct.gfs2_sbd*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @gfs2_make_fs_rw(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_online_uevent(%struct.gfs2_sbd*) #1

declare dso_local i32 @dput(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @gfs2_gl_hash_clear(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_lm_unmount(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_delete_debugfs_file(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_sys_fs_del(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

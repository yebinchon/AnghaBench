; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8, i32, i32, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"tails\00", align 1
@tails = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"notail\00", align 1
@REISERFS_LARGETAIL = common dso_local global i32 0, align 4
@REISERFS_SMALLTAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"conv\00", align 1
@REISERFS_CONVERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"attrs\00", align 1
@REISERFS_ATTRS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"noattrs\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"expose_privroot\00", align 1
@REISERFS_EXPOSE_PRIVROOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"user_xattr\00", align 1
@REISERFS_UNSUPPORTED_OPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"nouser_xattr\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"acl\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"noacl\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"nolog\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"replayonly\00", align 1
@REPLAYONLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"block-allocator\00", align 1
@balloc = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@logging_mode = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@barrier_mode = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"jdev\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"nolargeio\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"usrquota\00", align 1
@REISERFS_USRQUOTA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"grpquota\00", align 1
@REISERFS_GRPQUOTA = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"noquota\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@error_actions = common dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"usrjquota\00", align 1
@REISERFS_OPT_ALLOWEMPTY = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"grpjquota\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"jqfmt\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"super-6507\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"bad value %s for -oresize\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"super-6508\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"bad value %s for -ocommit\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"super-6509\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"nolargeio option is no longer supported\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"super-6510\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"journal device was already specified to be %s\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"reiserfs-2503\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"journaled quota options not supported.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@QFMT_VFS_OLD = common dso_local global i32 0, align 4
@QFMT_VFS_V0 = common dso_local global i32 0, align 4
@REISERFS_POSIXACL = common dso_local global i32 0, align 4
@REISERFS_XATTRS_USER = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i64*, i64*, i8**, i32*, i8**, i32*)* @reiserfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_parse_options(%struct.super_block* %0, i8* %1, i64* %2, i64* %3, i8** %4, i32* %5, i8** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [27 x %struct.TYPE_6__], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* null, i8** %19, align 8
  %25 = getelementptr inbounds [27 x %struct.TYPE_6__], [27 x %struct.TYPE_6__]* %21, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8 116, i8* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %32 = load i32*, i32** @tails, align 8
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i8 0, i8* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %37 = load i32, i32* @REISERFS_LARGETAIL, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @REISERFS_SMALLTAIL, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  store i32 %41, i32* %36, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i8* null, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i8 0, i8* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %50 = load i32, i32* @REISERFS_CONVERT, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i8* null, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i32* null, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i8 0, i8* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %59 = load i32, i32* @REISERFS_ATTRS, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i8* null, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  store i32* null, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i8 0, i8* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %67 = load i32, i32* @REISERFS_ATTRS, align 4
  %68 = shl i32 1, %67
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i8* null, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8 0, i8* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %77 = load i32, i32* @REISERFS_EXPOSE_PRIVROOT, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %76, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i8* null, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  store i32* null, i32** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i8 0, i8* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %86 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %87 = shl i32 1, %86
  store i32 %87, i32* %85, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  store i8* null, i8** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i8 0, i8* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %94 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %95 = shl i32 1, %94
  store i32 %95, i32* %93, align 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  store i8* null, i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i8 0, i8* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %104 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %105 = shl i32 1, %104
  store i32 %105, i32* %103, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  store i8* null, i8** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  store i32* null, i32** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i8 0, i8* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %112 = load i32, i32* @REISERFS_UNSUPPORTED_OPT, align 4
  %113 = shl i32 1, %112
  store i32 %113, i32* %111, align 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i8* null, i8** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  store i32* null, i32** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 1
  %118 = bitcast %struct.TYPE_6__* %117 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %118, i8 0, i64 40, i1 false)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i8 0, i8* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %125 = load i32, i32* @REPLAYONLY, align 4
  %126 = shl i32 1, %125
  store i32 %126, i32* %124, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  store i8* null, i8** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  store i32* null, i32** %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i8 97, i8* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  store i8* null, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %136 = load i32*, i32** @balloc, align 8
  store i32* %136, i32** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i8 100, i8* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  store i32 0, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  store i8* null, i8** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  %144 = load i32*, i32** @logging_mode, align 8
  store i32* %144, i32** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i8 98, i8* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  store i8* null, i8** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 5
  %152 = load i32*, i32** @barrier_mode, align 8
  store i32* %152, i32** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 1
  %154 = bitcast %struct.TYPE_6__* %153 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %154, i8 0, i64 40, i1 false)
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i8 114, i8* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 1
  %158 = bitcast %struct.TYPE_6__* %157 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %158, i8 0, i64 40, i1 false)
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i8 106, i8* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 1
  %162 = bitcast %struct.TYPE_6__* %161 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %162, i8 0, i64 40, i1 false)
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i8 119, i8* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 1
  %166 = bitcast %struct.TYPE_6__* %165 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %166, i8 0, i64 40, i1 false)
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  store i8 99, i8* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i8 0, i8* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %174 = load i32, i32* @REISERFS_USRQUOTA, align 4
  %175 = shl i32 1, %174
  store i32 %175, i32* %173, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  store i8* null, i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 5
  store i32* null, i32** %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i8 0, i8* %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %183 = load i32, i32* @REISERFS_GRPQUOTA, align 4
  %184 = shl i32 1, %183
  store i32 %184, i32* %182, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  store i8* null, i8** %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 5
  store i32* null, i32** %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  store i8 0, i8* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %191 = load i32, i32* @REISERFS_USRQUOTA, align 4
  %192 = shl i32 1, %191
  %193 = load i32, i32* @REISERFS_GRPQUOTA, align 4
  %194 = shl i32 1, %193
  %195 = or i32 %192, %194
  store i32 %195, i32* %190, align 4
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  store i32 0, i32* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 4
  store i8* null, i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 5
  store i32* null, i32** %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i8 101, i8* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  store i32 0, i32* %202, align 4
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  store i32 0, i32* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  store i8* null, i8** %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  %206 = load i32*, i32** @error_actions, align 8
  store i32* %206, i32** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 1
  %208 = bitcast %struct.TYPE_6__* %207 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %208, i8 0, i64 40, i1 false)
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %211 = load i32, i32* @REISERFS_OPT_ALLOWEMPTY, align 4
  %212 = shl i32 1, %211
  %213 = or i32 117, %212
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %210, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 1
  %216 = bitcast %struct.TYPE_6__* %215 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %216, i8 0, i64 40, i1 false)
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %219 = load i32, i32* @REISERFS_OPT_ALLOWEMPTY, align 4
  %220 = shl i32 1, %219
  %221 = or i32 103, %220
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %218, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 1
  %224 = bitcast %struct.TYPE_6__* %223 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %224, i8 0, i64 40, i1 false)
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8** %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  store i8 102, i8* %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 1
  %228 = bitcast %struct.TYPE_6__* %227 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %228, i8 0, i64 40, i1 false)
  %229 = load i64*, i64** %13, align 8
  store i64 0, i64* %229, align 8
  %230 = load i8*, i8** %11, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %8
  %233 = load i8*, i8** %11, align 8
  %234 = load i8, i8* %233, align 1
  %235 = icmp ne i8 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232, %8
  store i32 1, i32* %9, align 4
  br label %351

237:                                              ; preds = %232
  %238 = load i8*, i8** %11, align 8
  store i8* %238, i8** %20, align 8
  br label %239

239:                                              ; preds = %349, %237
  %240 = load i8*, i8** %20, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %350

242:                                              ; preds = %239
  %243 = load %struct.super_block*, %struct.super_block** %10, align 8
  %244 = getelementptr inbounds [27 x %struct.TYPE_6__], [27 x %struct.TYPE_6__]* %21, i64 0, i64 0
  %245 = load i64*, i64** %12, align 8
  %246 = call i32 @reiserfs_getopt(%struct.super_block* %243, i8** %20, %struct.TYPE_6__* %244, i8** %19, i64* %245)
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %18, align 4
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  store i32 0, i32* %9, align 4
  br label %351

250:                                              ; preds = %242
  %251 = load i32, i32* %18, align 4
  %252 = icmp eq i32 %251, 114
  br i1 %252, label %253, label %283

253:                                              ; preds = %250
  store i8* null, i8** %22, align 8
  %254 = load i8*, i8** %19, align 8
  %255 = call i64 @strcmp(i8* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %269, label %257

257:                                              ; preds = %253
  %258 = load %struct.super_block*, %struct.super_block** %10, align 8
  %259 = getelementptr inbounds %struct.super_block, %struct.super_block* %258, i32 0, i32 1
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @i_size_read(i32 %262)
  %264 = load %struct.super_block*, %struct.super_block** %10, align 8
  %265 = getelementptr inbounds %struct.super_block, %struct.super_block* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = lshr i64 %263, %266
  %268 = load i64*, i64** %13, align 8
  store i64 %267, i64* %268, align 8
  br label %282

269:                                              ; preds = %253
  %270 = load i8*, i8** %19, align 8
  %271 = call i64 @simple_strtoul(i8* %270, i8** %22, i32 0)
  %272 = load i64*, i64** %13, align 8
  store i64 %271, i64* %272, align 8
  %273 = load i8*, i8** %22, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %269
  %278 = load %struct.super_block*, %struct.super_block** %10, align 8
  %279 = load i8*, i8** %19, align 8
  %280 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* %279)
  store i32 0, i32* %9, align 4
  br label %351

281:                                              ; preds = %269
  br label %282

282:                                              ; preds = %281, %257
  br label %283

283:                                              ; preds = %282, %250
  %284 = load i32, i32* %18, align 4
  %285 = icmp eq i32 %284, 99
  br i1 %285, label %286, label %304

286:                                              ; preds = %283
  store i8* null, i8** %23, align 8
  %287 = load i8*, i8** %19, align 8
  %288 = call i64 @simple_strtoul(i8* %287, i8** %23, i32 0)
  store i64 %288, i64* %24, align 8
  %289 = load i8*, i8** %23, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %286
  %294 = load i64, i64* %24, align 8
  %295 = icmp uge i64 %294, 4294967295
  br i1 %295, label %296, label %300

296:                                              ; preds = %293, %286
  %297 = load %struct.super_block*, %struct.super_block** %10, align 8
  %298 = load i8*, i8** %19, align 8
  %299 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %297, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* %298)
  store i32 0, i32* %9, align 4
  br label %351

300:                                              ; preds = %293
  %301 = load i64, i64* %24, align 8
  %302 = trunc i64 %301 to i32
  %303 = load i32*, i32** %15, align 8
  store i32 %302, i32* %303, align 4
  br label %304

304:                                              ; preds = %300, %283
  %305 = load i32, i32* %18, align 4
  %306 = icmp eq i32 %305, 119
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.super_block*, %struct.super_block** %10, align 8
  %309 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %308, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %351

310:                                              ; preds = %304
  %311 = load i32, i32* %18, align 4
  %312 = icmp eq i32 %311, 106
  br i1 %312, label %313, label %337

313:                                              ; preds = %310
  %314 = load i8*, i8** %19, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %336

316:                                              ; preds = %313
  %317 = load i8*, i8** %19, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %336

321:                                              ; preds = %316
  %322 = load i8**, i8*** %14, align 8
  %323 = icmp ne i8** %322, null
  br i1 %323, label %324, label %336

324:                                              ; preds = %321
  %325 = load i8**, i8*** %14, align 8
  %326 = load i8*, i8** %325, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %333

328:                                              ; preds = %324
  %329 = load %struct.super_block*, %struct.super_block** %10, align 8
  %330 = load i8**, i8*** %14, align 8
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %329, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0), i8* %331)
  store i32 0, i32* %9, align 4
  br label %351

333:                                              ; preds = %324
  %334 = load i8*, i8** %19, align 8
  %335 = load i8**, i8*** %14, align 8
  store i8* %334, i8** %335, align 8
  br label %336

336:                                              ; preds = %333, %321, %316, %313
  br label %337

337:                                              ; preds = %336, %310
  %338 = load i32, i32* %18, align 4
  %339 = icmp eq i32 %338, 117
  br i1 %339, label %346, label %340

340:                                              ; preds = %337
  %341 = load i32, i32* %18, align 4
  %342 = icmp eq i32 %341, 103
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %18, align 4
  %345 = icmp eq i32 %344, 102
  br i1 %345, label %346, label %349

346:                                              ; preds = %343, %340, %337
  %347 = load %struct.super_block*, %struct.super_block** %10, align 8
  %348 = call i32 (%struct.super_block*, i8*, i8*, ...) @reiserfs_warning(%struct.super_block* %347, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %351

349:                                              ; preds = %343
  br label %239

350:                                              ; preds = %239
  store i32 1, i32* %9, align 4
  br label %351

351:                                              ; preds = %350, %346, %328, %307, %296, %277, %249, %236
  %352 = load i32, i32* %9, align 4
  ret i32 %352
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @reiserfs_getopt(%struct.super_block*, i8**, %struct.TYPE_6__*, i8**, i64*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @i_size_read(i32) #2

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

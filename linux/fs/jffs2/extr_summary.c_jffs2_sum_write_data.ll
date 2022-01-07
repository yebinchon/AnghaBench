; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_summary.c_jffs2_sum_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_summary.c_jffs2_sum_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.jffs2_raw_summary*, %union.jffs2_sum_mem* }
%struct.jffs2_raw_summary = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%union.jffs2_sum_mem = type { %struct.TYPE_10__, [24 x i8] }
%struct.TYPE_10__ = type { %union.jffs2_sum_mem*, i32 }
%struct.jffs2_eraseblock = type { i32, i32 }
%struct.jffs2_sum_marker = type { i8*, i8* }
%struct.kvec = type { i32, %struct.jffs2_raw_summary* }
%struct.jffs2_sum_inode_flash = type { i32, i32, i32, i32, i32 }
%struct.jffs2_sum_dirent_flash = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SUMMARY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Summary too big (%d data, %d pad) in eraseblock at %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Not enough space for summary, padsize = %d\0A\00", align 1
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_SUMMARY = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_INODE_SIZE = common dso_local global i32 0, align 4
@JFFS2_COMPAT_MASK = common dso_local global i32 0, align 4
@JFFS2_FEATURE_RWCOMPAT_COPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Writing unknown RWCOMPAT_COPY node type %x\0A\00", align 1
@JFFS2_SUM_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"writing out data to flash to pos : 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Write of %u bytes at 0x%08x failed. returned %d, retlen %zd\0A\00", align 1
@REF_OBSOLETE = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_NOSUM_SIZE = common dso_local global i32 0, align 4
@REF_NORMAL = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_XATTR_SIZE = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_XREF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32, i32, i32)* @jffs2_sum_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_sum_write_data(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca %struct.jffs2_eraseblock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.jffs2_raw_summary, align 8
  %13 = alloca %union.jffs2_sum_mem*, align 8
  %14 = alloca %struct.jffs2_sum_marker*, align 8
  %15 = alloca [2 x %struct.kvec], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.jffs2_sum_inode_flash*, align 8
  %21 = alloca %struct.jffs2_sum_dirent_flash*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %7, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @MAX_SUMMARY_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %5
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = call i32 @jffs2_sum_disable_collecting(%struct.TYPE_13__* %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %8, align 8
  %35 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  store i32 0, i32* %6, align 4
  br label %378

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %43 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %42, i32 0, i32 3
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = call i32 @jffs2_sum_disable_collecting(%struct.TYPE_13__* %44)
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %6, align 4
  br label %378

48:                                               ; preds = %38
  %49 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %50 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load %struct.jffs2_raw_summary*, %struct.jffs2_raw_summary** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @memset(%struct.jffs2_raw_summary* %53, i32 255, i32 %54)
  %56 = call i32 @memset(%struct.jffs2_raw_summary* %12, i32 0, i32 72)
  %57 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %58 = call i8* @cpu_to_je16(i32 %57)
  %59 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 8
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @JFFS2_NODETYPE_SUMMARY, align 4
  %61 = call i8* @cpu_to_je16(i32 %60)
  %62 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 7
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @cpu_to_je32(i32 %63)
  %65 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 6
  store i8* %64, i8** %65, align 8
  %66 = call i32 @crc32(i32 0, %struct.jffs2_raw_summary* %12, i32 0)
  %67 = call i8* @cpu_to_je32(i32 %66)
  %68 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 5
  store i8* %67, i8** %68, align 8
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %70 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %69, i32 0, i32 3
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_je32(i32 %73)
  %75 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  %76 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %77 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @cpu_to_je32(i32 %78)
  %80 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 3
  store i8* %79, i8** %80, align 8
  %81 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %82 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %81, i32 0, i32 3
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_je32(i32 %85)
  %87 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 2
  store i8* %86, i8** %87, align 8
  %88 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %89 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %88, i32 0, i32 3
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load %struct.jffs2_raw_summary*, %struct.jffs2_raw_summary** %91, align 8
  %93 = bitcast %struct.jffs2_raw_summary* %92 to i8*
  store i8* %93, i8** %17, align 8
  br label %94

94:                                               ; preds = %244, %48
  %95 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %96 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %261

101:                                              ; preds = %94
  %102 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %103 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %102, i32 0, i32 3
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  %106 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %105, align 8
  store %union.jffs2_sum_mem* %106, %union.jffs2_sum_mem** %13, align 8
  %107 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %108 = bitcast %union.jffs2_sum_mem* %107 to %struct.TYPE_10__*
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @je16_to_cpu(i32 %110)
  switch i32 %111, label %220 [
    i32 130, label %112
    i32 131, label %149
  ]

112:                                              ; preds = %101
  %113 = load i8*, i8** %17, align 8
  %114 = bitcast i8* %113 to %struct.jffs2_sum_inode_flash*
  store %struct.jffs2_sum_inode_flash* %114, %struct.jffs2_sum_inode_flash** %20, align 8
  %115 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %116 = bitcast %union.jffs2_sum_mem* %115 to %struct.TYPE_11__*
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.jffs2_sum_inode_flash*, %struct.jffs2_sum_inode_flash** %20, align 8
  %120 = getelementptr inbounds %struct.jffs2_sum_inode_flash, %struct.jffs2_sum_inode_flash* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %122 = bitcast %union.jffs2_sum_mem* %121 to %struct.TYPE_11__*
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.jffs2_sum_inode_flash*, %struct.jffs2_sum_inode_flash** %20, align 8
  %126 = getelementptr inbounds %struct.jffs2_sum_inode_flash, %struct.jffs2_sum_inode_flash* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %128 = bitcast %union.jffs2_sum_mem* %127 to %struct.TYPE_11__*
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.jffs2_sum_inode_flash*, %struct.jffs2_sum_inode_flash** %20, align 8
  %132 = getelementptr inbounds %struct.jffs2_sum_inode_flash, %struct.jffs2_sum_inode_flash* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %134 = bitcast %union.jffs2_sum_mem* %133 to %struct.TYPE_11__*
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.jffs2_sum_inode_flash*, %struct.jffs2_sum_inode_flash** %20, align 8
  %138 = getelementptr inbounds %struct.jffs2_sum_inode_flash, %struct.jffs2_sum_inode_flash* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %140 = bitcast %union.jffs2_sum_mem* %139 to %struct.TYPE_11__*
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.jffs2_sum_inode_flash*, %struct.jffs2_sum_inode_flash** %20, align 8
  %144 = getelementptr inbounds %struct.jffs2_sum_inode_flash, %struct.jffs2_sum_inode_flash* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @JFFS2_SUMMARY_INODE_SIZE, align 4
  %146 = load i8*, i8** %17, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr i8, i8* %146, i64 %147
  store i8* %148, i8** %17, align 8
  br label %244

149:                                              ; preds = %101
  %150 = load i8*, i8** %17, align 8
  %151 = bitcast i8* %150 to %struct.jffs2_sum_dirent_flash*
  store %struct.jffs2_sum_dirent_flash* %151, %struct.jffs2_sum_dirent_flash** %21, align 8
  %152 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %153 = bitcast %union.jffs2_sum_mem* %152 to %struct.TYPE_12__*
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %157 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %159 = bitcast %union.jffs2_sum_mem* %158 to %struct.TYPE_12__*
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %163 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %165 = bitcast %union.jffs2_sum_mem* %164 to %struct.TYPE_12__*
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %169 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 4
  %170 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %171 = bitcast %union.jffs2_sum_mem* %170 to %struct.TYPE_12__*
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %175 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %177 = bitcast %union.jffs2_sum_mem* %176 to %struct.TYPE_12__*
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %181 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %183 = bitcast %union.jffs2_sum_mem* %182 to %struct.TYPE_12__*
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %187 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %189 = bitcast %union.jffs2_sum_mem* %188 to %struct.TYPE_12__*
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %193 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %195 = bitcast %union.jffs2_sum_mem* %194 to %struct.TYPE_12__*
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %199 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.jffs2_sum_dirent_flash*, %struct.jffs2_sum_dirent_flash** %21, align 8
  %201 = getelementptr inbounds %struct.jffs2_sum_dirent_flash, %struct.jffs2_sum_dirent_flash* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %204 = bitcast %union.jffs2_sum_mem* %203 to %struct.TYPE_12__*
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %208 = bitcast %union.jffs2_sum_mem* %207 to %struct.TYPE_12__*
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @memcpy(i32 %202, i32 %206, i32 %210)
  %212 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %213 = bitcast %union.jffs2_sum_mem* %212 to %struct.TYPE_12__*
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %215)
  %217 = load i8*, i8** %17, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr i8, i8* %217, i64 %218
  store i8* %219, i8** %17, align 8
  br label %244

220:                                              ; preds = %101
  %221 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %222 = bitcast %union.jffs2_sum_mem* %221 to %struct.TYPE_10__*
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @je16_to_cpu(i32 %224)
  %226 = load i32, i32* @JFFS2_COMPAT_MASK, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* @JFFS2_FEATURE_RWCOMPAT_COPY, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %220
  %231 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %232 = bitcast %union.jffs2_sum_mem* %231 to %struct.TYPE_10__*
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @je16_to_cpu(i32 %234)
  %236 = call i32 @dbg_summary(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %235)
  %237 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %238 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %237, i32 0, i32 3
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = call i32 @jffs2_sum_disable_collecting(%struct.TYPE_13__* %239)
  br label %243

241:                                              ; preds = %220
  %242 = call i32 (...) @BUG()
  br label %243

243:                                              ; preds = %241, %230
  br label %244

244:                                              ; preds = %243, %149, %112
  %245 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %246 = bitcast %union.jffs2_sum_mem* %245 to %struct.TYPE_10__*
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %247, align 8
  %249 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %250 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %249, i32 0, i32 3
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 4
  store %union.jffs2_sum_mem* %248, %union.jffs2_sum_mem** %252, align 8
  %253 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %254 = call i32 @kfree(%union.jffs2_sum_mem* %253)
  %255 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %256 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %255, i32 0, i32 3
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %258, align 4
  br label %94

261:                                              ; preds = %94
  %262 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %263 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %262, i32 0, i32 3
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = call i32 @jffs2_sum_reset_collected(%struct.TYPE_13__* %264)
  %266 = load i32, i32* %11, align 4
  %267 = load i8*, i8** %17, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr i8, i8* %267, i64 %268
  store i8* %269, i8** %17, align 8
  %270 = load i8*, i8** %17, align 8
  %271 = bitcast i8* %270 to %struct.jffs2_sum_marker*
  store %struct.jffs2_sum_marker* %271, %struct.jffs2_sum_marker** %14, align 8
  %272 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %273 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %8, align 8
  %276 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sub nsw i32 %274, %277
  %279 = call i8* @cpu_to_je32(i32 %278)
  %280 = load %struct.jffs2_sum_marker*, %struct.jffs2_sum_marker** %14, align 8
  %281 = getelementptr inbounds %struct.jffs2_sum_marker, %struct.jffs2_sum_marker* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  %282 = load i32, i32* @JFFS2_SUM_MAGIC, align 4
  %283 = call i8* @cpu_to_je32(i32 %282)
  %284 = load %struct.jffs2_sum_marker*, %struct.jffs2_sum_marker** %14, align 8
  %285 = getelementptr inbounds %struct.jffs2_sum_marker, %struct.jffs2_sum_marker* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  %286 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %287 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %286, i32 0, i32 3
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 3
  %290 = load %struct.jffs2_raw_summary*, %struct.jffs2_raw_summary** %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = call i32 @crc32(i32 0, %struct.jffs2_raw_summary* %290, i32 %291)
  %293 = call i8* @cpu_to_je32(i32 %292)
  %294 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 1
  store i8* %293, i8** %294, align 8
  %295 = call i32 @crc32(i32 0, %struct.jffs2_raw_summary* %12, i32 64)
  %296 = call i8* @cpu_to_je32(i32 %295)
  %297 = getelementptr inbounds %struct.jffs2_raw_summary, %struct.jffs2_raw_summary* %12, i32 0, i32 0
  store i8* %296, i8** %297, align 8
  %298 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %299 = getelementptr inbounds %struct.kvec, %struct.kvec* %298, i32 0, i32 1
  store %struct.jffs2_raw_summary* %12, %struct.jffs2_raw_summary** %299, align 8
  %300 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %301 = getelementptr inbounds %struct.kvec, %struct.kvec* %300, i32 0, i32 0
  store i32 72, i32* %301, align 16
  %302 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %303 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %302, i32 0, i32 3
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 3
  %306 = load %struct.jffs2_raw_summary*, %struct.jffs2_raw_summary** %305, align 8
  %307 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 1
  %308 = getelementptr inbounds %struct.kvec, %struct.kvec* %307, i32 0, i32 1
  store %struct.jffs2_raw_summary* %306, %struct.jffs2_raw_summary** %308, align 8
  %309 = load i32, i32* %10, align 4
  %310 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 1
  %311 = getelementptr inbounds %struct.kvec, %struct.kvec* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 16
  %312 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %8, align 8
  %313 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %316 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %314, %317
  %319 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %8, align 8
  %320 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %318, %321
  store i32 %322, i32* %16, align 4
  %323 = load i32, i32* %16, align 4
  %324 = call i32 @dbg_summary(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %323)
  %325 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %326 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @jffs2_flash_writev(%struct.jffs2_sb_info* %325, %struct.kvec* %326, i32 2, i32 %327, i64* %19, i32 0)
  store i32 %328, i32* %18, align 4
  %329 = load i32, i32* %18, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %261
  %332 = load i64, i64* %19, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = icmp ne i64 %332, %334
  br i1 %335, label %336, label %364

336:                                              ; preds = %331, %261
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* %16, align 4
  %339 = load i32, i32* %18, align 4
  %340 = load i64, i64* %19, align 8
  %341 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %337, i32 %338, i32 %339, i64 %340)
  %342 = load i64, i64* %19, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %336
  %345 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %346 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %345, i32 0, i32 2
  %347 = call i32 @spin_lock(i32* %346)
  %348 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %349 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %8, align 8
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* @REF_OBSOLETE, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @jffs2_link_node_ref(%struct.jffs2_sb_info* %348, %struct.jffs2_eraseblock* %349, i32 %352, i32 %353, i32* null)
  %355 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %356 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %355, i32 0, i32 2
  %357 = call i32 @spin_unlock(i32* %356)
  br label %358

358:                                              ; preds = %344, %336
  %359 = load i32, i32* @JFFS2_SUMMARY_NOSUM_SIZE, align 4
  %360 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %361 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %360, i32 0, i32 3
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 2
  store i32 %359, i32* %363, align 8
  store i32 0, i32* %6, align 4
  br label %378

364:                                              ; preds = %331
  %365 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %366 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %365, i32 0, i32 2
  %367 = call i32 @spin_lock(i32* %366)
  %368 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %369 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %8, align 8
  %370 = load i32, i32* %16, align 4
  %371 = load i32, i32* @REF_NORMAL, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* %9, align 4
  %374 = call i32 @jffs2_link_node_ref(%struct.jffs2_sb_info* %368, %struct.jffs2_eraseblock* %369, i32 %372, i32 %373, i32* null)
  %375 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %376 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %375, i32 0, i32 2
  %377 = call i32 @spin_unlock(i32* %376)
  store i32 0, i32* %6, align 4
  br label %378

378:                                              ; preds = %364, %358, %41, %27
  %379 = load i32, i32* %6, align 4
  ret i32 %379
}

declare dso_local i32 @jffs2_sum_disable_collecting(%struct.TYPE_13__*) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.jffs2_raw_summary*, i32, i32) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @crc32(i32, %struct.jffs2_raw_summary*, i32) #1

declare dso_local i32 @je16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local i32 @dbg_summary(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kfree(%union.jffs2_sum_mem*) #1

declare dso_local i32 @jffs2_sum_reset_collected(%struct.TYPE_13__*) #1

declare dso_local i32 @jffs2_flash_writev(%struct.jffs2_sb_info*, %struct.kvec*, i32, i32, i64*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jffs2_link_node_ref(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

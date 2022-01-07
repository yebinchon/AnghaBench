; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_readsb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_readsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf_ops = type { i32 }
%struct.xfs_mount = type { %struct.xfs_buf*, i32*, %struct.xfs_sb }
%struct.xfs_buf = type { %struct.xfs_buf_ops* }
%struct.xfs_sb = type { i64, i32 }

@XFS_MFSI_QUIET = common dso_local global i32 0, align 4
@XFS_SB_DADDR = common dso_local global i32 0, align 4
@XBF_NO_IOACCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SB validate failed with error %d.\00", align 1
@EFSBADCRC = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_SB_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid superblock magic number\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"device supports %u byte sectors (not %u)\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@xfs_sb_buf_ops = common dso_local global %struct.xfs_buf_ops zeroinitializer, align 4
@xfs_sb_quiet_buf_ops = common dso_local global %struct.xfs_buf_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_readsb(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.xfs_sb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf_ops*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 2
  store %struct.xfs_sb* %13, %struct.xfs_sb** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @XFS_MFSI_QUIET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 0
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %21, align 8
  %23 = icmp eq %struct.xfs_buf* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @xfs_getsize_buftarg(i32* %34)
  store i32 %35, i32* %6, align 4
  store %struct.xfs_buf_ops* null, %struct.xfs_buf_ops** %11, align 8
  br label %36

36:                                               ; preds = %106, %2
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @XFS_SB_DADDR, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BTOBB(i32 %41)
  %43 = load i32, i32* @XBF_NO_IOACCT, align 4
  %44 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %11, align 8
  %45 = call i32 @xfs_buf_read_uncached(i32* %39, i32 %40, i32 %42, i32 %43, %struct.xfs_buf** %7, %struct.xfs_buf_ops* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @EFSBADCRC, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EFSCORRUPTED, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %130

65:                                               ; preds = %36
  %66 = load %struct.xfs_sb*, %struct.xfs_sb** %8, align 8
  %67 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %68 = call i32 @XFS_BUF_TO_SBP(%struct.xfs_buf* %67)
  %69 = call i32 @xfs_sb_from_disk(%struct.xfs_sb* %66, i32 %68)
  %70 = load %struct.xfs_sb*, %struct.xfs_sb** %8, align 8
  %71 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XFS_SB_MAGIC, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %80 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %126

84:                                               ; preds = %65
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.xfs_sb*, %struct.xfs_sb** %8, align 8
  %87 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ugt i32 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.xfs_sb*, %struct.xfs_sb** %8, align 8
  %97 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %93, %90
  %101 = load i32, i32* @ENOSYS, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %126

103:                                              ; preds = %84
  %104 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %11, align 8
  %105 = icmp eq %struct.xfs_buf_ops* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %108 = call i32 @xfs_buf_relse(%struct.xfs_buf* %107)
  %109 = load %struct.xfs_sb*, %struct.xfs_sb** %8, align 8
  %110 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, %struct.xfs_buf_ops* @xfs_sb_buf_ops, %struct.xfs_buf_ops* @xfs_sb_quiet_buf_ops
  store %struct.xfs_buf_ops* %115, %struct.xfs_buf_ops** %11, align 8
  br label %36

116:                                              ; preds = %103
  %117 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %118 = call i32 @xfs_reinit_percpu_counters(%struct.xfs_mount* %117)
  %119 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %120 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %119, i32 0, i32 0
  store %struct.xfs_buf_ops* @xfs_sb_buf_ops, %struct.xfs_buf_ops** %120, align 8
  %121 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %122 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %123 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %122, i32 0, i32 0
  store %struct.xfs_buf* %121, %struct.xfs_buf** %123, align 8
  %124 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %125 = call i32 @xfs_buf_unlock(%struct.xfs_buf* %124)
  store i32 0, i32* %3, align 4
  br label %130

126:                                              ; preds = %100, %81
  %127 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %128 = call i32 @xfs_buf_relse(%struct.xfs_buf* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %116, %63
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_getsize_buftarg(i32*) #1

declare dso_local i32 @xfs_buf_read_uncached(i32*, i32, i32, i32, %struct.xfs_buf**, %struct.xfs_buf_ops*) #1

declare dso_local i32 @BTOBB(i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, ...) #1

declare dso_local i32 @xfs_sb_from_disk(%struct.xfs_sb*, i32) #1

declare dso_local i32 @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_reinit_percpu_counters(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_buf_unlock(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

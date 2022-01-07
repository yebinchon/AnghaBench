; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader_repair.c_xrep_superblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader_repair.c_xrep_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.TYPE_2__*, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XFS_BLFT_SB_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_superblock(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 2
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %4, align 8
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %23 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @xfs_sb_get_secondary(%struct.xfs_mount* %22, i32 %25, i64 %26, %struct.xfs_buf** %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @BBTOB(i32 %36)
  %38 = call i32 @xfs_buf_zero(%struct.xfs_buf* %33, i32 0, i64 %37)
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %40 = call i32 @XFS_BUF_TO_SBP(%struct.xfs_buf* %39)
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %41, i32 0, i32 0
  %43 = call i32 @xfs_sb_to_disk(i32 %40, i32* %42)
  %44 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %48 = load i32, i32* @XFS_BLFT_SB_BUF, align 4
  %49 = call i32 @xfs_trans_buf_set_type(i32 %46, %struct.xfs_buf* %47, i32 %48)
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %55 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @BBTOB(i32 %56)
  %58 = sub nsw i64 %57, 1
  %59 = call i32 @xfs_trans_log_buf(i32 %52, %struct.xfs_buf* %53, i32 0, i64 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %32, %30, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @xfs_sb_get_secondary(%struct.xfs_mount*, i32, i64, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_buf_zero(%struct.xfs_buf*, i32, i64) #1

declare dso_local i64 @BBTOB(i32) #1

declare dso_local i32 @xfs_sb_to_disk(i32, i32*) #1

declare dso_local i32 @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

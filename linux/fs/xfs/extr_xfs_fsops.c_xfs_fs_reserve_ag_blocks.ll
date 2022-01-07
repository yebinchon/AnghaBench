; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_fs_reserve_ag_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_fs_reserve_ag_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_perag = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error %d reserving per-AG metadata reserve pool.\00", align 1
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_reserve_ag_blocks(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xfs_perag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %17, i64 %18)
  store %struct.xfs_perag* %19, %struct.xfs_perag** %4, align 8
  %20 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %21 = call i32 @xfs_ag_resv_init(%struct.xfs_perag* %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %23 = call i32 @xfs_perag_put(%struct.xfs_perag* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %26, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @xfs_warn(%struct.xfs_mount* %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %48 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %49 = call i32 @xfs_force_shutdown(%struct.xfs_mount* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38, %35
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_ag_resv_init(%struct.xfs_perag*, i32*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i32) #1

declare dso_local i32 @xfs_force_shutdown(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

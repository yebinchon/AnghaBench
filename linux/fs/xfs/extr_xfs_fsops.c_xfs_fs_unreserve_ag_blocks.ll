; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_fs_unreserve_ag_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_fs_unreserve_ag_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_perag = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Error %d freeing per-AG metadata reserve pool.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_unreserve_ag_blocks(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xfs_perag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %15, i64 %16)
  store %struct.xfs_perag* %17, %struct.xfs_perag** %4, align 8
  %18 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %19 = call i32 @xfs_ag_resv_free(%struct.xfs_perag* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %21 = call i32 @xfs_perag_put(%struct.xfs_perag* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %24, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %7

33:                                               ; preds = %7
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @xfs_warn(%struct.xfs_mount* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_ag_resv_free(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

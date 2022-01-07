; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_end_cow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_end_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_end_cow(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @trace_xfs_reflink_end_cow(%struct.xfs_inode* %10, i64 %11, i64 %12)
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @XFS_B_TO_FSBT(i32 %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @XFS_B_TO_FSB(i32 %21, i64 %24)
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %36, %3
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @xfs_reflink_end_cow_extent(%struct.xfs_inode* %37, i64 %38, i64* %8)
  store i32 %39, i32* %9, align 4
  br label %26

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @_RET_IP_, align 4
  %47 = call i32 @trace_xfs_reflink_end_cow_error(%struct.xfs_inode* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @trace_xfs_reflink_end_cow(%struct.xfs_inode*, i64, i64) #1

declare dso_local i64 @XFS_B_TO_FSBT(i32, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(i32, i64) #1

declare dso_local i32 @xfs_reflink_end_cow_extent(%struct.xfs_inode*, i64, i64*) #1

declare dso_local i32 @trace_xfs_reflink_end_cow_error(%struct.xfs_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

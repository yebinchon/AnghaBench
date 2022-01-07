; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_zero_file_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_zero_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFS_BMAPI_PREALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_zero_file_space(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 0
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  store %struct.xfs_mount* %13, %struct.xfs_mount** %8, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %15 = call i32 @trace_xfs_zero_file_space(%struct.xfs_inode* %14)
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @xfs_free_file_space(%struct.xfs_inode* %21, i64 %22, i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %29 = call i64 @xfs_is_always_cow_inode(%struct.xfs_inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %27
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @round_down(i64 %35, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @round_up(i64 %40, i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @round_down(i64 %43, i32 %44)
  %46 = sub nsw i64 %42, %45
  %47 = load i32, i32* @XFS_BMAPI_PREALLOC, align 4
  %48 = call i32 @xfs_alloc_file_space(%struct.xfs_inode* %34, i64 %37, i64 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %33, %31
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @trace_xfs_zero_file_space(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_free_file_space(%struct.xfs_inode*, i64, i64) #1

declare dso_local i64 @xfs_is_always_cow_inode(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_alloc_file_space(%struct.xfs_inode*, i64, i64, i32) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

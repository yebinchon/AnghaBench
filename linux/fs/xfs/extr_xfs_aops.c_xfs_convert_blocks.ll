; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_convert_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_convert_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_writepage_ctx = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.xfs_inode = type { i32 }

@XFS_COW_FORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_writepage_ctx*, %struct.xfs_inode*, i64)* @xfs_convert_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_convert_blocks(%struct.xfs_writepage_ctx* %0, %struct.xfs_inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_writepage_ctx*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_writepage_ctx* %0, %struct.xfs_writepage_ctx** %5, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %36, %3
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %11 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %15, i32 0, i32 3
  %17 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFS_COW_FORK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %23, i32 0, i32 2
  br label %28

25:                                               ; preds = %9
  %26 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %26, i32 0, i32 1
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32* [ %24, %22 ], [ %27, %25 ]
  %30 = call i32 @xfs_bmapi_convert_delalloc(%struct.xfs_inode* %10, i64 %13, i64 %14, %struct.TYPE_2__* %16, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %49

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xfs_writepage_ctx*, %struct.xfs_writepage_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_writepage_ctx, %struct.xfs_writepage_ctx* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = load i64, i64* %7, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %9, label %48

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @xfs_bmapi_convert_delalloc(%struct.xfs_inode*, i64, i64, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

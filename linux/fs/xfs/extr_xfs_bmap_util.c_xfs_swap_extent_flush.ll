; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_swap_extent_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_swap_extent_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*)* @xfs_swap_extent_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_swap_extent_flush(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %6 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @filemap_write_and_wait(%struct.TYPE_5__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %15)
  %17 = call i32 @truncate_pagecache_range(%struct.TYPE_4__* %16, i32 0, i32 -1)
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %19 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @filemap_write_and_wait(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_4__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @truncate_pagecache_range(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

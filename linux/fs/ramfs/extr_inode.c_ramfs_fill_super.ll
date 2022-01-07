; ModuleID = '/home/carl/AnghaBench/linux/fs/ramfs/extr_inode.c_ramfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ramfs/extr_inode.c_ramfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32, i32, %struct.ramfs_fs_info* }
%struct.ramfs_fs_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32 }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RAMFS_MAGIC = common dso_local global i32 0, align 4
@ramfs_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @ramfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.ramfs_fs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 7
  %10 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %9, align 8
  store %struct.ramfs_fs_info* %10, %struct.ramfs_fs_info** %6, align 8
  %11 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @RAMFS_MAGIC, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 2
  store i32* @ramfs_ops, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %6, align 8
  %30 = getelementptr inbounds %struct.ramfs_fs_info, %struct.ramfs_fs_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %28, %32
  %34 = call %struct.inode* @ramfs_get_inode(%struct.super_block* %27, i32* null, i32 %33, i32 0)
  store %struct.inode* %34, %struct.inode** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @d_make_root(%struct.inode* %35)
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.inode* @ramfs_get_inode(%struct.super_block*, i32*, i32, i32) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

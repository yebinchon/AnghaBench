; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_do_collapse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_do_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @f2fs_do_collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_do_collapse(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %12)
  store %struct.f2fs_sb_info* %13, %struct.f2fs_sb_info** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @i_size_read(%struct.inode* %14)
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %27 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %26, i32 1)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @WRITE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @down_write(i32* %33)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @down_write(i32* %37)
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %40 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32 @f2fs_drop_extent_tree(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @truncate_pagecache(%struct.inode* %43, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @__exchange_data_block(%struct.inode* %46, %struct.inode* %47, i32 %48, i32 %49, i32 %52, i32 1)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %55 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %54)
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @up_write(i32* %58)
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @WRITE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @up_write(i32* %65)
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_drop_extent_tree(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @__exchange_data_block(%struct.inode*, %struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

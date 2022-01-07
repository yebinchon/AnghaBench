; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, i64)* @f2fs_write_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_write_failed(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.address_space*, %struct.address_space** %3, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i64 @i_size_read(%struct.inode* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i32 @f2fs_verity_in_progress(%struct.inode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %15
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @WRITE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @down_write(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @truncate_pagecache(%struct.inode* %31, i64 %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @IS_NOQUOTA(%struct.inode* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %19
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @f2fs_truncate_blocks(%struct.inode* %38, i64 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %19
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @up_write(i32* %44)
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @WRITE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @up_write(i32* %51)
  br label %53

53:                                               ; preds = %41, %15, %2
  ret void
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

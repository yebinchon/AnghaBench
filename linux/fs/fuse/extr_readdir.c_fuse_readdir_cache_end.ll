; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir_cache_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir_cache_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fuse_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i64)* @fuse_readdir_cache_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_readdir_cache_end(%struct.file* %0, i64 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fuse_inode*, align 8
  %6 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call i32 @file_inode(%struct.file* %7)
  %9 = call %struct.fuse_inode* @get_fuse_inode(i32 %8)
  store %struct.fuse_inode* %9, %struct.fuse_inode** %5, align 8
  %10 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %11 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %27 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %30 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i64 @ALIGN(i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %36 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @truncate_inode_pages(i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %25, %20
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @truncate_inode_pages(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@UNCACHED = common dso_local global i32 0, align 4
@FOPEN_CACHE_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  store %struct.fuse_file* %11, %struct.fuse_file** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @is_bad_inode(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %22 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* @UNCACHED, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %27 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FOPEN_CACHE_DIR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %35 = call i32 @fuse_readdir_cached(%struct.file* %33, %struct.dir_context* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %20
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @UNCACHED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %43 = call i32 @fuse_readdir_uncached(%struct.file* %41, %struct.dir_context* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %46 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fuse_readdir_cached(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @fuse_readdir_uncached(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

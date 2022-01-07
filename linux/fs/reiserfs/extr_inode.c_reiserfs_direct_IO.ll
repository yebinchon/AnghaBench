; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@reiserfs_get_blocks_direct_io = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @reiserfs_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reiserfs_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %5, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %24 = load i32, i32* @reiserfs_get_blocks_direct_io, align 4
  %25 = call i64 @blockdev_direct_IO(%struct.kiocb* %21, %struct.inode* %22, %struct.iov_iter* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %27 = call i64 @iov_iter_rw(%struct.iov_iter* %26)
  %28 = load i64, i64* @WRITE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = icmp slt i64 %31, 0
  br label %33

33:                                               ; preds = %30, %2
  %34 = phi i1 [ false, %2 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i64 @i_size_read(%struct.inode* %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %42 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @inode_newsize_ok(%struct.inode* %50, i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @truncate_setsize(%struct.inode* %55, i64 %56)
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @reiserfs_vfs_truncate_file(%struct.inode* %58)
  br label %60

60:                                               ; preds = %54, %49, %38
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i64, i64* %8, align 8
  ret i64 %62
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @blockdev_direct_IO(%struct.kiocb*, %struct.inode*, %struct.iov_iter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @reiserfs_vfs_truncate_file(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

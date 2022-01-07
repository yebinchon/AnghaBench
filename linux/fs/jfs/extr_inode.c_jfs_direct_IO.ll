; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@jfs_get_block = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @jfs_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jfs_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %5, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %6, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %7, align 8
  %23 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %24 = call i64 @iov_iter_count(%struct.iov_iter* %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %28 = load i32, i32* @jfs_get_block, align 4
  %29 = call i64 @blockdev_direct_IO(%struct.kiocb* %25, %struct.inode* %26, %struct.iov_iter* %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %31 = call i64 @iov_iter_rw(%struct.iov_iter* %30)
  %32 = load i64, i64* @WRITE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %35, 0
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i1 [ false, %2 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i64 @i_size_read(%struct.inode* %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %46 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.address_space*, %struct.address_space** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @jfs_write_failed(%struct.address_space* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %42
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i64, i64* %9, align 8
  ret i64 %59
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @blockdev_direct_IO(%struct.kiocb*, %struct.inode*, %struct.iov_iter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @jfs_write_failed(%struct.address_space*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

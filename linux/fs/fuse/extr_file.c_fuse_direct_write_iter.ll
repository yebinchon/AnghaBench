; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_direct_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_direct_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_io_priv = type { i32 }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@FUSE_DIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @fuse_direct_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_direct_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fuse_io_priv, align 4
  %7 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @file_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %13 = call i32 @FUSE_IO_PRIV_SYNC(%struct.kiocb* %12)
  %14 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call i32 @inode_lock(%struct.inode* %15)
  %17 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %19 = call i64 @generic_write_checks(%struct.kiocb* %17, %struct.iov_iter* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %24 = call i32 @is_sync_kiocb(%struct.kiocb* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %28 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IOCB_DIRECT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %35 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %36 = call i64 @fuse_direct_IO(%struct.kiocb* %34, %struct.iov_iter* %35)
  store i64 %36, i64* %7, align 8
  br label %43

37:                                               ; preds = %26, %22
  %38 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %39 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %40 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %39, i32 0, i32 1
  %41 = load i32, i32* @FUSE_DIO_WRITE, align 4
  %42 = call i64 @fuse_direct_io(%struct.fuse_io_priv* %6, %struct.iov_iter* %38, i32* %40, i32 %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %37, %33
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @fuse_invalidate_attr(%struct.inode* %45)
  %47 = load i64, i64* %7, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %52 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fuse_write_update_size(%struct.inode* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @inode_unlock(%struct.inode* %56)
  %58 = load i64, i64* %7, align 8
  ret i64 %58
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @FUSE_IO_PRIV_SYNC(%struct.kiocb*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @fuse_direct_IO(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @fuse_direct_io(%struct.fuse_io_priv*, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.iov_iter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FOPEN_DIRECT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @fuse_file_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fuse_file*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 0
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  store %struct.fuse_file* %13, %struct.fuse_file** %7, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = call i32 @file_inode(%struct.file* %14)
  %16 = call i64 @is_bad_inode(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.fuse_file*, %struct.fuse_file** %7, align 8
  %23 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FOPEN_DIRECT_IO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %31 = call i32 @fuse_cache_read_iter(%struct.kiocb* %29, %struct.iov_iter* %30)
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %34 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %35 = call i32 @fuse_direct_read_iter(%struct.kiocb* %33, %struct.iov_iter* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @is_bad_inode(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @fuse_cache_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @fuse_direct_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@udf_get_block = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @udf_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @udf_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 1
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %5, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %6, align 8
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %24 = load i32, i32* @udf_get_block, align 4
  %25 = call i64 @blockdev_direct_IO(%struct.kiocb* %21, %struct.inode* %22, %struct.iov_iter* %23, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %30 = call i64 @iov_iter_rw(%struct.iov_iter* %29)
  %31 = load i64, i64* @WRITE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ false, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.address_space*, %struct.address_space** %6, align 8
  %40 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %41 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @udf_write_failed(%struct.address_space* %39, i64 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i64, i64* %9, align 8
  ret i64 %47
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @blockdev_direct_IO(%struct.kiocb*, %struct.inode*, %struct.iov_iter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @udf_write_failed(%struct.address_space*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

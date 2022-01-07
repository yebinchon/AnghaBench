; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_2__ = type { i64 }

@WRITE = common dso_local global i64 0, align 8
@fat_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @fat_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fat_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %6, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %7, align 8
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %8, align 8
  %22 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %23 = call i64 @iov_iter_count(%struct.iov_iter* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %25 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %28 = call i64 @iov_iter_rw(%struct.iov_iter* %27)
  %29 = load i64, i64* @WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %64

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %47 = load i32, i32* @fat_get_block, align 4
  %48 = call i64 @blockdev_direct_IO(%struct.kiocb* %44, %struct.inode* %45, %struct.iov_iter* %46, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %53 = call i64 @iov_iter_rw(%struct.iov_iter* %52)
  %54 = load i64, i64* @WRITE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.address_space*, %struct.address_space** %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @fat_write_failed(%struct.address_space* %57, i64 %60)
  br label %62

62:                                               ; preds = %56, %51, %43
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %62, %41
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_I(%struct.inode*) #1

declare dso_local i64 @blockdev_direct_IO(%struct.kiocb*, %struct.inode*, %struct.iov_iter*, i32) #1

declare dso_local i32 @fat_write_failed(%struct.address_space*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

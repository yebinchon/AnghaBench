; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_check_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_check_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.iov_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iov_iter*, i64)* @check_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_direct_IO(%struct.inode* %0, %struct.iov_iter* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.block_device*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @READ_ONCE(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %23 = call i64 @iov_iter_alignment(%struct.iov_iter* %22)
  %24 = or i64 %21, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.block_device*, %struct.block_device** %28, align 8
  store %struct.block_device* %29, %struct.block_device** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load %struct.block_device*, %struct.block_device** %12, align 8
  %37 = icmp ne %struct.block_device* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.block_device*, %struct.block_device** %12, align 8
  %40 = call i32 @bdev_logical_block_size(%struct.block_device* %39)
  %41 = call i32 @blksize_bits(i32 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = and i64 %46, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %56

55:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %54, %51
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @iov_iter_alignment(%struct.iov_iter*) #1

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

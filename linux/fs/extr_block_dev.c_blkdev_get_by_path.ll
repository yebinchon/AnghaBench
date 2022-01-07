; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_get_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_get_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @blkdev_get_by_path(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.block_device* @lookup_bdev(i8* %10)
  store %struct.block_device* %11, %struct.block_device** %8, align 8
  %12 = load %struct.block_device*, %struct.block_device** %8, align 8
  %13 = call i64 @IS_ERR(%struct.block_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.block_device*, %struct.block_device** %8, align 8
  store %struct.block_device* %16, %struct.block_device** %4, align 8
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.block_device*, %struct.block_device** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @blkdev_get(%struct.block_device* %18, i32 %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.block_device* @ERR_PTR(i32 %25)
  store %struct.block_device* %26, %struct.block_device** %4, align 8
  br label %45

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FMODE_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.block_device*, %struct.block_device** %8, align 8
  %34 = call i64 @bdev_read_only(%struct.block_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.block_device*, %struct.block_device** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @blkdev_put(%struct.block_device* %37, i32 %38)
  %40 = load i32, i32* @EACCES, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.block_device* @ERR_PTR(i32 %41)
  store %struct.block_device* %42, %struct.block_device** %4, align 8
  br label %45

43:                                               ; preds = %32, %27
  %44 = load %struct.block_device*, %struct.block_device** %8, align 8
  store %struct.block_device* %44, %struct.block_device** %4, align 8
  br label %45

45:                                               ; preds = %43, %36, %24, %15
  %46 = load %struct.block_device*, %struct.block_device** %4, align 8
  ret %struct.block_device* %46
}

declare dso_local %struct.block_device* @lookup_bdev(i8*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32, i8*) #1

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local i64 @bdev_read_only(%struct.block_device*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

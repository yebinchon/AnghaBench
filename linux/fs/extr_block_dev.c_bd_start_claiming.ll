; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_start_claiming.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_start_claiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i8* }
%struct.gendisk = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bdev_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @bd_start_claiming(%struct.block_device* %0, i8* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.block_device*, %struct.block_device** %4, align 8
  %12 = call %struct.gendisk* @bdev_get_gendisk(%struct.block_device* %11, i32* %8)
  store %struct.gendisk* %12, %struct.gendisk** %6, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %14 = icmp ne %struct.gendisk* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.block_device* @ERR_PTR(i32 %17)
  store %struct.block_device* %18, %struct.block_device** %3, align 8
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %24 = call %struct.block_device* @bdget_disk(%struct.gendisk* %23, i32 0)
  store %struct.block_device* %24, %struct.block_device** %7, align 8
  br label %28

25:                                               ; preds = %19
  %26 = load %struct.block_device*, %struct.block_device** %4, align 8
  %27 = call %struct.block_device* @bdgrab(%struct.block_device* %26)
  store %struct.block_device* %27, %struct.block_device** %7, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %30 = call i32 @put_disk_and_module(%struct.gendisk* %29)
  %31 = load %struct.block_device*, %struct.block_device** %7, align 8
  %32 = icmp ne %struct.block_device* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.block_device* @ERR_PTR(i32 %35)
  store %struct.block_device* %36, %struct.block_device** %3, align 8
  br label %57

37:                                               ; preds = %28
  %38 = call i32 @spin_lock(i32* @bdev_lock)
  %39 = load %struct.block_device*, %struct.block_device** %4, align 8
  %40 = load %struct.block_device*, %struct.block_device** %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @bd_prepare_to_claim(%struct.block_device* %39, %struct.block_device* %40, i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.block_device*, %struct.block_device** %7, align 8
  %48 = getelementptr inbounds %struct.block_device, %struct.block_device* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = call i32 @spin_unlock(i32* @bdev_lock)
  %50 = load %struct.block_device*, %struct.block_device** %7, align 8
  store %struct.block_device* %50, %struct.block_device** %3, align 8
  br label %57

51:                                               ; preds = %37
  %52 = call i32 @spin_unlock(i32* @bdev_lock)
  %53 = load %struct.block_device*, %struct.block_device** %7, align 8
  %54 = call i32 @bdput(%struct.block_device* %53)
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.block_device* @ERR_PTR(i32 %55)
  store %struct.block_device* %56, %struct.block_device** %3, align 8
  br label %57

57:                                               ; preds = %51, %45, %33, %15
  %58 = load %struct.block_device*, %struct.block_device** %3, align 8
  ret %struct.block_device* %58
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.gendisk* @bdev_get_gendisk(%struct.block_device*, i32*) #1

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local %struct.block_device* @bdgrab(%struct.block_device*) #1

declare dso_local i32 @put_disk_and_module(%struct.gendisk*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bd_prepare_to_claim(%struct.block_device*, %struct.block_device*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

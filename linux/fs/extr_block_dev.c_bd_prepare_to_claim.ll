; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_prepare_to_claim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_prepare_to_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@bdev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.block_device*, i8*)* @bd_prepare_to_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_prepare_to_claim(%struct.block_device* %0, %struct.block_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %9

9:                                                ; preds = %23, %3
  %10 = load %struct.block_device*, %struct.block_device** %5, align 8
  %11 = load %struct.block_device*, %struct.block_device** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @bd_may_claim(%struct.block_device* %10, %struct.block_device* %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %9
  %19 = load %struct.block_device*, %struct.block_device** %6, align 8
  %20 = getelementptr inbounds %struct.block_device, %struct.block_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.block_device*, %struct.block_device** %6, align 8
  %25 = getelementptr inbounds %struct.block_device, %struct.block_device* %24, i32 0, i32 0
  %26 = call i32* @bit_waitqueue(i64* %25, i32 0)
  store i32* %26, i32** %8, align 8
  %27 = load i32, i32* @wait, align 4
  %28 = call i32 @DEFINE_WAIT(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %31 = call i32 @prepare_to_wait(i32* %29, i32* @wait, i32 %30)
  %32 = call i32 @spin_unlock(i32* @bdev_lock)
  %33 = call i32 (...) @schedule()
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @finish_wait(i32* %34, i32* @wait)
  %36 = call i32 @spin_lock(i32* @bdev_lock)
  br label %9

37:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @bd_may_claim(%struct.block_device*, %struct.block_device*, i8*) #1

declare dso_local i32* @bit_waitqueue(i64*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

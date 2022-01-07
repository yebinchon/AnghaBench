; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_get_by_dev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_get_by_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @blkdev_get_by_dev(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.block_device* @bdget(i32 %10)
  store %struct.block_device* %11, %struct.block_device** %8, align 8
  %12 = load %struct.block_device*, %struct.block_device** %8, align 8
  %13 = icmp ne %struct.block_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.block_device* @ERR_PTR(i32 %16)
  store %struct.block_device* %17, %struct.block_device** %4, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.block_device*, %struct.block_device** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @blkdev_get(%struct.block_device* %19, i32 %20, i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.block_device* @ERR_PTR(i32 %26)
  store %struct.block_device* %27, %struct.block_device** %4, align 8
  br label %30

28:                                               ; preds = %18
  %29 = load %struct.block_device*, %struct.block_device** %8, align 8
  store %struct.block_device* %29, %struct.block_device** %4, align 8
  br label %30

30:                                               ; preds = %28, %25, %14
  %31 = load %struct.block_device*, %struct.block_device** %4, align 8
  ret %struct.block_device* %31
}

declare dso_local %struct.block_device* @bdget(i32) #1

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

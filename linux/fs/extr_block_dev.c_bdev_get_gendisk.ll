; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_get_gendisk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_get_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.block_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gendisk* (%struct.block_device*, i32*)* @bdev_get_gendisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gendisk* @bdev_get_gendisk(%struct.block_device* %0, i32* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.gendisk* @get_gendisk(i32 %9, i32* %10)
  store %struct.gendisk* %11, %struct.gendisk** %6, align 8
  %12 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %13 = icmp ne %struct.gendisk* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.block_device*, %struct.block_device** %4, align 8
  %17 = getelementptr inbounds %struct.block_device, %struct.block_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @inode_unhashed(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %23 = call i32 @put_disk_and_module(%struct.gendisk* %22)
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  br label %26

24:                                               ; preds = %15
  %25 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  store %struct.gendisk* %25, %struct.gendisk** %3, align 8
  br label %26

26:                                               ; preds = %24, %21, %14
  %27 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  ret %struct.gendisk* %27
}

declare dso_local %struct.gendisk* @get_gendisk(i32, i32*) #1

declare dso_local i64 @inode_unhashed(i32) #1

declare dso_local i32 @put_disk_and_module(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_set_init_blocksize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_set_init_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_device*)* @set_init_blocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_init_blocksize(%struct.block_device* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %2, align 8
  %5 = load %struct.block_device*, %struct.block_device** %2, align 8
  %6 = call i32 @bdev_logical_block_size(%struct.block_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.block_device*, %struct.block_device** %2, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @i_size_read(%struct.TYPE_2__* %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %11

24:                                               ; preds = %20, %11
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.block_device*, %struct.block_device** %2, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @blksize_bits(i32 %28)
  %30 = load %struct.block_device*, %struct.block_device** %2, align 8
  %31 = getelementptr inbounds %struct.block_device, %struct.block_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  ret void
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @i_size_read(%struct.TYPE_2__*) #1

declare dso_local i32 @blksize_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

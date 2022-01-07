; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.block_device_operations* }
%struct.block_device_operations = type { i32 (%struct.block_device.0*, i64, %struct.page*, i32)* }
%struct.block_device.0 = type opaque
%struct.page = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdev_read_page(%struct.block_device* %0, i64 %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.block_device_operations*, align 8
  %9 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %10 = load %struct.block_device*, %struct.block_device** %5, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.block_device_operations*, %struct.block_device_operations** %13, align 8
  store %struct.block_device_operations* %14, %struct.block_device_operations** %8, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.block_device_operations*, %struct.block_device_operations** %8, align 8
  %18 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %17, i32 0, i32 0
  %19 = load i32 (%struct.block_device.0*, i64, %struct.page*, i32)*, i32 (%struct.block_device.0*, i64, %struct.page*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.block_device.0*, i64, %struct.page*, i32)* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.block_device*, %struct.block_device** %5, align 8
  %23 = call i64 @bdev_get_integrity(%struct.block_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %21
  %28 = load %struct.block_device*, %struct.block_device** %5, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @blk_queue_enter(i32 %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %54

36:                                               ; preds = %27
  %37 = load %struct.block_device_operations*, %struct.block_device_operations** %8, align 8
  %38 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %37, i32 0, i32 0
  %39 = load i32 (%struct.block_device.0*, i64, %struct.page*, i32)*, i32 (%struct.block_device.0*, i64, %struct.page*, i32)** %38, align 8
  %40 = load %struct.block_device*, %struct.block_device** %5, align 8
  %41 = bitcast %struct.block_device* %40 to %struct.block_device.0*
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.block_device*, %struct.block_device** %5, align 8
  %44 = call i64 @get_start_sect(%struct.block_device* %43)
  %45 = add nsw i64 %42, %44
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = load i32, i32* @REQ_OP_READ, align 4
  %48 = call i32 %39(%struct.block_device.0* %41, i64 %45, %struct.page* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.block_device*, %struct.block_device** %5, align 8
  %50 = getelementptr inbounds %struct.block_device, %struct.block_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @blk_queue_exit(i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %36, %34, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @bdev_get_integrity(%struct.block_device*) #1

declare dso_local i32 @blk_queue_enter(i32, i32) #1

declare dso_local i64 @get_start_sect(%struct.block_device*) #1

declare dso_local i32 @blk_queue_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

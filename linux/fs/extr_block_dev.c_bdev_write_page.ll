; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.block_device_operations* }
%struct.block_device_operations = type { i32 (%struct.block_device.0*, i64, %struct.page*, i32)* }
%struct.block_device.0 = type opaque
%struct.page = type { i32 }
%struct.writeback_control = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdev_write_page(%struct.block_device* %0, i64 %1, %struct.page* %2, %struct.writeback_control* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.writeback_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.block_device_operations*, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.writeback_control* %3, %struct.writeback_control** %9, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.block_device_operations*, %struct.block_device_operations** %15, align 8
  store %struct.block_device_operations* %16, %struct.block_device_operations** %11, align 8
  %17 = load %struct.block_device_operations*, %struct.block_device_operations** %11, align 8
  %18 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %17, i32 0, i32 0
  %19 = load i32 (%struct.block_device.0*, i64, %struct.page*, i32)*, i32 (%struct.block_device.0*, i64, %struct.page*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.block_device.0*, i64, %struct.page*, i32)* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.block_device*, %struct.block_device** %6, align 8
  %23 = call i64 @bdev_get_integrity(%struct.block_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.block_device*, %struct.block_device** %6, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @blk_queue_enter(i32 %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %28
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = call i32 @set_page_writeback(%struct.page* %38)
  %40 = load %struct.block_device_operations*, %struct.block_device_operations** %11, align 8
  %41 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %40, i32 0, i32 0
  %42 = load i32 (%struct.block_device.0*, i64, %struct.page*, i32)*, i32 (%struct.block_device.0*, i64, %struct.page*, i32)** %41, align 8
  %43 = load %struct.block_device*, %struct.block_device** %6, align 8
  %44 = bitcast %struct.block_device* %43 to %struct.block_device.0*
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.block_device*, %struct.block_device** %6, align 8
  %47 = call i64 @get_start_sect(%struct.block_device* %46)
  %48 = add nsw i64 %45, %47
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = load i32, i32* @REQ_OP_WRITE, align 4
  %51 = call i32 %42(%struct.block_device.0* %44, i64 %48, %struct.page* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = call i32 @end_page_writeback(%struct.page* %55)
  br label %62

57:                                               ; preds = %37
  %58 = load %struct.page*, %struct.page** %8, align 8
  %59 = call i32 @clean_page_buffers(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %8, align 8
  %61 = call i32 @unlock_page(%struct.page* %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.block_device*, %struct.block_device** %6, align 8
  %64 = getelementptr inbounds %struct.block_device, %struct.block_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @blk_queue_exit(i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %35, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @bdev_get_integrity(%struct.block_device*) #1

declare dso_local i32 @blk_queue_enter(i32, i32) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @get_start_sect(%struct.block_device*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @clean_page_buffers(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @blk_queue_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

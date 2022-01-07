; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_check_disk_change.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_check_disk_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { %struct.block_device_operations* }
%struct.block_device_operations = type { i32 (%struct.gendisk*)* }

@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@DISK_EVENT_EJECT_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_disk_change(%struct.block_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.block_device_operations*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  store %struct.gendisk* %9, %struct.gendisk** %4, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load %struct.block_device_operations*, %struct.block_device_operations** %11, align 8
  store %struct.block_device_operations* %12, %struct.block_device_operations** %5, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %14 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %15 = load i32, i32* @DISK_EVENT_EJECT_REQUEST, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @disk_clear_events(%struct.gendisk* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.block_device*, %struct.block_device** %3, align 8
  %25 = call i32 @flush_disk(%struct.block_device* %24, i32 1)
  %26 = load %struct.block_device_operations*, %struct.block_device_operations** %5, align 8
  %27 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %26, i32 0, i32 0
  %28 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %27, align 8
  %29 = icmp ne i32 (%struct.gendisk*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.block_device_operations*, %struct.block_device_operations** %5, align 8
  %32 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %31, i32 0, i32 0
  %33 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %32, align 8
  %34 = load %struct.block_device*, %struct.block_device** %3, align 8
  %35 = getelementptr inbounds %struct.block_device, %struct.block_device* %34, i32 0, i32 0
  %36 = load %struct.gendisk*, %struct.gendisk** %35, align 8
  %37 = call i32 %33(%struct.gendisk* %36)
  br label %38

38:                                               ; preds = %30, %23
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @disk_clear_events(%struct.gendisk*, i32) #1

declare dso_local i32 @flush_disk(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

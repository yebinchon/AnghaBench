; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtio_fs*, %struct.TYPE_2__* }
%struct.virtio_fs = type { i32 }
%struct.TYPE_2__ = type { {}* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtio_fs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_fs_probe(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_fs*, align 8
  %5 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.virtio_fs* @kzalloc(i32 4, i32 %6)
  store %struct.virtio_fs* %7, %struct.virtio_fs** %4, align 8
  %8 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %9 = icmp ne %struct.virtio_fs* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %15 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %14, i32 0, i32 0
  %16 = call i32 @kref_init(i32* %15)
  %17 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %18 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %18, i32 0, i32 0
  store %struct.virtio_fs* %17, %struct.virtio_fs** %19, align 8
  %20 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %21 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %22 = call i32 @virtio_fs_read_tag(%struct.virtio_device* %20, %struct.virtio_fs* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %54

26:                                               ; preds = %13
  %27 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %28 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %29 = call i32 @virtio_fs_setup_vqs(%struct.virtio_device* %27, %struct.virtio_fs* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %54

33:                                               ; preds = %26
  %34 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %35 = call i32 @virtio_device_ready(%struct.virtio_device* %34)
  %36 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %37 = call i32 @virtio_fs_add_instance(%struct.virtio_fs* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %60

42:                                               ; preds = %40
  %43 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %44 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.virtio_device*)**
  %48 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %47, align 8
  %49 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %50 = call i32 %48(%struct.virtio_device* %49)
  %51 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %52 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %53 = call i32 @virtio_fs_cleanup_vqs(%struct.virtio_device* %51, %struct.virtio_fs* %52)
  br label %54

54:                                               ; preds = %42, %32, %25
  %55 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %56 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %55, i32 0, i32 0
  store %struct.virtio_fs* null, %struct.virtio_fs** %56, align 8
  %57 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %58 = call i32 @kfree(%struct.virtio_fs* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %41, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.virtio_fs* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @virtio_fs_read_tag(%struct.virtio_device*, %struct.virtio_fs*) #1

declare dso_local i32 @virtio_fs_setup_vqs(%struct.virtio_device*, %struct.virtio_fs*) #1

declare dso_local i32 @virtio_device_ready(%struct.virtio_device*) #1

declare dso_local i32 @virtio_fs_add_instance(%struct.virtio_fs*) #1

declare dso_local i32 @virtio_fs_cleanup_vqs(%struct.virtio_device*, %struct.virtio_fs*) #1

declare dso_local i32 @kfree(%struct.virtio_fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

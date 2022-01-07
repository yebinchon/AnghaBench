; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_mount_tag_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_mount_tag_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.virtio_chan = type { i32 }
%struct.virtio_device = type { %struct.virtio_chan* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @p9_mount_tag_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_mount_tag_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.virtio_chan*, align 8
  %8 = alloca %struct.virtio_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.virtio_device* @dev_to_virtio(%struct.device* %10)
  store %struct.virtio_device* %11, %struct.virtio_device** %8, align 8
  %12 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %13 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %12, i32 0, i32 0
  %14 = load %struct.virtio_chan*, %struct.virtio_chan** %13, align 8
  store %struct.virtio_chan* %14, %struct.virtio_chan** %7, align 8
  %15 = load %struct.virtio_chan*, %struct.virtio_chan** %7, align 8
  %16 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlen(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.virtio_chan*, %struct.virtio_chan** %7, align 8
  %21 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @memcpy(i8* %19, i32 %22, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  ret i32 %27
}

declare dso_local %struct.virtio_device* @dev_to_virtio(%struct.device*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

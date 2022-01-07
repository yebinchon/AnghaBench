; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_get_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_device_info = type { i32, i32, i32 }

@VFIO_DEVICE_FLAGS_PCI = common dso_local global i32 0, align 4
@MBOCHS_NUM_REGIONS = common dso_local global i32 0, align 4
@VFIO_PCI_NUM_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, %struct.vfio_device_info*)* @mbochs_get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbochs_get_device_info(%struct.mdev_device* %0, %struct.vfio_device_info* %1) #0 {
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca %struct.vfio_device_info*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  store %struct.vfio_device_info* %1, %struct.vfio_device_info** %4, align 8
  %5 = load i32, i32* @VFIO_DEVICE_FLAGS_PCI, align 4
  %6 = load %struct.vfio_device_info*, %struct.vfio_device_info** %4, align 8
  %7 = getelementptr inbounds %struct.vfio_device_info, %struct.vfio_device_info* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @MBOCHS_NUM_REGIONS, align 4
  %9 = load %struct.vfio_device_info*, %struct.vfio_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.vfio_device_info, %struct.vfio_device_info* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @VFIO_PCI_NUM_IRQS, align 4
  %12 = load %struct.vfio_device_info*, %struct.vfio_device_info** %4, align 8
  %13 = getelementptr inbounds %struct.vfio_device_info, %struct.vfio_device_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

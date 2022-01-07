; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mtty_get_irq_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mtty_get_irq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_irq_info = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_EVENTFD = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_MASKABLE = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_AUTOMASKED = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_NORESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, %struct.vfio_irq_info*)* @mtty_get_irq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtty_get_irq_info(%struct.mdev_device* %0, %struct.vfio_irq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca %struct.vfio_irq_info*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %4, align 8
  store %struct.vfio_irq_info* %1, %struct.vfio_irq_info** %5, align 8
  %6 = load %struct.vfio_irq_info*, %struct.vfio_irq_info** %5, align 8
  %7 = getelementptr inbounds %struct.vfio_irq_info, %struct.vfio_irq_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2, %2
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %9
  %14 = load i32, i32* @VFIO_IRQ_INFO_EVENTFD, align 4
  %15 = load %struct.vfio_irq_info*, %struct.vfio_irq_info** %5, align 8
  %16 = getelementptr inbounds %struct.vfio_irq_info, %struct.vfio_irq_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vfio_irq_info*, %struct.vfio_irq_info** %5, align 8
  %18 = getelementptr inbounds %struct.vfio_irq_info, %struct.vfio_irq_info* %17, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = load %struct.vfio_irq_info*, %struct.vfio_irq_info** %5, align 8
  %20 = getelementptr inbounds %struct.vfio_irq_info, %struct.vfio_irq_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load i32, i32* @VFIO_IRQ_INFO_MASKABLE, align 4
  %25 = load i32, i32* @VFIO_IRQ_INFO_AUTOMASKED, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.vfio_irq_info*, %struct.vfio_irq_info** %5, align 8
  %28 = getelementptr inbounds %struct.vfio_irq_info, %struct.vfio_irq_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %37

31:                                               ; preds = %13
  %32 = load i32, i32* @VFIO_IRQ_INFO_NORESIZE, align 4
  %33 = load %struct.vfio_irq_info*, %struct.vfio_irq_info** %5, align 8
  %34 = getelementptr inbounds %struct.vfio_irq_info, %struct.vfio_irq_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %23
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

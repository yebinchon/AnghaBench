; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_virtuoso.c_get_xonar_model.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_virtuoso.c_get_xonar_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }
%struct.pci_device_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*, %struct.pci_device_id*)* @get_xonar_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_xonar_model(%struct.oxygen* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %7 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %8 = call i64 @get_xonar_pcm179x_model(%struct.oxygen* %6, %struct.pci_device_id* %7)
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %13 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %14 = call i64 @get_xonar_cs43xx_model(%struct.oxygen* %12, %struct.pci_device_id* %13)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %19 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %20 = call i64 @get_xonar_wm87x6_model(%struct.oxygen* %18, %struct.pci_device_id* %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %22, %16, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @get_xonar_pcm179x_model(%struct.oxygen*, %struct.pci_device_id*) #1

declare dso_local i64 @get_xonar_cs43xx_model(%struct.oxygen*, %struct.pci_device_id*) #1

declare dso_local i64 @get_xonar_wm87x6_model(%struct.oxygen*, %struct.pci_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

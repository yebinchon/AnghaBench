; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_attrs_pci_vf_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_attrs_pci_vf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { %struct.devlink_port_attrs }
%struct.devlink_port_attrs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@DEVLINK_PORT_FLAVOUR_PCI_VF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_port_attrs_pci_vf_set(%struct.devlink_port* %0, i8* %1, i8 zeroext %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.devlink_port_attrs*, align 8
  %12 = alloca i32, align 4
  store %struct.devlink_port* %0, %struct.devlink_port** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %13, i32 0, i32 0
  store %struct.devlink_port_attrs* %14, %struct.devlink_port_attrs** %11, align 8
  %15 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %16 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PCI_VF, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %8, align 1
  %19 = call i32 @__devlink_port_attrs_set(%struct.devlink_port* %15, i32 %16, i8* %17, i8 zeroext %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %32

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %11, align 8
  %26 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %11, align 8
  %30 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %32

32:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @__devlink_port_attrs_set(%struct.devlink_port*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

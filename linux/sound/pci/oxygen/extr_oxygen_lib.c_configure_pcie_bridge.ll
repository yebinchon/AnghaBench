; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_configure_pcie_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_configure_pcie_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32, i32 }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@configure_pcie_bridge.bridge_ids = internal constant [5 x %struct.pci_device_id] [%struct.pci_device_id zeroinitializer, %struct.pci_device_id zeroinitializer, %struct.pci_device_id { i32 1, i32 0 }, %struct.pci_device_id { i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @configure_pcie_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_pcie_bridge(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %74

18:                                               ; preds = %10
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %3, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call %struct.pci_device_id* @pci_match_id(%struct.pci_device_id* getelementptr inbounds ([5 x %struct.pci_device_id], [5 x %struct.pci_device_id]* @configure_pcie_bridge.bridge_ids, i64 0, i64 0), %struct.pci_dev* %24)
  store %struct.pci_device_id* %25, %struct.pci_device_id** %4, align 8
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %27 = icmp ne %struct.pci_device_id* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %74

29:                                               ; preds = %18
  %30 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %74 [
    i32 0, label %33
    i32 1, label %54
    i32 2, label %62
  ]

33:                                               ; preds = %29
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 72, i32* %5)
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, 2048
  store i32 %39, i32* %5, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pci_write_config_dword(%struct.pci_dev* %40, i32 72, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call i32 @pci_write_config_dword(%struct.pci_dev* %43, i32 132, i32 12)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = call i32 @pci_read_config_dword(%struct.pci_dev* %45, i32 136, i32* %5)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, -939524097
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 268435456
  store i32 %50, i32* %5, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pci_write_config_dword(%struct.pci_dev* %51, i32 136, i32 %52)
  br label %74

54:                                               ; preds = %29
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i32 @pci_read_config_dword(%struct.pci_dev* %55, i32 64, i32* %5)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pci_write_config_dword(%struct.pci_dev* %59, i32 64, i32 %60)
  br label %74

62:                                               ; preds = %29
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i32 232, i32* %5)
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, -16
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, -3841
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, 256
  store i32 %70, i32* %5, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @pci_write_config_dword(%struct.pci_dev* %71, i32 232, i32 %72)
  br label %74

74:                                               ; preds = %17, %28, %29, %62, %54, %33
  ret void
}

declare dso_local %struct.pci_device_id* @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

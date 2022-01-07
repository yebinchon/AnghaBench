; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0.c_snd_vortex_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0.c_snd_vortex_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_VIA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8365_1 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_82C598_1 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_FE_GATE_7007 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Activating latency workaround...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @snd_vortex_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_vortex_workaround(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 255
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %10 = load i32, i32* @PCI_DEVICE_ID_VIA_8365_1, align 4
  %11 = call %struct.pci_dev* @pci_get_device(i32 %9, i32 %10, i32* null)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = icmp eq %struct.pci_dev* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %16 = load i32, i32* @PCI_DEVICE_ID_VIA_82C598_1, align 4
  %17 = call %struct.pci_dev* @pci_get_device(i32 %15, i32 %16, i32* null)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = icmp eq %struct.pci_dev* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %22 = load i32, i32* @PCI_DEVICE_ID_AMD_FE_GATE_7007, align 4
  %23 = call %struct.pci_dev* @pci_get_device(i32 %21, i32 %22, i32* null)
  store %struct.pci_dev* %23, %struct.pci_dev** %5, align 8
  br label %24

24:                                               ; preds = %20, %14
  br label %25

25:                                               ; preds = %24, %8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = icmp ne %struct.pci_dev* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @vortex_fix_latency(%struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = call i32 @vortex_fix_agp_bridge(%struct.pci_dev* %34)
  br label %36

36:                                               ; preds = %28, %25
  br label %81

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = call i32 @vortex_fix_latency(%struct.pci_dev* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %50 = load i32, i32* @PCI_DEVICE_ID_VIA_8365_1, align 4
  %51 = call %struct.pci_dev* @pci_get_device(i32 %49, i32 %50, i32* null)
  store %struct.pci_dev* %51, %struct.pci_dev** %5, align 8
  %52 = icmp ne %struct.pci_dev* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = call i32 @vortex_fix_agp_bridge(%struct.pci_dev* %54)
  br label %56

56:                                               ; preds = %53, %48, %44
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %62 = load i32, i32* @PCI_DEVICE_ID_VIA_82C598_1, align 4
  %63 = call %struct.pci_dev* @pci_get_device(i32 %61, i32 %62, i32* null)
  store %struct.pci_dev* %63, %struct.pci_dev** %5, align 8
  %64 = icmp ne %struct.pci_dev* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = call i32 @vortex_fix_agp_bridge(%struct.pci_dev* %66)
  br label %68

68:                                               ; preds = %65, %60, %56
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %74 = load i32, i32* @PCI_DEVICE_ID_AMD_FE_GATE_7007, align 4
  %75 = call %struct.pci_dev* @pci_get_device(i32 %73, i32 %74, i32* null)
  store %struct.pci_dev* %75, %struct.pci_dev** %5, align 8
  %76 = icmp ne %struct.pci_dev* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %79 = call i32 @vortex_fix_agp_bridge(%struct.pci_dev* %78)
  br label %80

80:                                               ; preds = %77, %72, %68
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = call i32 @pci_dev_put(%struct.pci_dev* %82)
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @vortex_fix_latency(%struct.pci_dev*) #1

declare dso_local i32 @vortex_fix_agp_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

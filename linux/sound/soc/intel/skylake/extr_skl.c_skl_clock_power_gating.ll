; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_clock_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_clock_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.hdac_bus = type { i32 }

@AZX_CGCTL_ADSPDCGE = common dso_local global i32 0, align 4
@AZX_PCIREG_CGCTL = common dso_local global i32 0, align 4
@AZX_REG_VS_EM2_L1SEN = common dso_local global i32 0, align 4
@VS_EM2 = common dso_local global i32 0, align 4
@AZX_PGCTL_ADSPPGD = common dso_local global i32 0, align 4
@AZX_PCIREG_PGCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @skl_clock_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_clock_power_gating(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = call %struct.hdac_bus* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.hdac_bus* %11, %struct.hdac_bus** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @AZX_CGCTL_ADSPDCGE, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* @AZX_PCIREG_CGCTL, align 4
  %21 = load i32, i32* @AZX_CGCTL_ADSPDCGE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @update_pci_dword(%struct.pci_dev* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @AZX_REG_VS_EM2_L1SEN, align 4
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %32 = load i32, i32* @VS_EM2, align 4
  %33 = load i32, i32* @AZX_REG_VS_EM2_L1SEN, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @snd_hdac_chip_updatel(%struct.hdac_bus* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @AZX_PGCTL_ADSPPGD, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 0, %38 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load i32, i32* @AZX_PCIREG_PGCTL, align 4
  %45 = load i32, i32* @AZX_PGCTL_ADSPPGD, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @update_pci_dword(%struct.pci_dev* %43, i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.hdac_bus* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @update_pci_dword(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_chip_updatel(%struct.hdac_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { i32, i32 }

@SL_PCI_LEGACYCONTROL = common dso_local global i32 0, align 4
@SL_PCI_DDMACONTROL = common dso_local global i32 0, align 4
@SL_PCI_CONFIG = common dso_local global i32 0, align 4
@IRQCONTROL = common dso_local global i32 0, align 4
@DMACLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1938*)* @snd_es1938_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1938_chip_init(%struct.es1938* %0) #0 {
  %2 = alloca %struct.es1938*, align 8
  store %struct.es1938* %0, %struct.es1938** %2, align 8
  %3 = load %struct.es1938*, %struct.es1938** %2, align 8
  %4 = call i32 @snd_es1938_reset(%struct.es1938* %3)
  %5 = load %struct.es1938*, %struct.es1938** %2, align 8
  %6 = getelementptr inbounds %struct.es1938, %struct.es1938* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pci_set_master(i32 %7)
  %9 = load %struct.es1938*, %struct.es1938** %2, align 8
  %10 = getelementptr inbounds %struct.es1938, %struct.es1938* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SL_PCI_LEGACYCONTROL, align 4
  %13 = call i32 @pci_write_config_word(i32 %11, i32 %12, i32 32863)
  %14 = load %struct.es1938*, %struct.es1938** %2, align 8
  %15 = getelementptr inbounds %struct.es1938, %struct.es1938* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SL_PCI_DDMACONTROL, align 4
  %18 = load %struct.es1938*, %struct.es1938** %2, align 8
  %19 = getelementptr inbounds %struct.es1938, %struct.es1938* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 1
  %22 = call i32 @pci_write_config_word(i32 %16, i32 %17, i32 %21)
  %23 = load %struct.es1938*, %struct.es1938** %2, align 8
  %24 = getelementptr inbounds %struct.es1938, %struct.es1938* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SL_PCI_CONFIG, align 4
  %27 = call i32 @pci_write_config_dword(i32 %25, i32 %26, i32 0)
  %28 = load %struct.es1938*, %struct.es1938** %2, align 8
  %29 = load i32, i32* @IRQCONTROL, align 4
  %30 = call i32 @SLIO_REG(%struct.es1938* %28, i32 %29)
  %31 = call i32 @outb(i32 240, i32 %30)
  %32 = load %struct.es1938*, %struct.es1938** %2, align 8
  %33 = load i32, i32* @DMACLEAR, align 4
  %34 = call i32 @SLDM_REG(%struct.es1938* %32, i32 %33)
  %35 = call i32 @outb(i32 0, i32 %34)
  ret void
}

declare dso_local i32 @snd_es1938_reset(%struct.es1938*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @SLIO_REG(%struct.es1938*, i32) #1

declare dso_local i32 @SLDM_REG(%struct.es1938*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

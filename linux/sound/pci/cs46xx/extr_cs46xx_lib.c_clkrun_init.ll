; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_clkrun_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_clkrun_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82371AB_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*)* @clkrun_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkrun_init(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %8 = load i32, i32* @PCI_DEVICE_ID_INTEL_82371AB_3, align 4
  %9 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 %8, i32* null)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = icmp eq %struct.pci_dev* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i32 @pci_read_config_byte(%struct.pci_dev* %14, i32 65, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 8
  %18 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %19 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i32 @pci_dev_put(%struct.pci_dev* %20)
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

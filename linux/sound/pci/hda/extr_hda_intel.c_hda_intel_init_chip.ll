; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_hda_intel_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_hda_intel_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hdac_bus = type { i32* }

@AZX_DRIVER_SKL = common dso_local global i64 0, align 8
@INTEL_HDA_CGCTL = common dso_local global i32 0, align 4
@INTEL_HDA_CGCTL_MISCBDCGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*, i32)* @hda_intel_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_intel_init_chip(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_bus*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.azx*, %struct.azx** %3, align 8
  %9 = call %struct.hdac_bus* @azx_bus(%struct.azx* %8)
  store %struct.hdac_bus* %9, %struct.hdac_bus** %5, align 8
  %10 = load %struct.azx*, %struct.azx** %3, align 8
  %11 = getelementptr inbounds %struct.azx, %struct.azx* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %14 = call i32 @snd_hdac_set_codec_wakeup(%struct.hdac_bus* %13, i32 1)
  %15 = load %struct.azx*, %struct.azx** %3, align 8
  %16 = getelementptr inbounds %struct.azx, %struct.azx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AZX_DRIVER_SKL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = load i32, i32* @INTEL_HDA_CGCTL, align 4
  %23 = call i32 @pci_read_config_dword(%struct.pci_dev* %21, i32 %22, i32* %7)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @INTEL_HDA_CGCTL_MISCBDCGE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = load i32, i32* @INTEL_HDA_CGCTL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pci_write_config_dword(%struct.pci_dev* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.azx*, %struct.azx** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @azx_init_chip(%struct.azx* %33, i32 %34)
  %36 = load %struct.azx*, %struct.azx** %3, align 8
  %37 = getelementptr inbounds %struct.azx, %struct.azx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AZX_DRIVER_SKL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = load i32, i32* @INTEL_HDA_CGCTL, align 4
  %44 = call i32 @pci_read_config_dword(%struct.pci_dev* %42, i32 %43, i32* %7)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @INTEL_HDA_CGCTL_MISCBDCGE, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = load i32, i32* @INTEL_HDA_CGCTL, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @pci_write_config_dword(%struct.pci_dev* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %32
  %53 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %54 = call i32 @snd_hdac_set_codec_wakeup(%struct.hdac_bus* %53, i32 0)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = call i64 @IS_BXT(%struct.pci_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.azx*, %struct.azx** %3, align 8
  %60 = call i32 @bxt_reduce_dma_latency(%struct.azx* %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %63 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.azx*, %struct.azx** %3, align 8
  %68 = call i32 @intel_init_lctl(%struct.azx* %67)
  br label %69

69:                                               ; preds = %66, %61
  ret void
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @snd_hdac_set_codec_wakeup(%struct.hdac_bus*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @azx_init_chip(%struct.azx*, i32) #1

declare dso_local i64 @IS_BXT(%struct.pci_dev*) #1

declare dso_local i32 @bxt_reduce_dma_latency(%struct.azx*) #1

declare dso_local i32 @intel_init_lctl(%struct.azx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

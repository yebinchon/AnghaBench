; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ctrl.c_hda_dsp_ctrl_clock_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ctrl.c_hda_dsp_ctrl_clock_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@PCI_CGCTL_ADSPDCGE = common dso_local global i32 0, align 4
@PCI_CGCTL = common dso_local global i32 0, align 4
@HDA_VS_INTEL_EM2_L1SEN = common dso_local global i32 0, align 4
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@HDA_VS_INTEL_EM2 = common dso_local global i32 0, align 4
@PCI_PGCTL_ADSPPGD = common dso_local global i32 0, align 4
@PCI_PGCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_ctrl_clock_power_gating(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @PCI_CGCTL_ADSPDCGE, align 4
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  store i32 %12, i32* %5, align 4
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %14 = load i32, i32* @PCI_CGCTL, align 4
  %15 = load i32, i32* @PCI_CGCTL_ADSPDCGE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_sof_pci_update_bits(%struct.snd_sof_dev* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @HDA_VS_INTEL_EM2_L1SEN, align 4
  br label %23

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %26 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %27 = load i32, i32* @HDA_VS_INTEL_EM2, align 4
  %28 = load i32, i32* @HDA_VS_INTEL_EM2_L1SEN, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @PCI_PGCTL_ADSPPGD, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  %38 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %39 = load i32, i32* @PCI_PGCTL, align 4
  %40 = load i32, i32* @PCI_PGCTL_ADSPPGD, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @snd_sof_pci_update_bits(%struct.snd_sof_dev* %38, i32 %39, i32 %40, i32 %41)
  ret i32 0
}

declare dso_local i32 @snd_sof_pci_update_bits(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ipc.c_hda_dsp_ipc_dsp_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ipc.c_hda_dsp_ipc_dsp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCIE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCIE_DONE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCCTL = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*)* @hda_dsp_ipc_dsp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_dsp_ipc_dsp_done(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %3 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %4 = load i32, i32* @HDA_DSP_BAR, align 4
  %5 = load i32, i32* @HDA_DSP_REG_HIPCIE, align 4
  %6 = load i32, i32* @HDA_DSP_REG_HIPCIE_DONE, align 4
  %7 = load i32, i32* @HDA_DSP_REG_HIPCIE_DONE, align 4
  %8 = call i32 @snd_sof_dsp_update_bits_forced(%struct.snd_sof_dev* %3, i32 %4, i32 %5, i32 %6, i32 %7)
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %10 = load i32, i32* @HDA_DSP_BAR, align 4
  %11 = load i32, i32* @HDA_DSP_REG_HIPCCTL, align 4
  %12 = load i32, i32* @HDA_DSP_REG_HIPCCTL_DONE, align 4
  %13 = load i32, i32* @HDA_DSP_REG_HIPCCTL_DONE, align 4
  %14 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @snd_sof_dsp_update_bits_forced(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

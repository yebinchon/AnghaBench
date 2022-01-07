; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_ipc_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_ipc_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { %struct.sof_intel_dsp_desc* }
%struct.sof_intel_dsp_desc = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCCTL_BUSY = common dso_local global i32 0, align 4
@HDA_DSP_REG_ADSPIC = common dso_local global i32 0, align 4
@HDA_DSP_ADSPIC_IPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hda_dsp_ipc_int_enable(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.sof_intel_hda_dev*, align 8
  %4 = alloca %struct.sof_intel_dsp_desc*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %6 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %8, align 8
  store %struct.sof_intel_hda_dev* %9, %struct.sof_intel_hda_dev** %3, align 8
  %10 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %10, i32 0, i32 0
  %12 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %11, align 8
  store %struct.sof_intel_dsp_desc* %12, %struct.sof_intel_dsp_desc** %4, align 8
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %14 = load i32, i32* @HDA_DSP_BAR, align 4
  %15 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %4, align 8
  %16 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HDA_DSP_REG_HIPCCTL_DONE, align 4
  %19 = load i32, i32* @HDA_DSP_REG_HIPCCTL_BUSY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HDA_DSP_REG_HIPCCTL_DONE, align 4
  %22 = load i32, i32* @HDA_DSP_REG_HIPCCTL_BUSY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %13, i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %26 = load i32, i32* @HDA_DSP_BAR, align 4
  %27 = load i32, i32* @HDA_DSP_REG_ADSPIC, align 4
  %28 = load i32, i32* @HDA_DSP_ADSPIC_IPC, align 4
  %29 = load i32, i32* @HDA_DSP_ADSPIC_IPC, align 4
  %30 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

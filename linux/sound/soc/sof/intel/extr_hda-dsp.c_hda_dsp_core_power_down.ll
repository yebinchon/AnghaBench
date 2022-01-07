; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-dsp.c_hda_dsp_core_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_ADSPCS = common dso_local global i32 0, align 4
@HDA_DSP_REG_POLL_INTERVAL_US = common dso_local global i32 0, align 4
@HDA_DSP_PD_TIMEOUT = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_core_power_down(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = load i32, i32* @HDA_DSP_BAR, align 4
  %8 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @HDA_DSP_ADSPCS_SPA_MASK(i32 %9)
  %11 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %6, i32 %7, i32 %8, i32 %10, i32 0)
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %13 = load i32, i32* @HDA_DSP_BAR, align 4
  %14 = load i32, i32* @HDA_DSP_REG_ADSPCS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @HDA_DSP_ADSPCS_SPA_MASK(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @HDA_DSP_REG_POLL_INTERVAL_US, align 4
  %24 = load i32, i32* @HDA_DSP_PD_TIMEOUT, align 4
  %25 = load i32, i32* @USEC_PER_MSEC, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev* %12, i32 %13, i32 %14, i32 %15, i32 %22, i32 %23, i32 %26)
  ret i32 %27
}

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @HDA_DSP_ADSPCS_SPA_MASK(i32) #1

declare dso_local i32 @snd_sof_dsp_read_poll_timeout(%struct.snd_sof_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

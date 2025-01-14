; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_byt.c_byt_host_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_byt.c_byt_host_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@BYT_DSP_BAR = common dso_local global i32 0, align 4
@SHIM_IPCD = common dso_local global i32 0, align 4
@SHIM_BYT_IPCD_BUSY = common dso_local global i32 0, align 4
@SHIM_BYT_IPCD_DONE = common dso_local global i32 0, align 4
@SHIM_IMRX = common dso_local global i32 0, align 4
@SHIM_IMRX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*)* @byt_host_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byt_host_done(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %3 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %4 = load i32, i32* @BYT_DSP_BAR, align 4
  %5 = load i32, i32* @SHIM_IPCD, align 4
  %6 = load i32, i32* @SHIM_BYT_IPCD_BUSY, align 4
  %7 = load i32, i32* @SHIM_BYT_IPCD_DONE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SHIM_BYT_IPCD_DONE, align 4
  %10 = call i32 @snd_sof_dsp_update_bits64_unlocked(%struct.snd_sof_dev* %3, i32 %4, i32 %5, i32 %8, i32 %9)
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %12 = load i32, i32* @BYT_DSP_BAR, align 4
  %13 = load i32, i32* @SHIM_IMRX, align 4
  %14 = load i32, i32* @SHIM_IMRX_BUSY, align 4
  %15 = call i32 @snd_sof_dsp_update_bits64_unlocked(%struct.snd_sof_dev* %11, i32 %12, i32 %13, i32 %14, i32 0)
  ret void
}

declare dso_local i32 @snd_sof_dsp_update_bits64_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

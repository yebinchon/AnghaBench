; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@BDW_DSP_BAR = common dso_local global i32 0, align 4
@SHIM_CSR = common dso_local global i32 0, align 4
@SHIM_CSR_RST = common dso_local global i32 0, align 4
@SHIM_CSR_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @bdw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_reset(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %3 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %4 = load i32, i32* @BDW_DSP_BAR, align 4
  %5 = load i32, i32* @SHIM_CSR, align 4
  %6 = load i32, i32* @SHIM_CSR_RST, align 4
  %7 = load i32, i32* @SHIM_CSR_STALL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SHIM_CSR_RST, align 4
  %10 = load i32, i32* @SHIM_CSR_STALL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %3, i32 %4, i32 %5, i32 %8, i32 %11)
  %13 = call i32 @mdelay(i32 10)
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %15 = load i32, i32* @BDW_DSP_BAR, align 4
  %16 = load i32, i32* @SHIM_CSR, align 4
  %17 = load i32, i32* @SHIM_CSR_RST, align 4
  %18 = load i32, i32* @SHIM_CSR_STALL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SHIM_CSR_STALL, align 4
  %21 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %14, i32 %15, i32 %16, i32 %19, i32 %20)
  ret i32 0
}

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

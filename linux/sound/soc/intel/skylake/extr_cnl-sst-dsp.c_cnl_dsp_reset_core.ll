; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst-dsp.c_cnl_dsp_reset_core.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst-dsp.c_cnl_dsp_reset_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@CNL_ADSP_REG_ADSPCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32)* @cnl_dsp_reset_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_dsp_reset_core(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %6 = load i32, i32* @CNL_ADSP_REG_ADSPCS, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CNL_ADSPCS_CSTALL(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @CNL_ADSPCS_CSTALL(i32 %9)
  %11 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %5, i32 %6, i32 %8, i32 %10)
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cnl_dsp_core_set_reset_state(%struct.sst_dsp* %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @CNL_ADSPCS_CSTALL(i32) #1

declare dso_local i32 @cnl_dsp_core_set_reset_state(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

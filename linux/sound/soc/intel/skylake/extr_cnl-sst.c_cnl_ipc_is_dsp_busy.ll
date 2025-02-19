; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_ipc_is_dsp_busy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_ipc_is_dsp_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@CNL_ADSP_REG_HIPCIDR = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCIDR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @cnl_ipc_is_dsp_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_ipc_is_dsp_busy(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  %3 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %4 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %5 = load i32, i32* @CNL_ADSP_REG_HIPCIDR, align 4
  %6 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CNL_ADSP_REG_HIPCIDR_BUSY, align 4
  %9 = and i32 %7, %8
  ret i32 %9
}

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

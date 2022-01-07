; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SST_CSR = common dso_local global i32 0, align 4
@SST_BYT_CSR_RST = common dso_local global i32 0, align 4
@SST_BYT_CSR_VECTOR_SEL = common dso_local global i32 0, align 4
@SST_BYT_CSR_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @sst_byt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_byt_reset(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %3 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %4 = load i32, i32* @SST_CSR, align 4
  %5 = load i32, i32* @SST_BYT_CSR_RST, align 4
  %6 = load i32, i32* @SST_BYT_CSR_VECTOR_SEL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SST_BYT_CSR_STALL, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SST_BYT_CSR_RST, align 4
  %11 = load i32, i32* @SST_BYT_CSR_VECTOR_SEL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SST_BYT_CSR_STALL, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp* %3, i32 %4, i32 %9, i32 %14)
  %16 = call i32 @udelay(i32 10)
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %18 = load i32, i32* @SST_CSR, align 4
  %19 = load i32, i32* @SST_BYT_CSR_RST, align 4
  %20 = call i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp* %17, i32 %18, i32 %19, i32 0)
  ret void
}

declare dso_local i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

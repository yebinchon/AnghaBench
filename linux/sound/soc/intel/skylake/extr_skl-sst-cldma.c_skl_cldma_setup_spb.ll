; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_setup_spb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_setup_spb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SKL_ADSP_REG_CL_SPBFIFO_SPBFCCTL = common dso_local global i32 0, align 4
@CL_SPBFIFO_SPBFCCTL_SPIBE_MASK = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SPBFIFO_SPIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*, i32, i32)* @skl_cldma_setup_spb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_setup_spb(%struct.sst_dsp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %11 = load i32, i32* @SKL_ADSP_REG_CL_SPBFIFO_SPBFCCTL, align 4
  %12 = load i32, i32* @CL_SPBFIFO_SPBFCCTL_SPIBE_MASK, align 4
  %13 = call i32 @CL_SPBFIFO_SPBFCCTL_SPIBE(i32 1)
  %14 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %10, i32 %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %3
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %17 = load i32, i32* @SKL_ADSP_REG_CL_SPBFIFO_SPIB, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sst_dsp_shim_write_unlocked(%struct.sst_dsp* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @CL_SPBFIFO_SPBFCCTL_SPIBE(i32) #1

declare dso_local i32 @sst_dsp_shim_write_unlocked(%struct.sst_dsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

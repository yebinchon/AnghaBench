; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_stream_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_stream_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@SKL_ADSP_REG_CL_SD_CTL = common dso_local global i32 0, align 4
@CL_SD_CTL_IOCE_MASK = common dso_local global i32 0, align 4
@CL_SD_CTL_FEIE_MASK = common dso_local global i32 0, align 4
@CL_SD_CTL_DEIE_MASK = common dso_local global i32 0, align 4
@CL_SD_CTL_STRM_MASK = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_BDLPL = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_BDLPU = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_CBL = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_LVI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @skl_cldma_stream_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_stream_clear(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %3 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %4 = call i32 @skl_cldma_stream_run(%struct.sst_dsp* %3, i32 0)
  %5 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %6 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %7 = load i32, i32* @CL_SD_CTL_IOCE_MASK, align 4
  %8 = call i32 @CL_SD_CTL_IOCE(i32 0)
  %9 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %11 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %12 = load i32, i32* @CL_SD_CTL_FEIE_MASK, align 4
  %13 = call i32 @CL_SD_CTL_FEIE(i32 0)
  %14 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %16 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %17 = load i32, i32* @CL_SD_CTL_DEIE_MASK, align 4
  %18 = call i32 @CL_SD_CTL_DEIE(i32 0)
  %19 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %21 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %22 = load i32, i32* @CL_SD_CTL_STRM_MASK, align 4
  %23 = call i32 @CL_SD_CTL_STRM(i32 0)
  %24 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %26 = load i32, i32* @SKL_ADSP_REG_CL_SD_BDLPL, align 4
  %27 = call i32 @CL_SD_BDLPLBA(i32 0)
  %28 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %25, i32 %26, i32 %27)
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %30 = load i32, i32* @SKL_ADSP_REG_CL_SD_BDLPU, align 4
  %31 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %29, i32 %30, i32 0)
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %33 = load i32, i32* @SKL_ADSP_REG_CL_SD_CBL, align 4
  %34 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %32, i32 %33, i32 0)
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %36 = load i32, i32* @SKL_ADSP_REG_CL_SD_LVI, align 4
  %37 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %35, i32 %36, i32 0)
  ret void
}

declare dso_local i32 @skl_cldma_stream_run(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @CL_SD_CTL_IOCE(i32) #1

declare dso_local i32 @CL_SD_CTL_FEIE(i32) #1

declare dso_local i32 @CL_SD_CTL_DEIE(i32) #1

declare dso_local i32 @CL_SD_CTL_STRM(i32) #1

declare dso_local i32 @sst_dsp_shim_write(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @CL_SD_BDLPLBA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

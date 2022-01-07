; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_setup_controller.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_setup_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }
%struct.snd_dma_buffer = type { i32 }

@SKL_ADSP_REG_CL_SD_BDLPL = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_BDLPU = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_CBL = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_LVI = common dso_local global i32 0, align 4
@SKL_ADSP_REG_CL_SD_CTL = common dso_local global i32 0, align 4
@CL_SD_CTL_IOCE_MASK = common dso_local global i32 0, align 4
@CL_SD_CTL_FEIE_MASK = common dso_local global i32 0, align 4
@CL_SD_CTL_DEIE_MASK = common dso_local global i32 0, align 4
@CL_SD_CTL_STRM_MASK = common dso_local global i32 0, align 4
@FW_CL_STREAM_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*, %struct.snd_dma_buffer*, i32, i32)* @skl_cldma_setup_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_setup_controller(%struct.sst_dsp* %0, %struct.snd_dma_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %10 = call i32 @skl_cldma_stream_clear(%struct.sst_dsp* %9)
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %12 = load i32, i32* @SKL_ADSP_REG_CL_SD_BDLPL, align 4
  %13 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CL_SD_BDLPLBA(i32 %15)
  %17 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %11, i32 %12, i32 %16)
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %19 = load i32, i32* @SKL_ADSP_REG_CL_SD_BDLPU, align 4
  %20 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CL_SD_BDLPUBA(i32 %22)
  %24 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %18, i32 %19, i32 %23)
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %26 = load i32, i32* @SKL_ADSP_REG_CL_SD_CBL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %25, i32 %26, i32 %27)
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %30 = load i32, i32* @SKL_ADSP_REG_CL_SD_LVI, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @sst_dsp_shim_write(%struct.sst_dsp* %29, i32 %30, i32 %32)
  %34 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %35 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %36 = load i32, i32* @CL_SD_CTL_IOCE_MASK, align 4
  %37 = call i32 @CL_SD_CTL_IOCE(i32 1)
  %38 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %40 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %41 = load i32, i32* @CL_SD_CTL_FEIE_MASK, align 4
  %42 = call i32 @CL_SD_CTL_FEIE(i32 1)
  %43 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %45 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %46 = load i32, i32* @CL_SD_CTL_DEIE_MASK, align 4
  %47 = call i32 @CL_SD_CTL_DEIE(i32 1)
  %48 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %50 = load i32, i32* @SKL_ADSP_REG_CL_SD_CTL, align 4
  %51 = load i32, i32* @CL_SD_CTL_STRM_MASK, align 4
  %52 = load i32, i32* @FW_CL_STREAM_NUMBER, align 4
  %53 = call i32 @CL_SD_CTL_STRM(i32 %52)
  %54 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %49, i32 %50, i32 %51, i32 %53)
  ret void
}

declare dso_local i32 @skl_cldma_stream_clear(%struct.sst_dsp*) #1

declare dso_local i32 @sst_dsp_shim_write(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @CL_SD_BDLPLBA(i32) #1

declare dso_local i32 @CL_SD_BDLPUBA(i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @CL_SD_CTL_IOCE(i32) #1

declare dso_local i32 @CL_SD_CTL_FEIE(i32) #1

declare dso_local i32 @CL_SD_CTL_DEIE(i32) #1

declare dso_local i32 @CL_SD_CTL_STRM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_dma_buffer = type { i32* }
%struct.hdac_ext_stream = type { %struct.hdac_stream }
%struct.hdac_stream = type { i64, i64, i32*, i64, i32 }

@HDA_DSP_SPIB_DISABLE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_BDLPL = common dso_local global i32 0, align 4
@SOF_HDA_ADSP_REG_CL_SD_BDLPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.snd_dma_buffer*, %struct.hdac_ext_stream*)* @cl_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_cleanup(%struct.snd_sof_dev* %0, %struct.snd_dma_buffer* %1, %struct.hdac_ext_stream* %2) #0 {
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_dma_buffer*, align 8
  %6 = alloca %struct.hdac_ext_stream*, align 8
  %7 = alloca %struct.hdac_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %5, align 8
  store %struct.hdac_ext_stream* %2, %struct.hdac_ext_stream** %6, align 8
  %10 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %11 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %10, i32 0, i32 0
  store %struct.hdac_stream* %11, %struct.hdac_stream** %7, align 8
  %12 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %13 = call i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %15 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %16 = load i32, i32* @HDA_DSP_SPIB_DISABLE, align 4
  %17 = call i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev* %14, %struct.hdac_ext_stream* %15, i32 %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %21 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hda_dsp_stream_put(%struct.snd_sof_dev* %18, i32 %19, i32 %22)
  %24 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %25 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %27 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %29 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_BDLPL, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %28, i32 %29, i32 %32, i32 0)
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %35 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SOF_HDA_ADSP_REG_CL_SD_BDLPU, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %34, i32 %35, i32 %38, i32 0)
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %41 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %5, align 8
  %45 = call i32 @snd_dma_free_pages(%struct.snd_dma_buffer* %44)
  %46 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %49 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %51 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @SOF_STREAM_SD_OFFSET(%struct.hdac_stream*) #1

declare dso_local i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, i32, i32) #1

declare dso_local i32 @hda_dsp_stream_put(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

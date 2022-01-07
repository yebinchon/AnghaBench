; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_stream_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_cl_stream_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_dma_buffer = type { i32 }
%struct.hdac_ext_stream = type { %struct.hdac_stream }
%struct.hdac_stream = type { i32, i32, i32, i64, i32* }
%struct.pci_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error: code loading DMA is playback only\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error: no stream available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error: memory alloc failed: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error: hdac prepare failed: %x\0A\00", align 1
@HDA_DSP_SPIB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, i32, i32, %struct.snd_dma_buffer*, i32)* @cl_stream_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_stream_prepare(%struct.snd_sof_dev* %0, i32 %1, i32 %2, %struct.snd_dma_buffer* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_dma_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdac_ext_stream*, align 8
  %13 = alloca %struct.hdac_stream*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.snd_dma_buffer* %3, %struct.snd_dma_buffer** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %17 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %14, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %25 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %102

30:                                               ; preds = %5
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.hdac_ext_stream* @hda_dsp_stream_get(%struct.snd_sof_dev* %31, i32 %32)
  store %struct.hdac_ext_stream* %33, %struct.hdac_ext_stream** %12, align 8
  %34 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %12, align 8
  %35 = icmp ne %struct.hdac_ext_stream* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %38 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %102

43:                                               ; preds = %30
  %44 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %12, align 8
  %45 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %44, i32 0, i32 0
  store %struct.hdac_stream* %45, %struct.hdac_stream** %13, align 8
  %46 = load %struct.hdac_stream*, %struct.hdac_stream** %13, align 8
  %47 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %53 = call i32 @snd_dma_alloc_pages(i32 %48, i32* %50, i32 %51, %struct.snd_dma_buffer* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %58 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %92

62:                                               ; preds = %43
  %63 = load %struct.hdac_stream*, %struct.hdac_stream** %13, align 8
  %64 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.hdac_stream*, %struct.hdac_stream** %13, align 8
  %67 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.hdac_stream*, %struct.hdac_stream** %13, align 8
  %70 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %72 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %12, align 8
  %73 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %74 = call i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev* %71, %struct.hdac_ext_stream* %72, %struct.snd_dma_buffer* %73, i32* null)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %79 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %92

83:                                               ; preds = %62
  %84 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %85 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %12, align 8
  %86 = load i32, i32* @HDA_DSP_SPIB_ENABLE, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev* %84, %struct.hdac_ext_stream* %85, i32 %86, i32 %87)
  %89 = load %struct.hdac_stream*, %struct.hdac_stream** %13, align 8
  %90 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %6, align 4
  br label %102

92:                                               ; preds = %77, %56
  %93 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.hdac_stream*, %struct.hdac_stream** %13, align 8
  %96 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @hda_dsp_stream_put(%struct.snd_sof_dev* %93, i32 %94, i32 %97)
  %99 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %100 = call i32 @snd_dma_free_pages(%struct.snd_dma_buffer* %99)
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %92, %83, %36, %23
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.hdac_ext_stream* @hda_dsp_stream_get(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32*, i32, %struct.snd_dma_buffer*) #1

declare dso_local i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, %struct.snd_dma_buffer*, i32*) #1

declare dso_local i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, i32, i32) #1

declare dso_local i32 @hda_dsp_stream_put(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

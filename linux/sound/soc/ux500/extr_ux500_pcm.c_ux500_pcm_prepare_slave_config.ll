; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_pcm.c_ux500_pcm_prepare_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_pcm.c_ux500_pcm_prepare_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msp_i2s_platform_data* }
%struct.msp_i2s_platform_data = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.dma_slave_config = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.snd_dmaengine_dai_dma_data = type { i8* }
%struct.ux500_msp_dma_params = type { i8* }

@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i8* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*)* @ux500_pcm_prepare_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_pcm_prepare_slave_config(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.msp_i2s_platform_data*, align 8
  %10 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %11 = alloca %struct.ux500_msp_dma_params*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %8, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.msp_i2s_platform_data*, %struct.msp_i2s_platform_data** %22, align 8
  store %struct.msp_i2s_platform_data* %23, %struct.msp_i2s_platform_data** %9, align 8
  %24 = load %struct.msp_i2s_platform_data*, %struct.msp_i2s_platform_data** %9, align 8
  %25 = icmp ne %struct.msp_i2s_platform_data* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %31 = call i8* @snd_soc_dai_get_dma_data(%struct.TYPE_4__* %29, %struct.snd_pcm_substream* %30)
  %32 = bitcast i8* %31 to %struct.ux500_msp_dma_params*
  store %struct.ux500_msp_dma_params* %32, %struct.ux500_msp_dma_params** %11, align 8
  %33 = load %struct.ux500_msp_dma_params*, %struct.ux500_msp_dma_params** %11, align 8
  %34 = getelementptr inbounds %struct.ux500_msp_dma_params, %struct.ux500_msp_dma_params* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %12, align 8
  br label %46

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %41 = call i8* @snd_soc_dai_get_dma_data(%struct.TYPE_4__* %39, %struct.snd_pcm_substream* %40)
  %42 = bitcast i8* %41 to %struct.snd_dmaengine_dai_dma_data*
  store %struct.snd_dmaengine_dai_dma_data* %42, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %43 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %44 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %12, align 8
  br label %46

46:                                               ; preds = %36, %26
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %49 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %50 = call i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream* %47, %struct.snd_pcm_hw_params* %48, %struct.dma_slave_config* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %80

55:                                               ; preds = %46
  %56 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %57 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %56, i32 0, i32 0
  store i32 4, i32* %57, align 8
  %58 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %59 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %58, i32 0, i32 1
  store i32 4, i32* %59, align 4
  %60 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_2_BYTES, align 8
  %61 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %62 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_2_BYTES, align 8
  %64 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %65 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %74 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %79

75:                                               ; preds = %55
  %76 = load i8*, i8** %12, align 8
  %77 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @snd_soc_dai_get_dma_data(%struct.TYPE_4__*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

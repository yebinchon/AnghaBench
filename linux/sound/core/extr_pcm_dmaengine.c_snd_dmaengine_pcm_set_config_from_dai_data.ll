; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_dmaengine_pcm_set_config_from_dai_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_dmaengine_pcm_set_config_from_dai_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i64, i32, i32, i32 }
%struct.dma_slave_config = type { i64, i64, i32, i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_DMAENGINE_PCM_DAI_FLAG_PACK = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_dmaengine_pcm_set_config_from_dai_data(%struct.snd_pcm_substream* %0, %struct.snd_dmaengine_dai_dma_data* %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %6 = alloca %struct.dma_slave_config*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_dmaengine_dai_dma_data* %1, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %6, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %14 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %17 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %19 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %24 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SND_DMAENGINE_PCM_DAI_FLAG_PACK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %12
  %30 = load i64, i64* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 8
  %31 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %32 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %12
  %34 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %35 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %41 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %33
  br label %80

46:                                               ; preds = %3
  %47 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %48 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %51 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %53 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %56 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %58 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SND_DMAENGINE_PCM_DAI_FLAG_PACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load i64, i64* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 8
  %65 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %46
  %68 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %69 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %75 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %5, align 8
  %82 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %85 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

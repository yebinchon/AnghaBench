; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_hwparams_to_dma_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_hwparams_to_dma_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_3_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_8_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %7, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %11 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 64
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %24, i32* %8, align 4
  br label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %29, i32* %8, align 4
  br label %44

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 24
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @DMA_SLAVE_BUSWIDTH_3_BYTES, align 4
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DMA_SLAVE_BUSWIDTH_8_BYTES, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %54 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %58 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %61 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %62 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %65 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %68 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

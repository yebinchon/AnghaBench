; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-pcm-lib.c_pxa2xx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-pcm-lib.c_pxa2xx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@pxa2xx_pcm_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa2xx_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load i32, i32* @pxa2xx_pcm_hardware, align 4
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.TYPE_2__* %19, %struct.snd_pcm_substream* %20)
  store %struct.snd_dmaengine_dai_dma_data* %21, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %22 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %23 = icmp ne %struct.snd_dmaengine_dai_dma_data* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

25:                                               ; preds = %1
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %28 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %26, i32 0, i32 %27, i32 32)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %25
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %36 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %34, i32 0, i32 %35, i32 32)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %61

41:                                               ; preds = %33
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %44 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %41
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %6, align 8
  %57 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dma_request_slave_channel(i32 %55, i32 %58)
  %60 = call i32 @snd_dmaengine_pcm_open(%struct.snd_pcm_substream* %50, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %47, %39, %31, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.TYPE_2__*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_dmaengine_pcm_open(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @dma_request_slave_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

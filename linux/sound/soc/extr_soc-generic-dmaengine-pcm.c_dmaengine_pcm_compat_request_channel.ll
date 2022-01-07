; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_compat_request_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_compat_request_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.dmaengine_pcm = type { i32, %struct.TYPE_2__*, %struct.dma_chan** }
%struct.TYPE_2__ = type { i32*, %struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)* }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@SND_DMAENGINE_PCM_DRV_NAME = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)* @dmaengine_pcm_compat_request_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @dmaengine_pcm_compat_request_channel(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.dmaengine_pcm*, align 8
  %8 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load i32, i32* @SND_DMAENGINE_PCM_DRV_NAME, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %10, i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component* %13)
  store %struct.dmaengine_pcm* %14, %struct.dmaengine_pcm** %7, align 8
  store i32* null, i32** %9, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(i32 %17, %struct.snd_pcm_substream* %18)
  store %struct.snd_dmaengine_dai_dma_data* %19, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %20 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %21 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %28 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %27, i32 0, i32 2
  %29 = load %struct.dma_chan**, %struct.dma_chan*** %28, align 8
  %30 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %29, i64 0
  %31 = load %struct.dma_chan*, %struct.dma_chan** %30, align 8
  %32 = icmp ne %struct.dma_chan* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %35 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %34, i32 0, i32 2
  %36 = load %struct.dma_chan**, %struct.dma_chan*** %35, align 8
  %37 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %36, i64 0
  %38 = load %struct.dma_chan*, %struct.dma_chan** %37, align 8
  store %struct.dma_chan* %38, %struct.dma_chan** %3, align 8
  br label %77

39:                                               ; preds = %26, %2
  %40 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %41 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %46 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)*, %struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)** %48, align 8
  %50 = icmp ne %struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %53 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)*, %struct.dma_chan* (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*)** %55, align 8
  %57 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %59 = call %struct.dma_chan* %56(%struct.snd_soc_pcm_runtime* %57, %struct.snd_pcm_substream* %58)
  store %struct.dma_chan* %59, %struct.dma_chan** %3, align 8
  br label %77

60:                                               ; preds = %44, %39
  %61 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %62 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %7, align 8
  %67 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %74 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.dma_chan* @snd_dmaengine_pcm_request_channel(i32* %72, i32 %75)
  store %struct.dma_chan* %76, %struct.dma_chan** %3, align 8
  br label %77

77:                                               ; preds = %71, %51, %33
  %78 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %78
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local %struct.dma_chan* @snd_dmaengine_pcm_request_channel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

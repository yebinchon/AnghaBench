; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_dma_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_dma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.TYPE_6__* }
%struct.snd_pcm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.snd_card* }
%struct.snd_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }

@cygnus_dma_dmamask = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @cygnus_dma_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_dma_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm*, %struct.snd_pcm** %13, align 8
  store %struct.snd_pcm* %14, %struct.snd_pcm** %5, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %23 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* @cygnus_dma_dmamask, i32** %25, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = call i64 @DMA_BIT_MASK(i32 32)
  %35 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %51 = call i32 @cygnus_pcm_preallocate_dma_buffer(%struct.snd_pcm* %49, i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %78

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %59 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %68 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %69 = call i32 @cygnus_pcm_preallocate_dma_buffer(%struct.snd_pcm* %67, i64 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %74 = call i32 @cygnus_dma_free_dma_buffers(%struct.snd_pcm* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %57
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %72, %54
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @cygnus_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i64) #1

declare dso_local i32 @cygnus_dma_free_dma_buffers(%struct.snd_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@q6asm_dai_hardware_playback = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot allocate buffer(s)\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @q6asm_dai_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = load i32, i32* @DRV_NAME, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %11, i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %15, align 8
  store %struct.snd_pcm* %16, %struct.snd_pcm** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @q6asm_dai_hardware_playback, i32 0, i32 0), align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %22 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %26, align 8
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %4, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %1
  %31 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = call i32 @snd_dma_alloc_pages(i32 %31, %struct.device* %32, i32 %33, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %76

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %46 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %50, align 8
  store %struct.snd_pcm_substream* %51, %struct.snd_pcm_substream** %5, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %53 = icmp ne %struct.snd_pcm_substream* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %44
  %55 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = call i32 @snd_dma_alloc_pages(i32 %55, %struct.device* %56, i32 %57, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %67 = icmp ne %struct.snd_pcm_substream* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = call i32 @snd_dma_free_pages(i32* %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %44
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %72, %39
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, %struct.device*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

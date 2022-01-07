; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.TYPE_4__* }
%struct.snd_pcm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@sprd_pcm_hardware = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"can't alloc playback dma buffer: %d\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"can't alloc capture dma buffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @sprd_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  store %struct.snd_card* %12, %struct.snd_card** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  store %struct.snd_pcm* %15, %struct.snd_pcm** %5, align 8
  %16 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DMA_BIT_MASK(i32 32)
  %20 = call i32 @dma_coerce_mask_and_coherent(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %1
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %31, align 8
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %6, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %34 = icmp ne %struct.snd_pcm_substream* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %25
  %36 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %37 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sprd_pcm_hardware, i32 0, i32 0), align 4
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = call i32 @snd_dma_alloc_pages(i32 %36, i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %93

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %60, align 8
  store %struct.snd_pcm_substream* %61, %struct.snd_pcm_substream** %6, align 8
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %63 = icmp ne %struct.snd_pcm_substream* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %54
  %65 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %66 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %67 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sprd_pcm_hardware, i32 0, i32 0), align 4
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = call i32 @snd_dma_alloc_pages(i32 %65, i32 %68, i32 %69, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %64
  %76 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %77 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %82 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %86, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %87, i32 0, i32 0
  %89 = call i32 @snd_dma_free_pages(i32* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %64
  br label %92

92:                                               ; preds = %91, %54
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %75, %46, %23
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @dma_coerce_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

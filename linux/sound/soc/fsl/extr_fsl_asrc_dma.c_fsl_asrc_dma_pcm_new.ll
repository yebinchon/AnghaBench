; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.TYPE_4__* }
%struct.snd_pcm = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to set DMA mask\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_LAST = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@FSL_ASRC_DMABUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate DMA buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @fsl_asrc_dma_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_dma_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  store %struct.snd_card* %13, %struct.snd_card** %4, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %15, align 8
  store %struct.snd_pcm* %16, %struct.snd_pcm** %6, align 8
  %17 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %18 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DMA_BIT_MASK(i32 32)
  %21 = call i32 @dma_coerce_mask_and_coherent(i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %26 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %98

30:                                               ; preds = %1
  %31 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %67, %30
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SNDRV_PCM_STREAM_LAST, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %32
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %43, align 8
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %5, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %46 = icmp ne %struct.snd_pcm_substream* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %67

48:                                               ; preds = %36
  %49 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FSL_ASRC_DMABUF_SIZE, align 4
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = call i32 @snd_dma_alloc_pages(i32 %49, i32 %54, i32 %55, i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %63 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %71

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %32

70:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %98

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %77 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %82, align 8
  %84 = icmp ne %struct.snd_pcm_substream* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %75
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %87 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %92, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %93, i32 0, i32 0
  %95 = call i32 @snd_dma_free_pages(i32* %94)
  br label %96

96:                                               ; preds = %85, %75, %71
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %70, %24
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @dma_coerce_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

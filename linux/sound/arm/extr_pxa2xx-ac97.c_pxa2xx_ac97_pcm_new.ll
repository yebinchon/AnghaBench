; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32 }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"PXA2xx-PCM\00", align 1
@pxa2xx_pcm_free_dma_buffers = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@pxa2xx_ac97_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@pxa2xx_ac97_pcm = common dso_local global %struct.snd_pcm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @pxa2xx_ac97_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_pcm_new(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %6 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %7 = call i32 @snd_pcm_new(%struct.snd_card* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %3)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load i32, i32* @pxa2xx_pcm_free_dma_buffers, align 4
  %13 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DMA_BIT_MASK(i32 32)
  %19 = call i32 @dma_coerce_mask_and_coherent(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %47

23:                                               ; preds = %11
  %24 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @pxa2xx_ac97_pcm_ops)
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pxa2xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %47

34:                                               ; preds = %23
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i32 %37, i32* @pxa2xx_ac97_pcm_ops)
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pxa2xx_pcm_preallocate_dma_buffer(%struct.snd_pcm* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %47

45:                                               ; preds = %34
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  store %struct.snd_pcm* %46, %struct.snd_pcm** @pxa2xx_ac97_pcm, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %44, %33, %22, %10
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @pxa2xx_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

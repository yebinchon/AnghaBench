; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-pdc.c_atmel_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.TYPE_3__* }
%struct.snd_pcm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"atmel-pcm: allocating PCM playback DMA buffer\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"atmel-pcm: allocating PCM capture DMA buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @atmel_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm*, %struct.snd_pcm** %13, align 8
  store %struct.snd_pcm* %14, %struct.snd_pcm** %5, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DMA_BIT_MASK(i32 32)
  %19 = call i32 @dma_coerce_mask_and_coherent(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %37 = call i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm* %35, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %61

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %54 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %55 = call i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm* %53, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %61

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %58, %40
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @dma_coerce_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @atmel_pcm_preallocate_dma_buffer(%struct.snd_pcm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

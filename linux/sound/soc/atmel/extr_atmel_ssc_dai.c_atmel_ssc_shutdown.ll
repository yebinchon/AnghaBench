; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { i32, %struct.TYPE_2__*, i64, i64, i64, i64, i64, %struct.atmel_pcm_dma_params** }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.atmel_pcm_dma_params = type { i32*, i32* }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.platform_device = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CR = common dso_local global i32 0, align 4
@CR_SWRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"atmel_ssc_dai: Stopping clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @atmel_ssc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_ssc_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.atmel_ssc_info*, align 8
  %7 = alloca %struct.atmel_pcm_dma_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.platform_device* @to_platform_device(i32 %12)
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %14, i64 %17
  store %struct.atmel_ssc_info* %18, %struct.atmel_ssc_info** %6, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

25:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %28 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %27, i32 0, i32 7
  %29 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %29, i64 %31
  %33 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %32, align 8
  store %struct.atmel_pcm_dma_params* %33, %struct.atmel_pcm_dma_params** %7, align 8
  %34 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %35 = icmp ne %struct.atmel_pcm_dma_params* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %38 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %42 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %41, i32 0, i32 7
  %43 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %43, i64 %45
  store %struct.atmel_pcm_dma_params* null, %struct.atmel_pcm_dma_params** %46, align 8
  br label %47

47:                                               ; preds = %36, %26
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %53 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %93, label %60

60:                                               ; preds = %47
  %61 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %62 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %67 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.atmel_ssc_info* %71)
  %73 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %74 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %77 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CR, align 4
  %82 = load i32, i32* @CR_SWRST, align 4
  %83 = call i32 @SSC_BIT(i32 %82)
  %84 = call i32 @ssc_writel(i32 %80, i32 %81, i32 %83)
  %85 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %86 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %88 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %90 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %89, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %92 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %75, %47
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %96 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clk_disable(i32 %99)
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @free_irq(i32, %struct.atmel_ssc_info*) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

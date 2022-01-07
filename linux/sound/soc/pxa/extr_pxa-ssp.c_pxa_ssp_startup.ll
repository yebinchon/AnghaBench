; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.ssp_priv = type { i64, %struct.ssp_device* }
%struct.ssp_device = type { i64 }
%struct.snd_dmaengine_dai_dma_data = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pxa_ssp_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.ssp_priv*, align 8
  %7 = alloca %struct.ssp_device*, align 8
  %8 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.ssp_priv* %11, %struct.ssp_priv** %6, align 8
  %12 = load %struct.ssp_priv*, %struct.ssp_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %12, i32 0, i32 1
  %14 = load %struct.ssp_device*, %struct.ssp_device** %13, align 8
  store %struct.ssp_device* %14, %struct.ssp_device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %21 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @clk_prepare_enable(i64 %22)
  %24 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %25 = call i32 @pxa_ssp_disable(%struct.ssp_device* %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.ssp_priv*, %struct.ssp_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.ssp_priv*, %struct.ssp_priv** %6, align 8
  %33 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @clk_prepare_enable(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.snd_dmaengine_dai_dma_data* @kzalloc(i32 8, i32 %37)
  store %struct.snd_dmaengine_dai_dma_data* %38, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %39 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %40 = icmp ne %struct.snd_dmaengine_dai_dma_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %59

44:                                               ; preds = %36
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %52 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %53 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %57 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %54, %struct.snd_pcm_substream* %55, %struct.snd_dmaengine_dai_dma_data* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %44, %41
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @pxa_ssp_disable(%struct.ssp_device*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.snd_dmaengine_dai_dma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

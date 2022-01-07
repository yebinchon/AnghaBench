; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_dai_dma_data = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@clk_i2s = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clk_ena = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@pxa2xx_i2s_pcm_stereo_out = common dso_local global %struct.snd_dmaengine_dai_dma_data zeroinitializer, align 4
@pxa2xx_i2s_pcm_stereo_in = common dso_local global %struct.snd_dmaengine_dai_dma_data zeroinitializer, align 4
@SACR0 = common dso_local global i32 0, align 4
@SACR0_ENB = common dso_local global i32 0, align 4
@pxa_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SACR0_BCKD = common dso_local global i32 0, align 4
@SACR1 = common dso_local global i32 0, align 4
@SAIMR_TFS = common dso_local global i32 0, align 4
@SAIMR = common dso_local global i32 0, align 4
@SAIMR_RFS = common dso_local global i32 0, align 4
@SADIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pxa2xx_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %9 = load i32, i32* @clk_i2s, align 4
  %10 = call i32 @IS_ERR(i32 %9)
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %77

16:                                               ; preds = %3
  %17 = load i32, i32* @clk_i2s, align 4
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 1, i32* @clk_ena, align 4
  %19 = call i32 (...) @pxa_i2s_wait()
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store %struct.snd_dmaengine_dai_dma_data* @pxa2xx_i2s_pcm_stereo_out, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  br label %27

26:                                               ; preds = %16
  store %struct.snd_dmaengine_dai_dma_data* @pxa2xx_i2s_pcm_stereo_in, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %31 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %28, %struct.snd_pcm_substream* %29, %struct.snd_dmaengine_dai_dma_data* %30)
  %32 = load i32, i32* @SACR0, align 4
  %33 = load i32, i32* @SACR0_ENB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %27
  store i32 0, i32* @SACR0, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxa_i2s, i32 0, i32 1), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @SACR0_BCKD, align 4
  %41 = load i32, i32* @SACR0, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @SACR0, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = call i32 @SACR0_RFTH(i32 14)
  %45 = call i32 @SACR0_TFTH(i32 1)
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SACR0, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @SACR0, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxa_i2s, i32 0, i32 0), align 8
  %50 = load i32, i32* @SACR1, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @SACR1, align 4
  br label %52

52:                                               ; preds = %43, %27
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @SAIMR_TFS, align 4
  %60 = load i32, i32* @SAIMR, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @SAIMR, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @SAIMR_RFS, align 4
  %64 = load i32, i32* @SAIMR, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* @SAIMR, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %68 = call i32 @params_rate(%struct.snd_pcm_hw_params* %67)
  switch i32 %68, label %76 [
    i32 8000, label %69
    i32 11025, label %70
    i32 16000, label %71
    i32 22050, label %72
    i32 44100, label %73
    i32 48000, label %74
    i32 96000, label %75
  ]

69:                                               ; preds = %66
  store i32 72, i32* @SADIV, align 4
  br label %76

70:                                               ; preds = %66
  store i32 52, i32* @SADIV, align 4
  br label %76

71:                                               ; preds = %66
  store i32 36, i32* @SADIV, align 4
  br label %76

72:                                               ; preds = %66
  store i32 26, i32* @SADIV, align 4
  br label %76

73:                                               ; preds = %66
  store i32 13, i32* @SADIV, align 4
  br label %76

74:                                               ; preds = %66
  store i32 12, i32* @SADIV, align 4
  br label %76

75:                                               ; preds = %66
  store i32 6, i32* @SADIV, align 4
  br label %76

76:                                               ; preds = %66, %75, %74, %73, %72, %71, %70, %69
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %13
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pxa_i2s_wait(...) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.snd_dmaengine_dai_dma_data*) #1

declare dso_local i32 @SACR0_RFTH(i32) #1

declare dso_local i32 @SACR0_TFTH(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

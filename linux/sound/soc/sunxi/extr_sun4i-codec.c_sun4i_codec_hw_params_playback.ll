; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_hw_params_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_hw_params_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_codec = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SUN4I_CODEC_DAC_FIFOC = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_DAC_FS = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_MONO_EN = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_codec*, %struct.snd_pcm_hw_params*, i32)* @sun4i_codec_hw_params_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_codec_hw_params_playback(%struct.sun4i_codec* %0, %struct.snd_pcm_hw_params* %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_codec*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sun4i_codec* %0, %struct.sun4i_codec** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %9 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %12 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_DAC_FS, align 4
  %13 = shl i32 7, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_DAC_FS, align 4
  %16 = shl i32 %14, %15
  %17 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %13, i32 %16)
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = call i32 @params_channels(%struct.snd_pcm_hw_params* %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_MONO_EN, align 4
  %23 = call i32 @BIT(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %27 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %30 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_MONO_EN, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %31, i32 %32)
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %35 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %36 = call %struct.TYPE_4__* @hw_param_interval(%struct.snd_pcm_hw_params* %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %61

40:                                               ; preds = %25
  %41 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %42 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %45 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %46, i32 %48)
  %50 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %51 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %54 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %55, i32 0)
  %57 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %58 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %59 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %82

61:                                               ; preds = %25
  %62 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %63 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %66 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_SAMPLE_BITS, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %67, i32 0)
  %69 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %70 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %73 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_FIFO_MODE, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %74, i32 %76)
  %78 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %79 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %80 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %61, %40
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.TYPE_4__* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

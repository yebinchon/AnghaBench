; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_hw_params_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_hw_params_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_codec = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SUN4I_CODEC_ADC_FIFOC_ADC_FS = common dso_local global i32 0, align 4
@SUN4I_CODEC_ADC_FIFOC_MONO_EN = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS = common dso_local global i32 0, align 4
@SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_codec*, %struct.snd_pcm_hw_params*, i32)* @sun4i_codec_hw_params_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_codec_hw_params_capture(%struct.sun4i_codec* %0, %struct.snd_pcm_hw_params* %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_codec*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  store %struct.sun4i_codec* %0, %struct.sun4i_codec** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %8 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_ADC_FS, align 4
  %11 = shl i32 7, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_ADC_FS, align 4
  %14 = shl i32 %12, %13
  %15 = call i32 @regmap_field_update_bits(i32 %9, i32 %11, i32 %14)
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %17 = call i32 @params_channels(%struct.snd_pcm_hw_params* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %21 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_MONO_EN, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_MONO_EN, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i32 @regmap_field_update_bits(i32 %22, i32 %24, i32 %26)
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %30 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_MONO_EN, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = call i32 @regmap_field_update_bits(i32 %31, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %38 = call %struct.TYPE_4__* @hw_param_interval(%struct.snd_pcm_hw_params* %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %44 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = call i32 @regmap_field_update_bits(i32 %45, i32 %47, i32 %49)
  %51 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %52 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = call i32 @regmap_field_update_bits(i32 %53, i32 %55, i32 0)
  %57 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %58 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %59 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %80

61:                                               ; preds = %35
  %62 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %63 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_SAMPLE_BITS, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = call i32 @regmap_field_update_bits(i32 %64, i32 %66, i32 0)
  %68 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %69 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_FIFO_MODE, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = call i32 @regmap_field_update_bits(i32 %70, i32 %72, i32 %74)
  %76 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %77 = load %struct.sun4i_codec*, %struct.sun4i_codec** %4, align 8
  %78 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %61, %42
  ret i32 0
}

declare dso_local i32 @regmap_field_update_bits(i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.TYPE_4__* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

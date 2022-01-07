; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_prepare_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_prepare_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sun4i_codec = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SUN4I_CODEC_ADC_FIFOC_FIFO_FLUSH = common dso_local global i32 0, align 4
@SUN4I_CODEC_ADC_FIFOC_RX_TRIG_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"allwinner,sun4i-a10-codec\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"allwinner,sun7i-a20-codec\00", align 1
@SUN4I_CODEC_ADC_ACTL = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @sun4i_codec_prepare_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_codec_prepare_capture(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.sun4i_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %5, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sun4i_codec* @snd_soc_card_get_drvdata(i32 %12)
  store %struct.sun4i_codec* %13, %struct.sun4i_codec** %6, align 8
  %14 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %15 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_FIFO_FLUSH, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_FIFO_FLUSH, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = call i32 @regmap_field_update_bits(i32 %16, i32 %18, i32 %20)
  %22 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %23 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_TRIG_LEVEL, align 4
  %26 = shl i32 15, %25
  %27 = load i32, i32* @SUN4I_CODEC_ADC_FIFOC_RX_TRIG_LEVEL, align 4
  %28 = shl i32 7, %27
  %29 = call i32 @regmap_field_update_bits(i32 %24, i32 %26, i32 %28)
  %30 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %31 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @of_device_is_compatible(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %2
  %38 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %39 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @of_device_is_compatible(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37, %2
  %46 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %47 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SUN4I_CODEC_ADC_ACTL, align 4
  %50 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 100663296, i32 33554432)
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %53 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @of_device_is_compatible(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %61 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SUN4I_CODEC_DAC_TUNE, align 4
  %64 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 768, i32 256)
  br label %65

65:                                               ; preds = %59, %51
  ret i32 0
}

declare dso_local %struct.sun4i_codec* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @regmap_field_update_bits(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

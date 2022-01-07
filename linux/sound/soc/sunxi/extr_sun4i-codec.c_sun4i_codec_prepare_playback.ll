; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_prepare_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_prepare_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sun4i_codec = type { i32 }

@SUN4I_CODEC_DAC_FIFOC = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_TX_TRIG_LEVEL = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_FIR_VERSION = common dso_local global i32 0, align 4
@SUN4I_CODEC_DAC_FIFOC_SEND_LASAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @sun4i_codec_prepare_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_codec_prepare_playback(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.sun4i_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %5, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sun4i_codec* @snd_soc_card_get_drvdata(i32 %13)
  store %struct.sun4i_codec* %14, %struct.sun4i_codec** %6, align 8
  %15 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %16 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %19 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_FIFO_FLUSH, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %20, i32 %22)
  %24 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %25 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %28 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_TRIG_LEVEL, align 4
  %29 = shl i32 63, %28
  %30 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_TX_TRIG_LEVEL, align 4
  %31 = shl i32 15, %30
  %32 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %29, i32 %31)
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 32000
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_FIR_VERSION, align 4
  %42 = call i32 @BIT(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %45 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %48 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_FIR_VERSION, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %49, i32 %50)
  %52 = load %struct.sun4i_codec*, %struct.sun4i_codec** %6, align 8
  %53 = getelementptr inbounds %struct.sun4i_codec, %struct.sun4i_codec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC, align 4
  %56 = load i32, i32* @SUN4I_CODEC_DAC_FIFOC_SEND_LASAT, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %57, i32 0)
  ret i32 0
}

declare dso_local %struct.sun4i_codec* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

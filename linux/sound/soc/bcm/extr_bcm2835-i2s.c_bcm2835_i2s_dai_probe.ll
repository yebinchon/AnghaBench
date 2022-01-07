; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.bcm2835_i2s_dev = type { i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @bcm2835_i2s_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2s_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.bcm2835_i2s_dev*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %4)
  store %struct.bcm2835_i2s_dev* %5, %struct.bcm2835_i2s_dev** %3, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %7 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %3, align 8
  %8 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %3, align 8
  %13 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %6, i32* %11, i32* %16)
  ret i32 0
}

declare dso_local %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

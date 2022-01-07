; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_i2s_dev = type { i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@BCM2835_I2S_RXON = common dso_local global i32 0, align 4
@BCM2835_I2S_TXON = common dso_local global i32 0, align 4
@BCM2835_I2S_CS_A_REG = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_i2s_dev*, %struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @bcm2835_i2s_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_i2s_stop(%struct.bcm2835_i2s_dev* %0, %struct.snd_pcm_substream* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.bcm2835_i2s_dev*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  store %struct.bcm2835_i2s_dev* %0, %struct.bcm2835_i2s_dev** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @BCM2835_I2S_RXON, align 4
  store i32 %14, i32* %7, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @BCM2835_I2S_TXON, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %19 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %17
  %29 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %30 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_CONT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %4, align 8
  %37 = call i32 @bcm2835_i2s_stop_clock(%struct.bcm2835_i2s_dev* %36)
  br label %38

38:                                               ; preds = %35, %28, %17
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @bcm2835_i2s_stop_clock(%struct.bcm2835_i2s_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

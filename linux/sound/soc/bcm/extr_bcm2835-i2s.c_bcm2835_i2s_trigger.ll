; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.bcm2835_i2s_dev = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@BCM2835_I2S_RXON = common dso_local global i32 0, align 4
@BCM2835_I2S_TXON = common dso_local global i32 0, align 4
@BCM2835_I2S_CS_A_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @bcm2835_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.bcm2835_i2s_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.bcm2835_i2s_dev* %11, %struct.bcm2835_i2s_dev** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %38 [
    i32 130, label %13
    i32 131, label %13
    i32 132, label %13
    i32 129, label %33
    i32 128, label %33
    i32 133, label %33
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %15 = call i32 @bcm2835_i2s_start_clock(%struct.bcm2835_i2s_dev* %14)
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @BCM2835_I2S_RXON, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @BCM2835_I2S_TXON, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %27 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BCM2835_I2S_CS_A_REG, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  br label %41

33:                                               ; preds = %3, %3, %3
  %34 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %8, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %37 = call i32 @bcm2835_i2s_stop(%struct.bcm2835_i2s_dev* %34, %struct.snd_pcm_substream* %35, %struct.snd_soc_dai* %36)
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %33, %25
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @bcm2835_i2s_start_clock(%struct.bcm2835_i2s_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @bcm2835_i2s_stop(%struct.bcm2835_i2s_dev*, %struct.snd_pcm_substream*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

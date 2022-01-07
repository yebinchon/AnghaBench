; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.jz4740_i2s = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@JZ_AIC_CTRL_ENABLE_PLAYBACK = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_ENABLE_TX_DMA = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_ENABLE_CAPTURE = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_ENABLE_RX_DMA = common dso_local global i32 0, align 4
@JZ_REG_AIC_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @jz4740_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.jz4740_i2s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.jz4740_i2s* %12, %struct.jz4740_i2s** %8, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @JZ_AIC_CTRL_ENABLE_PLAYBACK, align 4
  %20 = load i32, i32* @JZ_AIC_CTRL_ENABLE_TX_DMA, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @JZ_AIC_CTRL_ENABLE_CAPTURE, align 4
  %24 = load i32, i32* @JZ_AIC_CTRL_ENABLE_RX_DMA, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %28 = load i32, i32* @JZ_REG_AIC_CTRL, align 4
  %29 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %40 [
    i32 130, label %31
    i32 131, label %31
    i32 132, label %31
    i32 129, label %35
    i32 128, label %35
    i32 133, label %35
  ]

31:                                               ; preds = %26, %26, %26
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %43

35:                                               ; preds = %26, %26, %26
  %36 = load i32, i32* %10, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %35, %31
  %44 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %45 = load i32, i32* @JZ_REG_AIC_CTRL, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %44, i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @jz4740_i2s_read(%struct.jz4740_i2s*, i32) #1

declare dso_local i32 @jz4740_i2s_write(%struct.jz4740_i2s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

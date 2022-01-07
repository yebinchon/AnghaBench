; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.jz4740_i2s = type { i64, i32, i32, i32 }

@JZ_I2S_JZ4780 = common dso_local global i64 0, align 8
@JZ4780_AIC_CONF_FIFO_RX_THRESHOLD_OFFSET = common dso_local global i32 0, align 4
@JZ4780_AIC_CONF_FIFO_TX_THRESHOLD_OFFSET = common dso_local global i32 0, align 4
@JZ_AIC_CONF_OVERFLOW_PLAY_LAST = common dso_local global i32 0, align 4
@JZ_AIC_CONF_I2S = common dso_local global i32 0, align 4
@JZ_AIC_CONF_INTERNAL_CODEC = common dso_local global i32 0, align 4
@JZ_AIC_CONF_FIFO_RX_THRESHOLD_OFFSET = common dso_local global i32 0, align 4
@JZ_AIC_CONF_FIFO_TX_THRESHOLD_OFFSET = common dso_local global i32 0, align 4
@JZ_REG_AIC_CONF = common dso_local global i32 0, align 4
@JZ_AIC_CONF_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @jz4740_i2s_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.jz4740_i2s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.jz4740_i2s* %8, %struct.jz4740_i2s** %4, align 8
  %9 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %10 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %19 = call i32 @jz4740_i2c_init_pcm_config(%struct.jz4740_i2s* %18)
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %21 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %22 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %21, i32 0, i32 2
  %23 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %24 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %23, i32 0, i32 1
  %25 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %20, i32* %22, i32* %24)
  %26 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %27 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @JZ_I2S_JZ4780, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = load i32, i32* @JZ4780_AIC_CONF_FIFO_RX_THRESHOLD_OFFSET, align 4
  %33 = shl i32 7, %32
  %34 = load i32, i32* @JZ4780_AIC_CONF_FIFO_TX_THRESHOLD_OFFSET, align 4
  %35 = shl i32 8, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* @JZ_AIC_CONF_OVERFLOW_PLAY_LAST, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @JZ_AIC_CONF_I2S, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @JZ_AIC_CONF_INTERNAL_CODEC, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %5, align 4
  br label %55

43:                                               ; preds = %17
  %44 = load i32, i32* @JZ_AIC_CONF_FIFO_RX_THRESHOLD_OFFSET, align 4
  %45 = shl i32 7, %44
  %46 = load i32, i32* @JZ_AIC_CONF_FIFO_TX_THRESHOLD_OFFSET, align 4
  %47 = shl i32 8, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @JZ_AIC_CONF_OVERFLOW_PLAY_LAST, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @JZ_AIC_CONF_I2S, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @JZ_AIC_CONF_INTERNAL_CODEC, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %43, %31
  %56 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %57 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %58 = load i32, i32* @JZ_AIC_CONF_RESET, align 4
  %59 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %56, i32 %57, i32 %58)
  %60 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %4, align 8
  %61 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %60, i32 %61, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @jz4740_i2c_init_pcm_config(%struct.jz4740_i2s*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

declare dso_local i32 @jz4740_i2s_write(%struct.jz4740_i2s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

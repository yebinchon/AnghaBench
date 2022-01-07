; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_i2s_data = type { i32, i32, i32, i32, %struct.snd_pcm_substream* }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@STM32_I2S_IFCR_REG = common dso_local global i32 0, align 4
@I2S_IFCR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @stm32_i2s_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.stm32_i2s_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = call %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.stm32_i2s_data* %10, %struct.stm32_i2s_data** %6, align 8
  %11 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %12 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %11, i32 0, i32 3
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %17 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %16, i32 0, i32 4
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %17, align 8
  %18 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %18, i32 0, i32 3
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %23 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %34 = call i32 @snd_pcm_hw_constraint_single(i32 %32, i32 %33, i32 2)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_prepare_enable(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %35
  %50 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %51 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @STM32_I2S_IFCR_REG, align 4
  %54 = load i32, i32* @I2S_IFCR_MASK, align 4
  %55 = load i32, i32* @I2S_IFCR_MASK, align 4
  %56 = call i32 @regmap_write_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_single(i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

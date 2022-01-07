; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.msm8916_wcd_digital_priv = type { i32 }

@LPASS_CDC_CLK_MCLK_CTL = common dso_local global i32 0, align 4
@MCLK_CTL_MCLK_EN_MASK = common dso_local global i32 0, align 4
@MCLK_CTL_MCLK_EN_ENABLE = common dso_local global i32 0, align 4
@LPASS_CDC_CLK_PDM_CTL = common dso_local global i32 0, align 4
@LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK = common dso_local global i32 0, align 4
@LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_FB = common dso_local global i32 0, align 4
@LPASS_CDC_TOP_CTL = common dso_local global i32 0, align 4
@TOP_CTL_DIG_MCLK_FREQ_MASK = common dso_local global i32 0, align 4
@TOP_CTL_DIG_MCLK_FREQ_F_12_288MHZ = common dso_local global i32 0, align 4
@TOP_CTL_DIG_MCLK_FREQ_F_9_6MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid mclk rate %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @msm8916_wcd_digital_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm8916_wcd_digital_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.msm8916_wcd_digital_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.msm8916_wcd_digital_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.msm8916_wcd_digital_priv* %12, %struct.msm8916_wcd_digital_priv** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = load i32, i32* @LPASS_CDC_CLK_MCLK_CTL, align 4
  %15 = load i32, i32* @MCLK_CTL_MCLK_EN_MASK, align 4
  %16 = load i32, i32* @MCLK_CTL_MCLK_EN_ENABLE, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = load i32, i32* @LPASS_CDC_CLK_PDM_CTL, align 4
  %20 = load i32, i32* @LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK, align 4
  %21 = load i32, i32* @LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_FB, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %6, align 8
  %24 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @clk_get_rate(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  switch i64 %27, label %40 [
    i64 12288000, label %28
    i64 9600000, label %34
  ]

28:                                               ; preds = %2
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %30 = load i32, i32* @LPASS_CDC_TOP_CTL, align 4
  %31 = load i32, i32* @TOP_CTL_DIG_MCLK_FREQ_MASK, align 4
  %32 = load i32, i32* @TOP_CTL_DIG_MCLK_FREQ_F_12_288MHZ, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %36 = load i32, i32* @LPASS_CDC_TOP_CTL, align 4
  %37 = load i32, i32* @TOP_CTL_DIG_MCLK_FREQ_MASK, align 4
  %38 = load i32, i32* @TOP_CTL_DIG_MCLK_FREQ_F_9_6MHZ, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %40, %34, %28
  ret i32 0
}

declare dso_local %struct.msm8916_wcd_digital_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_mtkaif_calibration_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_mtkaif_calibration_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.mt6358_priv = type { i32 }

@MT6358_AUDIO_DIG_CFG = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_SFT = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_SFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt6358_mtkaif_calibration_disable(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.mt6358_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.mt6358_priv* %5, %struct.mt6358_priv** %3, align 8
  %6 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MT6358_AUDIO_DIG_CFG, align 4
  %10 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_MASK_SFT, align 4
  %11 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_SFT, align 4
  %12 = shl i32 0, %11
  %13 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 %12)
  %14 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MT6358_AUDIO_DIG_CFG, align 4
  %18 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_MASK_SFT, align 4
  %19 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_SFT, align 4
  %20 = shl i32 0, %19
  %21 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %23 = call i32 @mt6358_set_topck(%struct.mt6358_priv* %22, i32 0)
  %24 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %25 = call i32 @mt6358_set_clksq(%struct.mt6358_priv* %24, i32 0)
  %26 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %27 = call i32 @mt6358_set_aud_global_bias(%struct.mt6358_priv* %26, i32 0)
  %28 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %29 = call i32 @mt6358_set_dcxo(%struct.mt6358_priv* %28, i32 0)
  %30 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %31 = call i32 @mt6358_mtkaif_tx_disable(%struct.mt6358_priv* %30)
  %32 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %33 = call i32 @playback_gpio_reset(%struct.mt6358_priv* %32)
  %34 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %35 = call i32 @capture_gpio_reset(%struct.mt6358_priv* %34)
  ret i32 0
}

declare dso_local %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mt6358_set_topck(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_set_clksq(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_set_aud_global_bias(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_set_dcxo(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_mtkaif_tx_disable(%struct.mt6358_priv*) #1

declare dso_local i32 @playback_gpio_reset(%struct.mt6358_priv*) #1

declare dso_local i32 @capture_gpio_reset(%struct.mt6358_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

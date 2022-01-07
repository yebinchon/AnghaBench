; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_mtkaif_calibration_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_mtkaif_calibration_enable.c"
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
define dso_local i32 @mt6358_mtkaif_calibration_enable(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.mt6358_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.mt6358_priv* %5, %struct.mt6358_priv** %3, align 8
  %6 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %7 = call i32 @playback_gpio_set(%struct.mt6358_priv* %6)
  %8 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %9 = call i32 @capture_gpio_set(%struct.mt6358_priv* %8)
  %10 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %11 = call i32 @mt6358_mtkaif_tx_enable(%struct.mt6358_priv* %10)
  %12 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %13 = call i32 @mt6358_set_dcxo(%struct.mt6358_priv* %12, i32 1)
  %14 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %15 = call i32 @mt6358_set_aud_global_bias(%struct.mt6358_priv* %14, i32 1)
  %16 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %17 = call i32 @mt6358_set_clksq(%struct.mt6358_priv* %16, i32 1)
  %18 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %19 = call i32 @mt6358_set_topck(%struct.mt6358_priv* %18, i32 1)
  %20 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MT6358_AUDIO_DIG_CFG, align 4
  %24 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_MASK_SFT, align 4
  %25 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO2_LOOPBACK_SFT, align 4
  %26 = shl i32 1, %25
  %27 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %26)
  %28 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MT6358_AUDIO_DIG_CFG, align 4
  %32 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_MASK_SFT, align 4
  %33 = load i32, i32* @RG_AUD_PAD_TOP_DAT_MISO_LOOPBACK_SFT, align 4
  %34 = shl i32 1, %33
  %35 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %34)
  ret i32 0
}

declare dso_local %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @playback_gpio_set(%struct.mt6358_priv*) #1

declare dso_local i32 @capture_gpio_set(%struct.mt6358_priv*) #1

declare dso_local i32 @mt6358_mtkaif_tx_enable(%struct.mt6358_priv*) #1

declare dso_local i32 @mt6358_set_dcxo(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_set_aud_global_bias(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_set_clksq(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @mt6358_set_topck(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

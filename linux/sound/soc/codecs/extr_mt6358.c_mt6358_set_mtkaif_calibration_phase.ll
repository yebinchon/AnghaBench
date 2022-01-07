; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_set_mtkaif_calibration_phase.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_set_mtkaif_calibration_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.mt6358_priv = type { i32 }

@MT6358_AUDIO_DIG_CFG = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_PHASE_MODE_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_PHASE_MODE_SFT = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_PHASE_MODE2_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUD_PAD_TOP_PHASE_MODE2_SFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt6358_set_mtkaif_calibration_phase(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt6358_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.mt6358_priv* %9, %struct.mt6358_priv** %7, align 8
  %10 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %11 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MT6358_AUDIO_DIG_CFG, align 4
  %14 = load i32, i32* @RG_AUD_PAD_TOP_PHASE_MODE_MASK_SFT, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RG_AUD_PAD_TOP_PHASE_MODE_SFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MT6358_AUDIO_DIG_CFG, align 4
  %23 = load i32, i32* @RG_AUD_PAD_TOP_PHASE_MODE2_MASK_SFT, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @RG_AUD_PAD_TOP_PHASE_MODE2_SFT, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %26)
  ret i32 0
}

declare dso_local %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

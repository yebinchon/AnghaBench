; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_spk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_spk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32, i32* }

@MT6358_AUDDEC_ANA_CON0 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON7 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON13 = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HPOUTL = common dso_local global i64 0, align 8
@DL_GAIN_N_40DB = common dso_local global i32 0, align 4
@MT6358_ZCD_CON1 = common dso_local global i32 0, align 4
@DL_GAIN_REG_MASK = common dso_local global i32 0, align 4
@DL_GAIN_N_40DB_REG = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON1 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON9 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON12 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON15 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON14 = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON3 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt6358_priv*)* @mtk_hp_spk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hp_spk_disable(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %7 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 3840, i32 0)
  %8 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %12 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 12, i32 0)
  %13 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %17 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 15, i32 0)
  %18 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MT6358_AUDDEC_ANA_CON13, align 4
  %22 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 1, i32 0)
  %23 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %24 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %25 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @AUDIO_ANALOG_VOLUME_HPOUTL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DL_GAIN_N_40DB, align 4
  %31 = call i32 @headset_volume_ramp(%struct.mt6358_priv* %23, i32 %29, i32 %30)
  %32 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %33 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MT6358_ZCD_CON1, align 4
  %36 = load i32, i32* @DL_GAIN_REG_MASK, align 4
  %37 = load i32, i32* @DL_GAIN_N_40DB_REG, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %40 = call i32 @hp_main_output_ramp(%struct.mt6358_priv* %39, i32 0)
  %41 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %42 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %45 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 3, i32 0)
  %46 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %47 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 16323)
  %51 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %52 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 16335)
  %56 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %57 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 16383)
  %61 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %62 = call i32 @hp_aux_feedback_loop_gain_ramp(%struct.mt6358_priv* %61, i32 0)
  %63 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %67 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 48, i32 0)
  %68 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %69 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %72 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 1, i32 0)
  %73 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %74 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %77 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 192, i32 0)
  %78 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %79 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %82 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 2, i32 0)
  %83 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %84 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %87 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 65280, i32 0)
  %88 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %89 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MT6358_AUDDEC_ANA_CON12, align 4
  %92 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 256, i32 256)
  %93 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %94 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MT6358_AUDDEC_ANA_CON15, align 4
  %97 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 1, i32 0)
  %98 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %99 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MT6358_AUDDEC_ANA_CON14, align 4
  %102 = call i32 @regmap_update_bits(i32 %100, i32 %101, i32 4181, i32 0)
  %103 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %104 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON3, align 4
  %107 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 1, i32 1)
  %108 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %109 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MT6358_AUDDEC_ANA_CON4, align 4
  %112 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 64, i32 0)
  %113 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %114 = call i32 @hp_pull_down(%struct.mt6358_priv* %113, i32 0)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @headset_volume_ramp(%struct.mt6358_priv*, i32, i32) #1

declare dso_local i32 @hp_main_output_ramp(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @hp_aux_feedback_loop_gain_ramp(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @hp_pull_down(%struct.mt6358_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

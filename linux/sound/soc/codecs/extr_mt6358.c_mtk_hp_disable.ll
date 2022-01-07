; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32, i32* }

@MT6358_AUDDEC_ANA_CON0 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON9 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON13 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON1 = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HPOUTL = common dso_local global i64 0, align 8
@DL_GAIN_N_40DB = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON12 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON15 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON14 = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON3 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON2 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt6358_priv*)* @mtk_hp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hp_disable(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = call i32 @hp_pull_down(%struct.mt6358_priv* %3, i32 1)
  %5 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %9 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 3840, i32 0)
  %10 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %14 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 1, i32 0)
  %15 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %19 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 15, i32 0)
  %20 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %21 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MT6358_AUDDEC_ANA_CON13, align 4
  %24 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 1, i32 0)
  %25 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %29 = call i32 @regmap_write(i32 %27, i32 %28, i32 16323)
  %30 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %31 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %34 = call i32 @regmap_write(i32 %32, i32 %33, i32 16335)
  %35 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %36 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %37 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @AUDIO_ANALOG_VOLUME_HPOUTL, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DL_GAIN_N_40DB, align 4
  %43 = call i32 @headset_volume_ramp(%struct.mt6358_priv* %35, i32 %41, i32 %42)
  %44 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %48 = call i32 @regmap_write(i32 %46, i32 %47, i32 16383)
  %49 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %50 = call i32 @hp_aux_feedback_loop_gain_ramp(%struct.mt6358_priv* %49, i32 0)
  %51 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %52 = call i32 @hp_main_output_ramp(%struct.mt6358_priv* %51, i32 0)
  %53 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %54 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %57 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 3, i32 0)
  %58 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %59 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %62 = call i32 @regmap_write(i32 %60, i32 %61, i32 3584)
  %63 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 3072)
  %68 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %69 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %72 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 192, i32 0)
  %73 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %74 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %77 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 48, i32 0)
  %78 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %79 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %82 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 192, i32 0)
  %83 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %84 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %87 = call i32 @regmap_write(i32 %85, i32 %86, i32 0)
  %88 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %89 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %92 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 48, i32 0)
  %93 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %94 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %97 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 12, i32 0)
  %98 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %99 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MT6358_AUDDEC_ANA_CON12, align 4
  %102 = call i32 @regmap_update_bits(i32 %100, i32 %101, i32 256, i32 256)
  %103 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %104 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MT6358_AUDDEC_ANA_CON15, align 4
  %107 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 1, i32 0)
  %108 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %109 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MT6358_AUDDEC_ANA_CON14, align 4
  %112 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 4181, i32 0)
  %113 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %114 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON3, align 4
  %117 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 1, i32 1)
  %118 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %119 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @MT6358_AUDDEC_ANA_CON2, align 4
  %122 = call i32 @regmap_update_bits(i32 %120, i32 %121, i32 16384, i32 0)
  %123 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %124 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MT6358_AUDDEC_ANA_CON4, align 4
  %127 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 64, i32 0)
  %128 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %129 = call i32 @hp_pull_down(%struct.mt6358_priv* %128, i32 0)
  ret i32 0
}

declare dso_local i32 @hp_pull_down(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @headset_volume_ramp(%struct.mt6358_priv*, i32, i32) #1

declare dso_local i32 @hp_aux_feedback_loop_gain_ramp(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @hp_main_output_ramp(%struct.mt6358_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

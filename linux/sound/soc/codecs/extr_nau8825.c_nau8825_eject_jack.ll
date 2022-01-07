; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_eject_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_eject_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { %struct.regmap*, %struct.snd_soc_dapm_context* }
%struct.regmap = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"SAR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@NAU8825_REG_MIC_BIAS = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_JKSLV = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_JKR2 = common dso_local global i32 0, align 4
@NAU8825_REG_HSD_CTRL = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_DIS_CTRL = common dso_local global i32 0, align 4
@NAU8825_IRQ_EJECT_DIS = common dso_local global i32 0, align 4
@NAU8825_IRQ_INSERT_DIS = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_OUTPUT_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_EJECT_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_HEADSET_COMPLETE_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@NAU8825_REG_JACK_DET_CTRL = common dso_local global i32 0, align 4
@NAU8825_JACK_DET_DB_BYPASS = common dso_local global i32 0, align 4
@NAU8825_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC = common dso_local global i32 0, align 4
@NAU8825_CLK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_eject_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_eject_jack(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %5 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %6 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %5, i32 0, i32 1
  %7 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %3, align 8
  %8 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %9 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %12 = call i32 @nau8825_xtalk_cancel(%struct.nau8825* %11)
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %14 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %16 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.regmap*, %struct.regmap** %4, align 8
  %18 = load i32, i32* @NAU8825_REG_MIC_BIAS, align 4
  %19 = load i32, i32* @NAU8825_MICBIAS_JKSLV, align 4
  %20 = load i32, i32* @NAU8825_MICBIAS_JKR2, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @regmap_update_bits(%struct.regmap* %17, i32 %18, i32 %21, i32 0)
  %23 = load %struct.regmap*, %struct.regmap** %4, align 8
  %24 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %24, i32 15, i32 15)
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %27 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %26)
  %28 = load %struct.regmap*, %struct.regmap** %4, align 8
  %29 = call i32 @nau8825_int_status_clear_all(%struct.regmap* %28)
  %30 = load %struct.regmap*, %struct.regmap** %4, align 8
  %31 = load i32, i32* @NAU8825_REG_INTERRUPT_DIS_CTRL, align 4
  %32 = load i32, i32* @NAU8825_IRQ_EJECT_DIS, align 4
  %33 = load i32, i32* @NAU8825_IRQ_INSERT_DIS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NAU8825_IRQ_EJECT_DIS, align 4
  %36 = call i32 @regmap_update_bits(%struct.regmap* %30, i32 %31, i32 %34, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %4, align 8
  %38 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %39 = load i32, i32* @NAU8825_IRQ_OUTPUT_EN, align 4
  %40 = load i32, i32* @NAU8825_IRQ_EJECT_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NAU8825_IRQ_HEADSET_COMPLETE_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NAU8825_IRQ_INSERT_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NAU8825_IRQ_OUTPUT_EN, align 4
  %47 = load i32, i32* @NAU8825_IRQ_EJECT_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @NAU8825_IRQ_HEADSET_COMPLETE_EN, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @regmap_update_bits(%struct.regmap* %37, i32 %38, i32 %45, i32 %50)
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %54 = load i32, i32* @NAU8825_JACK_DET_DB_BYPASS, align 4
  %55 = load i32, i32* @NAU8825_JACK_DET_DB_BYPASS, align 4
  %56 = call i32 @regmap_update_bits(%struct.regmap* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.regmap*, %struct.regmap** %4, align 8
  %58 = load i32, i32* @NAU8825_REG_ENA_CTRL, align 4
  %59 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %60 = call i32 @regmap_update_bits(%struct.regmap* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %62 = load i32, i32* @NAU8825_CLK_DIS, align 4
  %63 = call i32 @nau8825_configure_sysclk(%struct.nau8825* %61, i32 %62, i32 0)
  ret void
}

declare dso_local i32 @nau8825_xtalk_cancel(%struct.nau8825*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @nau8825_int_status_clear_all(%struct.regmap*) #1

declare dso_local i32 @nau8825_configure_sysclk(%struct.nau8825*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

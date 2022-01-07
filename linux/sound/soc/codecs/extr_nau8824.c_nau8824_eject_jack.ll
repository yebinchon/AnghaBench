; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_eject_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_eject_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8824 = type { %struct.regmap*, %struct.snd_soc_dapm_context* }
%struct.regmap = type { i32 }
%struct.snd_soc_dapm_context = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"SAR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@NAU8824_REG_INTERRUPT_SETTING = common dso_local global i32 0, align 4
@NAU8824_IRQ_KEY_RELEASE_DIS = common dso_local global i32 0, align 4
@NAU8824_IRQ_KEY_SHORT_PRESS_DIS = common dso_local global i32 0, align 4
@NAU8824_IRQ_EJECT_DIS = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_DIS = common dso_local global i32 0, align 4
@NAU8824_REG_INTERRUPT_SETTING_1 = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@NAU8824_IRQ_EJECT_EN = common dso_local global i32 0, align 4
@NAU8824_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8824_JD_SLEEP_MODE = common dso_local global i32 0, align 4
@SND_SOC_BIAS_PREPARE = common dso_local global i64 0, align 8
@NAU8824_CLK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8824*)* @nau8824_eject_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8824_eject_jack(%struct.nau8824* %0) #0 {
  %2 = alloca %struct.nau8824*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.nau8824* %0, %struct.nau8824** %2, align 8
  %5 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %6 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %5, i32 0, i32 1
  %7 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %3, align 8
  %8 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %9 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = call i32 @nau8824_int_status_clear_all(%struct.regmap* %11)
  %13 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %14 = call i32 @nau8824_dapm_disable_pin(%struct.nau8824* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %16 = call i32 @nau8824_dapm_disable_pin(%struct.nau8824* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %18 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %17)
  %19 = load %struct.regmap*, %struct.regmap** %4, align 8
  %20 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING, align 4
  %21 = load i32, i32* @NAU8824_IRQ_KEY_RELEASE_DIS, align 4
  %22 = load i32, i32* @NAU8824_IRQ_KEY_SHORT_PRESS_DIS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NAU8824_IRQ_EJECT_DIS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NAU8824_IRQ_INSERT_DIS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NAU8824_IRQ_KEY_RELEASE_DIS, align 4
  %29 = load i32, i32* @NAU8824_IRQ_KEY_SHORT_PRESS_DIS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NAU8824_IRQ_EJECT_DIS, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @regmap_update_bits(%struct.regmap* %19, i32 %20, i32 %27, i32 %32)
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING_1, align 4
  %36 = load i32, i32* @NAU8824_IRQ_INSERT_EN, align 4
  %37 = load i32, i32* @NAU8824_IRQ_EJECT_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @NAU8824_IRQ_INSERT_EN, align 4
  %40 = call i32 @regmap_update_bits(%struct.regmap* %34, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %4, align 8
  %42 = load i32, i32* @NAU8824_REG_ENA_CTRL, align 4
  %43 = load i32, i32* @NAU8824_JD_SLEEP_MODE, align 4
  %44 = load i32, i32* @NAU8824_JD_SLEEP_MODE, align 4
  %45 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SND_SOC_BIAS_PREPARE, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %53 = load i32, i32* @NAU8824_CLK_DIS, align 4
  %54 = call i32 @nau8824_config_sysclk(%struct.nau8824* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @nau8824_int_status_clear_all(%struct.regmap*) #1

declare dso_local i32 @nau8824_dapm_disable_pin(%struct.nau8824*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @nau8824_config_sysclk(%struct.nau8824*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

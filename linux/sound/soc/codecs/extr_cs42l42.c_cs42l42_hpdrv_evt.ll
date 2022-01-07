; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_hpdrv_evt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_hpdrv_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@CS42L42_ASP_RX_DAI0_EN = common dso_local global i32 0, align 4
@CS42L42_ASP_RX0_CH_EN_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_RX0_CH1_EN = common dso_local global i32 0, align 4
@CS42L42_ASP_RX0_CH2_EN = common dso_local global i32 0, align 4
@CS42L42_ASP_RX0_CH_EN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PWR_CTL1 = common dso_local global i32 0, align 4
@CS42L42_ASP_DAI_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_MIXER_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_HP_PDN_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid event 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs42l42_hpdrv_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_hpdrv_evt(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @CS42L42_ASP_RX_DAI0_EN, align 4
  %19 = load i32, i32* @CS42L42_ASP_RX0_CH_EN_MASK, align 4
  %20 = load i32, i32* @CS42L42_ASP_RX0_CH1_EN, align 4
  %21 = load i32, i32* @CS42L42_ASP_RX0_CH2_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CS42L42_ASP_RX0_CH_EN_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = load i32, i32* @CS42L42_PWR_CTL1, align 4
  %28 = load i32, i32* @CS42L42_ASP_DAI_PDN_MASK, align 4
  %29 = load i32, i32* @CS42L42_MIXER_PDN_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CS42L42_HP_PDN_MASK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %32, i32 0)
  br label %64

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %41 = load i32, i32* @CS42L42_ASP_RX_DAI0_EN, align 4
  %42 = load i32, i32* @CS42L42_ASP_RX0_CH_EN_MASK, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %45 = load i32, i32* @CS42L42_PWR_CTL1, align 4
  %46 = load i32, i32* @CS42L42_ASP_DAI_PDN_MASK, align 4
  %47 = load i32, i32* @CS42L42_MIXER_PDN_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CS42L42_HP_PDN_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CS42L42_ASP_DAI_PDN_MASK, align 4
  %52 = load i32, i32* @CS42L42_MIXER_PDN_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CS42L42_HP_PDN_MASK, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %50, i32 %55)
  br label %63

57:                                               ; preds = %34
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %39
  br label %64

64:                                               ; preds = %63, %16
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_adc_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_adc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@DA732X_REG_CLK_EN3 = common dso_local global i32 0, align 4
@DA732X_ADCA_BB_CLK_EN = common dso_local global i32 0, align 4
@DA732X_ADCC_BB_CLK_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA732X_ADC_RST_MASK = common dso_local global i32 0, align 4
@DA732X_ADC_SET_ACT = common dso_local global i32 0, align 4
@DA732X_ADC_PD_MASK = common dso_local global i32 0, align 4
@DA732X_ADC_ON = common dso_local global i32 0, align 4
@DA732X_ADC_OFF = common dso_local global i32 0, align 4
@DA732X_ADC_SET_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @da732x_adc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da732x_adc_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %80 [
    i32 128, label %14
    i32 129, label %48
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %30 [
    i32 131, label %18
    i32 130, label %24
  ]

18:                                               ; preds = %14
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = load i32, i32* @DA732X_REG_CLK_EN3, align 4
  %21 = load i32, i32* @DA732X_ADCA_BB_CLK_EN, align 4
  %22 = load i32, i32* @DA732X_ADCA_BB_CLK_EN, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %22)
  br label %33

24:                                               ; preds = %14
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %26 = load i32, i32* @DA732X_REG_CLK_EN3, align 4
  %27 = load i32, i32* @DA732X_ADCC_BB_CLK_EN, align 4
  %28 = load i32, i32* @DA732X_ADCC_BB_CLK_EN, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  br label %33

30:                                               ; preds = %14
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %84

33:                                               ; preds = %24, %18
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DA732X_ADC_RST_MASK, align 4
  %39 = load i32, i32* @DA732X_ADC_SET_ACT, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DA732X_ADC_PD_MASK, align 4
  %46 = load i32, i32* @DA732X_ADC_ON, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %44, i32 %45, i32 %46)
  br label %83

48:                                               ; preds = %3
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DA732X_ADC_PD_MASK, align 4
  %54 = load i32, i32* @DA732X_ADC_OFF, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %57 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DA732X_ADC_RST_MASK, align 4
  %61 = load i32, i32* @DA732X_ADC_SET_RST, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %76 [
    i32 131, label %66
    i32 130, label %71
  ]

66:                                               ; preds = %48
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = load i32, i32* @DA732X_REG_CLK_EN3, align 4
  %69 = load i32, i32* @DA732X_ADCA_BB_CLK_EN, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 0)
  br label %79

71:                                               ; preds = %48
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %73 = load i32, i32* @DA732X_REG_CLK_EN3, align 4
  %74 = load i32, i32* @DA732X_ADCC_BB_CLK_EN, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 0)
  br label %79

76:                                               ; preds = %48
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %84

79:                                               ; preds = %71, %66
  br label %83

80:                                               ; preds = %3
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %79, %33
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80, %76, %30
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

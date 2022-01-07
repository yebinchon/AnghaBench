; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.aic31xx_priv = type { i32 }

@DAC31XX_BIT = common dso_local global i32 0, align 4
@dac31xx_dapm_widgets = common dso_local global i32 0, align 4
@dac31xx_audio_map = common dso_local global i32 0, align 4
@aic31xx_dapm_widgets = common dso_local global i32 0, align 4
@aic31xx_audio_map = common dso_local global i32 0, align 4
@AIC31XX_STEREO_CLASS_D_BIT = common dso_local global i32 0, align 4
@aic311x_dapm_widgets = common dso_local global i32 0, align 4
@aic311x_audio_map = common dso_local global i32 0, align 4
@aic310x_dapm_widgets = common dso_local global i32 0, align 4
@aic310x_audio_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic31xx_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic31xx_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.aic31xx_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.aic31xx_priv* %10, %struct.aic31xx_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DAC31XX_BIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %19 = load i32, i32* @dac31xx_dapm_widgets, align 4
  %20 = load i32, i32* @dac31xx_dapm_widgets, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %18, i32 %19, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %109

27:                                               ; preds = %17
  %28 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %29 = load i32, i32* @dac31xx_audio_map, align 4
  %30 = load i32, i32* @dac31xx_audio_map, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %28, i32 %29, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %109

37:                                               ; preds = %27
  br label %59

38:                                               ; preds = %1
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %40 = load i32, i32* @aic31xx_dapm_widgets, align 4
  %41 = load i32, i32* @aic31xx_dapm_widgets, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %39, i32 %40, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %109

48:                                               ; preds = %38
  %49 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %50 = load i32, i32* @aic31xx_audio_map, align 4
  %51 = load i32, i32* @aic31xx_audio_map, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %49, i32 %50, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %109

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %5, align 8
  %61 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AIC31XX_STEREO_CLASS_D_BIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %68 = load i32, i32* @aic311x_dapm_widgets, align 4
  %69 = load i32, i32* @aic311x_dapm_widgets, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %67, i32 %68, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %109

76:                                               ; preds = %66
  %77 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %78 = load i32, i32* @aic311x_audio_map, align 4
  %79 = load i32, i32* @aic311x_audio_map, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %77, i32 %78, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %109

86:                                               ; preds = %76
  br label %108

87:                                               ; preds = %59
  %88 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %89 = load i32, i32* @aic310x_dapm_widgets, align 4
  %90 = load i32, i32* @aic310x_dapm_widgets, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %88, i32 %89, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %109

97:                                               ; preds = %87
  %98 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %99 = load i32, i32* @aic310x_audio_map, align 4
  %100 = load i32, i32* @aic310x_audio_map, align 4
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %98, i32 %99, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %109

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %86
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %105, %95, %84, %74, %56, %46, %35, %25
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_micinput_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_micinput_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32 }

@M98090_REG_MIC1_INPUT_LEVEL = common dso_local global i32 0, align 4
@M98090_MIC_PA1EN_MASK = common dso_local global i32 0, align 4
@M98090_MIC_PA1EN_SHIFT = common dso_local global i32 0, align 4
@M98090_MIC_PA2EN_MASK = common dso_local global i32 0, align 4
@M98090_MIC_PA2EN_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @max98090_micinput_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_micinput_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98090_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.max98090_priv* %16, %struct.max98090_priv** %9, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @M98090_REG_MIC1_INPUT_LEVEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @M98090_MIC_PA1EN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @M98090_MIC_PA1EN_SHIFT, align 4
  %32 = lshr i32 %30, %31
  store i32 %32, i32* %10, align 4
  br label %39

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @M98090_MIC_PA2EN_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @M98090_MIC_PA2EN_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* %10, align 4
  %41 = icmp uge i32 %40, 1
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @M98090_REG_MIC1_INPUT_LEVEL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %49, 1
  %51 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %52 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %54, 1
  %56 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %57 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %79 [
    i32 128, label %61
    i32 129, label %78
  ]

61:                                               ; preds = %59
  %62 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @M98090_REG_MIC1_INPUT_LEVEL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %69 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %77

72:                                               ; preds = %61
  %73 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %74 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %67
  br label %82

78:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %82

79:                                               ; preds = %59
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %109

82:                                               ; preds = %78, %77
  %83 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @M98090_REG_MIC1_INPUT_LEVEL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %90 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @M98090_MIC_PA1EN_MASK, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @M98090_MIC_PA1EN_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %92, i32 %93, i32 %96)
  br label %108

98:                                               ; preds = %82
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %100 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @M98090_MIC_PA2EN_MASK, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @M98090_MIC_PA2EN_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %99, i32 %102, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %98, %88
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %79
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

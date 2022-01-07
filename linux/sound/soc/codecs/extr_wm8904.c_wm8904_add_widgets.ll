; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@wm8904_core_dapm_widgets = common dso_local global i32 0, align 4
@core_intercon = common dso_local global i32 0, align 4
@wm8904_adc_snd_controls = common dso_local global i32 0, align 4
@wm8904_dac_snd_controls = common dso_local global i32 0, align 4
@wm8904_snd_controls = common dso_local global i32 0, align 4
@wm8904_adc_dapm_widgets = common dso_local global i32 0, align 4
@wm8904_dac_dapm_widgets = common dso_local global i32 0, align 4
@wm8904_dapm_widgets = common dso_local global i32 0, align 4
@adc_intercon = common dso_local global i32 0, align 4
@dac_intercon = common dso_local global i32 0, align 4
@wm8904_intercon = common dso_local global i32 0, align 4
@wm8912_intercon = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8904_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8904_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8904_priv* %6, %struct.wm8904_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load i32, i32* @wm8904_core_dapm_widgets, align 4
  %11 = load i32, i32* @wm8904_core_dapm_widgets, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %9, i32 %10, i32 %12)
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %15 = load i32, i32* @core_intercon, align 4
  %16 = load i32, i32* @core_intercon, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %14, i32 %15, i32 %17)
  %19 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %20 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %89 [
    i32 129, label %22
    i32 128, label %68
  ]

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = load i32, i32* @wm8904_adc_snd_controls, align 4
  %25 = load i32, i32* @wm8904_adc_snd_controls, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %23, i32 %24, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @wm8904_dac_snd_controls, align 4
  %30 = load i32, i32* @wm8904_dac_snd_controls, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %28, i32 %29, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @wm8904_snd_controls, align 4
  %35 = load i32, i32* @wm8904_snd_controls, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %33, i32 %34, i32 %36)
  %38 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %39 = load i32, i32* @wm8904_adc_dapm_widgets, align 4
  %40 = load i32, i32* @wm8904_adc_dapm_widgets, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %38, i32 %39, i32 %41)
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %44 = load i32, i32* @wm8904_dac_dapm_widgets, align 4
  %45 = load i32, i32* @wm8904_dac_dapm_widgets, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %43, i32 %44, i32 %46)
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %49 = load i32, i32* @wm8904_dapm_widgets, align 4
  %50 = load i32, i32* @wm8904_dapm_widgets, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %48, i32 %49, i32 %51)
  %53 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %54 = load i32, i32* @adc_intercon, align 4
  %55 = load i32, i32* @adc_intercon, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %53, i32 %54, i32 %56)
  %58 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %59 = load i32, i32* @dac_intercon, align 4
  %60 = load i32, i32* @dac_intercon, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %58, i32 %59, i32 %61)
  %63 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %64 = load i32, i32* @wm8904_intercon, align 4
  %65 = load i32, i32* @wm8904_intercon, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %63, i32 %64, i32 %66)
  br label %89

68:                                               ; preds = %1
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %70 = load i32, i32* @wm8904_dac_snd_controls, align 4
  %71 = load i32, i32* @wm8904_dac_snd_controls, align 4
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %69, i32 %70, i32 %72)
  %74 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %75 = load i32, i32* @wm8904_dac_dapm_widgets, align 4
  %76 = load i32, i32* @wm8904_dac_dapm_widgets, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %74, i32 %75, i32 %77)
  %79 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %80 = load i32, i32* @dac_intercon, align 4
  %81 = load i32, i32* @dac_intercon, align 4
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %79, i32 %80, i32 %82)
  %84 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %85 = load i32, i32* @wm8912_intercon, align 4
  %86 = load i32, i32* @wm8912_intercon, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %1, %68, %22
  ret i32 0
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

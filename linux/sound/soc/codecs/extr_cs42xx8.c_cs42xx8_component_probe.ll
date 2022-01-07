; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs42xx8_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@cs42xx8_adc3_snd_controls = common dso_local global i32 0, align 4
@cs42xx8_adc3_dapm_widgets = common dso_local global i32 0, align 4
@cs42xx8_adc3_dapm_routes = common dso_local global i32 0, align 4
@CS42XX8_DACMUTE = common dso_local global i32 0, align 4
@CS42XX8_DACMUTE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs42xx8_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42xx8_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cs42xx8_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.cs42xx8_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.cs42xx8_priv* %6, %struct.cs42xx8_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %3, align 8
  %10 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 3, label %14
  ]

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @cs42xx8_adc3_snd_controls, align 4
  %17 = load i32, i32* @cs42xx8_adc3_snd_controls, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %15, i32 %16, i32 %18)
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %21 = load i32, i32* @cs42xx8_adc3_dapm_widgets, align 4
  %22 = load i32, i32* @cs42xx8_adc3_dapm_widgets, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %20, i32 %21, i32 %23)
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %26 = load i32, i32* @cs42xx8_adc3_dapm_routes, align 4
  %27 = load i32, i32* @cs42xx8_adc3_dapm_routes, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %25, i32 %26, i32 %28)
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %3, align 8
  %33 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CS42XX8_DACMUTE, align 4
  %36 = load i32, i32* @CS42XX8_DACMUTE_ALL, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  ret i32 0
}

declare dso_local %struct.cs42xx8_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

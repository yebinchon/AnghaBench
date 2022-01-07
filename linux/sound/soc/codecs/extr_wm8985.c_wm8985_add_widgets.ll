; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8985_priv = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@wm8758_dapm_widgets = common dso_local global i32 0, align 4
@wm8985_specific_snd_controls = common dso_local global i32 0, align 4
@wm8985_dapm_widgets = common dso_local global i32 0, align 4
@wm8985_aux_dapm_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8985_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8985_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8985_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm8985_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8985_priv* %6, %struct.wm8985_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.wm8985_priv*, %struct.wm8985_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %14 = load i32, i32* @wm8758_dapm_widgets, align 4
  %15 = load i32, i32* @wm8758_dapm_widgets, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %13, i32 %14, i32 %16)
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = load i32, i32* @wm8985_specific_snd_controls, align 4
  %21 = load i32, i32* @wm8985_specific_snd_controls, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %19, i32 %20, i32 %22)
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %25 = load i32, i32* @wm8985_dapm_widgets, align 4
  %26 = load i32, i32* @wm8985_dapm_widgets, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %24, i32 %25, i32 %27)
  %29 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %30 = load i32, i32* @wm8985_aux_dapm_routes, align 4
  %31 = load i32, i32* @wm8985_aux_dapm_routes, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %1, %18, %12
  ret i32 0
}

declare dso_local %struct.wm8985_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

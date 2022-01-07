; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5663_priv = type { i32, i32, %struct.snd_soc_component* }

@rt5663_v2_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5663_v2_specific_dapm_routes = common dso_local global i32 0, align 4
@rt5663_v2_specific_controls = common dso_local global i32 0, align 4
@rt5663_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5663_specific_dapm_routes = common dso_local global i32 0, align 4
@rt5663_specific_controls = common dso_local global i32 0, align 4
@rt5663_hpvol_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5663_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.rt5663_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %5)
  store %struct.snd_soc_dapm_context* %6, %struct.snd_soc_dapm_context** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.rt5663_priv* %8, %struct.rt5663_priv** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = load %struct.rt5663_priv*, %struct.rt5663_priv** %4, align 8
  %11 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %10, i32 0, i32 2
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %11, align 8
  %12 = load %struct.rt5663_priv*, %struct.rt5663_priv** %4, align 8
  %13 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %58 [
    i32 128, label %15
    i32 129, label %31
  ]

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %17 = load i32, i32* @rt5663_v2_specific_dapm_widgets, align 4
  %18 = load i32, i32* @rt5663_v2_specific_dapm_widgets, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %16, i32 %17, i32 %19)
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %22 = load i32, i32* @rt5663_v2_specific_dapm_routes, align 4
  %23 = load i32, i32* @rt5663_v2_specific_dapm_routes, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %21, i32 %22, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @rt5663_v2_specific_controls, align 4
  %28 = load i32, i32* @rt5663_v2_specific_controls, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %26, i32 %27, i32 %29)
  br label %58

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %33 = load i32, i32* @rt5663_specific_dapm_widgets, align 4
  %34 = load i32, i32* @rt5663_specific_dapm_widgets, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %32, i32 %33, i32 %35)
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %38 = load i32, i32* @rt5663_specific_dapm_routes, align 4
  %39 = load i32, i32* @rt5663_specific_dapm_routes, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %37, i32 %38, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %43 = load i32, i32* @rt5663_specific_controls, align 4
  %44 = load i32, i32* @rt5663_specific_controls, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %42, i32 %43, i32 %45)
  %47 = load %struct.rt5663_priv*, %struct.rt5663_priv** %4, align 8
  %48 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %31
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %53 = load i32, i32* @rt5663_hpvol_controls, align 4
  %54 = load i32, i32* @rt5663_hpvol_controls, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %51, %31
  br label %58

58:                                               ; preds = %1, %57, %15
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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

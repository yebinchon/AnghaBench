; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }

@max98090_snd_controls = common dso_local global i32 0, align 4
@MAX98091 = common dso_local global i64 0, align 8
@max98091_snd_controls = common dso_local global i32 0, align 4
@max98090_dapm_widgets = common dso_local global i32 0, align 4
@max98090_dapm_routes = common dso_local global i32 0, align 4
@max98091_dapm_widgets = common dso_local global i32 0, align 4
@max98091_dapm_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98090_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98090_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.max98090_priv* %6, %struct.max98090_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = load i32, i32* @max98090_snd_controls, align 4
  %11 = load i32, i32* @max98090_snd_controls, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %9, i32 %10, i32 %12)
  %14 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %15 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX98091, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @max98091_snd_controls, align 4
  %22 = load i32, i32* @max98091_snd_controls, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %20, i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %27 = load i32, i32* @max98090_dapm_widgets, align 4
  %28 = load i32, i32* @max98090_dapm_widgets, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %26, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %32 = load i32, i32* @max98090_dapm_routes, align 4
  %33 = load i32, i32* @max98090_dapm_routes, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %31, i32 %32, i32 %34)
  %36 = load %struct.max98090_priv*, %struct.max98090_priv** %3, align 8
  %37 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAX98091, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %25
  %42 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %43 = load i32, i32* @max98091_dapm_widgets, align 4
  %44 = load i32, i32* @max98091_dapm_widgets, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %42, i32 %43, i32 %45)
  %47 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %48 = load i32, i32* @max98091_dapm_routes, align 4
  %49 = load i32, i32* @max98091_dapm_routes, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %47, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %41, %25
  ret i32 0
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

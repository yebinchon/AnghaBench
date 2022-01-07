; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5670_priv = type { %struct.snd_soc_component* }

@RT5670_RESET = common dso_local global i32 0, align 4
@RT5670_ID_MASK = common dso_local global i32 0, align 4
@rt5670_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5670_specific_dapm_routes = common dso_local global i32 0, align 4
@rt5672_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5672_specific_dapm_routes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"The driver is for RT5670 RT5671 or RT5672 only\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5670_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.rt5670_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %6)
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5670_priv* %9, %struct.rt5670_priv** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @RT5670_RESET, align 4
  %12 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %10, i32 %11)
  %13 = load i32, i32* @RT5670_ID_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %37 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %26
  ]

15:                                               ; preds = %1, %1
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %17 = load i32, i32* @rt5670_specific_dapm_widgets, align 4
  %18 = load i32, i32* @rt5670_specific_dapm_widgets, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %16, i32 %17, i32 %19)
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %22 = load i32, i32* @rt5670_specific_dapm_routes, align 4
  %23 = load i32, i32* @rt5670_specific_dapm_routes, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %21, i32 %22, i32 %24)
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %28 = load i32, i32* @rt5672_specific_dapm_widgets, align 4
  %29 = load i32, i32* @rt5672_specific_dapm_widgets, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %27, i32 %28, i32 %30)
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %33 = load i32, i32* @rt5672_specific_dapm_routes, align 4
  %34 = load i32, i32* @rt5672_specific_dapm_routes, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %32, i32 %33, i32 %35)
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %26, %15
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load %struct.rt5670_priv*, %struct.rt5670_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %46, i32 0, i32 0
  store %struct.snd_soc_component* %45, %struct.snd_soc_component** %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

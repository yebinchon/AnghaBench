; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@aic3x_extra_dapm_widgets = common dso_local global i32 0, align 4
@intercon_extra = common dso_local global i32 0, align 4
@aic3x_dapm_mono_widgets = common dso_local global i32 0, align 4
@intercon_mono = common dso_local global i32 0, align 4
@aic3007_dapm_widgets = common dso_local global i32 0, align 4
@intercon_3007 = common dso_local global i32 0, align 4
@aic3104_extra_dapm_widgets = common dso_local global i32 0, align 4
@intercon_extra_3104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic3x_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.aic3x_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.aic3x_priv* %6, %struct.aic3x_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.aic3x_priv*, %struct.aic3x_priv** %3, align 8
  %10 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %65 [
    i32 128, label %12
    i32 129, label %12
    i32 131, label %33
    i32 130, label %54
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %14 = load i32, i32* @aic3x_extra_dapm_widgets, align 4
  %15 = load i32, i32* @aic3x_extra_dapm_widgets, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %13, i32 %14, i32 %16)
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %19 = load i32, i32* @intercon_extra, align 4
  %20 = load i32, i32* @intercon_extra, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %18, i32 %19, i32 %21)
  %23 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %24 = load i32, i32* @aic3x_dapm_mono_widgets, align 4
  %25 = load i32, i32* @aic3x_dapm_mono_widgets, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %23, i32 %24, i32 %26)
  %28 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %29 = load i32, i32* @intercon_mono, align 4
  %30 = load i32, i32* @intercon_mono, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %28, i32 %29, i32 %31)
  br label %65

33:                                               ; preds = %1
  %34 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %35 = load i32, i32* @aic3x_extra_dapm_widgets, align 4
  %36 = load i32, i32* @aic3x_extra_dapm_widgets, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %34, i32 %35, i32 %37)
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %40 = load i32, i32* @intercon_extra, align 4
  %41 = load i32, i32* @intercon_extra, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %39, i32 %40, i32 %42)
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %45 = load i32, i32* @aic3007_dapm_widgets, align 4
  %46 = load i32, i32* @aic3007_dapm_widgets, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %44, i32 %45, i32 %47)
  %49 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %50 = load i32, i32* @intercon_3007, align 4
  %51 = load i32, i32* @intercon_3007, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %49, i32 %50, i32 %52)
  br label %65

54:                                               ; preds = %1
  %55 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %56 = load i32, i32* @aic3104_extra_dapm_widgets, align 4
  %57 = load i32, i32* @aic3104_extra_dapm_widgets, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %55, i32 %56, i32 %58)
  %60 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %61 = load i32, i32* @intercon_extra_3104, align 4
  %62 = load i32, i32* @intercon_extra_3104, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %60, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %1, %54, %33, %12
  ret i32 0
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

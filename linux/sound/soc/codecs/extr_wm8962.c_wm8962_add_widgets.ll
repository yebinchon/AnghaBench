; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8962_priv = type { %struct.wm8962_pdata }
%struct.wm8962_pdata = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }

@wm8962_snd_controls = common dso_local global i32 0, align 4
@wm8962_spk_mono_controls = common dso_local global i32 0, align 4
@wm8962_spk_stereo_controls = common dso_local global i32 0, align 4
@wm8962_dapm_widgets = common dso_local global i32 0, align 4
@wm8962_dapm_spk_mono_widgets = common dso_local global i32 0, align 4
@wm8962_dapm_spk_stereo_widgets = common dso_local global i32 0, align 4
@wm8962_intercon = common dso_local global i32 0, align 4
@wm8962_spk_mono_intercon = common dso_local global i32 0, align 4
@wm8962_spk_stereo_intercon = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Beep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8962_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8962_priv*, align 8
  %4 = alloca %struct.wm8962_pdata*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8962_priv* %7, %struct.wm8962_priv** %3, align 8
  %8 = load %struct.wm8962_priv*, %struct.wm8962_priv** %3, align 8
  %9 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %8, i32 0, i32 0
  store %struct.wm8962_pdata* %9, %struct.wm8962_pdata** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %10)
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = load i32, i32* @wm8962_snd_controls, align 4
  %14 = load i32, i32* @wm8962_snd_controls, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %12, i32 %13, i32 %15)
  %17 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %18 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = load i32, i32* @wm8962_spk_mono_controls, align 4
  %24 = load i32, i32* @wm8962_spk_mono_controls, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %22, i32 %23, i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @wm8962_spk_stereo_controls, align 4
  %30 = load i32, i32* @wm8962_spk_stereo_controls, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %28, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %35 = load i32, i32* @wm8962_dapm_widgets, align 4
  %36 = load i32, i32* @wm8962_dapm_widgets, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %34, i32 %35, i32 %37)
  %39 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %40 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %45 = load i32, i32* @wm8962_dapm_spk_mono_widgets, align 4
  %46 = load i32, i32* @wm8962_dapm_spk_mono_widgets, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %44, i32 %45, i32 %47)
  br label %55

49:                                               ; preds = %33
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %51 = load i32, i32* @wm8962_dapm_spk_stereo_widgets, align 4
  %52 = load i32, i32* @wm8962_dapm_spk_stereo_widgets, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %57 = load i32, i32* @wm8962_intercon, align 4
  %58 = load i32, i32* @wm8962_intercon, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %56, i32 %57, i32 %59)
  %61 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %62 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %67 = load i32, i32* @wm8962_spk_mono_intercon, align 4
  %68 = load i32, i32* @wm8962_spk_mono_intercon, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %66, i32 %67, i32 %69)
  br label %77

71:                                               ; preds = %55
  %72 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %73 = load i32, i32* @wm8962_spk_stereo_intercon, align 4
  %74 = load i32, i32* @wm8962_spk_stereo_intercon, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %72, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %79 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

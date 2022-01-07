; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5645_priv = type { i32, i32, i32, %struct.TYPE_4__, %struct.snd_soc_component* }
%struct.TYPE_4__ = type { i64, i64 }

@rt5645_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5645_specific_dapm_routes = common dso_local global i32 0, align 4
@rt5645_old_dapm_routes = common dso_local global i32 0, align 4
@rt5650_specific_dapm_widgets = common dso_local global i32 0, align 4
@rt5650_specific_dapm_routes = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"JD Power\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@RT5645_HWEQ_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5645_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.rt5645_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %6)
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5645_priv* %9, %struct.rt5645_priv** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %11, i32 0, i32 4
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %12, align 8
  %13 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %49 [
    i32 129, label %16
    i32 128, label %38
  ]

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %18 = load i32, i32* @rt5645_specific_dapm_widgets, align 4
  %19 = load i32, i32* @rt5645_specific_dapm_widgets, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %17, i32 %18, i32 %20)
  %22 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %23 = load i32, i32* @rt5645_specific_dapm_routes, align 4
  %24 = load i32, i32* @rt5645_specific_dapm_routes, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %22, i32 %23, i32 %25)
  %27 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %33 = load i32, i32* @rt5645_old_dapm_routes, align 4
  %34 = load i32, i32* @rt5645_old_dapm_routes, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %16
  br label %49

38:                                               ; preds = %1
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %40 = load i32, i32* @rt5650_specific_dapm_widgets, align 4
  %41 = load i32, i32* @rt5650_specific_dapm_widgets, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %39, i32 %40, i32 %42)
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %45 = load i32, i32* @rt5650_specific_dapm_routes, align 4
  %46 = load i32, i32* @rt5650_specific_dapm_routes, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %1, %38, %37
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %52 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %50, i32 %51)
  %53 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %54 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %60 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %62 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %64 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %63)
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %67 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %73 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %77 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %75, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %65
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RT5645_HWEQ_NUM, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @devm_kcalloc(i32 %83, i32 %84, i32 4, i32 %85)
  %87 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %88 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.rt5645_priv*, %struct.rt5645_priv** %5, align 8
  %90 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9090_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64, i64, i64 }
%struct.snd_soc_dapm_context = type { i32 }

@wm9090_dapm_widgets = common dso_local global i32* null, align 8
@audio_map = common dso_local global i32* null, align 8
@wm9090_controls = common dso_local global i32* null, align 8
@audio_map_in1_diff = common dso_local global i32* null, align 8
@audio_map_in1_se = common dso_local global i32* null, align 8
@wm9090_in1_se_controls = common dso_local global i32* null, align 8
@audio_map_in2_diff = common dso_local global i32* null, align 8
@audio_map_in2_se = common dso_local global i32* null, align 8
@wm9090_in2_se_controls = common dso_local global i32* null, align 8
@WM9090_AGC_CONTROL_0 = common dso_local global i64 0, align 8
@WM9090_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4
@WM9090_AGC_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm9090_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9090_add_controls(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm9090_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.wm9090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm9090_priv* %7, %struct.wm9090_priv** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %11 = load i32*, i32** @wm9090_dapm_widgets, align 8
  %12 = load i32*, i32** @wm9090_dapm_widgets, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %10, i32* %11, i32 %13)
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %16 = load i32*, i32** @audio_map, align 8
  %17 = load i32*, i32** @audio_map, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %15, i32* %16, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32*, i32** @wm9090_controls, align 8
  %22 = load i32*, i32** @wm9090_controls, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %20, i32* %21, i32 %23)
  %25 = load %struct.wm9090_priv*, %struct.wm9090_priv** %3, align 8
  %26 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %32 = load i32*, i32** @audio_map_in1_diff, align 8
  %33 = load i32*, i32** @audio_map_in1_diff, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %31, i32* %32, i32 %34)
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %38 = load i32*, i32** @audio_map_in1_se, align 8
  %39 = load i32*, i32** @audio_map_in1_se, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %37, i32* %38, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %43 = load i32*, i32** @wm9090_in1_se_controls, align 8
  %44 = load i32*, i32** @wm9090_in1_se_controls, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %42, i32* %43, i32 %45)
  br label %47

47:                                               ; preds = %36, %30
  %48 = load %struct.wm9090_priv*, %struct.wm9090_priv** %3, align 8
  %49 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %55 = load i32*, i32** @audio_map_in2_diff, align 8
  %56 = load i32*, i32** @audio_map_in2_diff, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %54, i32* %55, i32 %57)
  br label %70

59:                                               ; preds = %47
  %60 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %61 = load i32*, i32** @audio_map_in2_se, align 8
  %62 = load i32*, i32** @audio_map_in2_se, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %60, i32* %61, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %66 = load i32*, i32** @wm9090_in2_se_controls, align 8
  %67 = load i32*, i32** @wm9090_in2_se_controls, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %65, i32* %66, i32 %68)
  br label %70

70:                                               ; preds = %59, %53
  %71 = load %struct.wm9090_priv*, %struct.wm9090_priv** %3, align 8
  %72 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.wm9090_priv*, %struct.wm9090_priv** %3, align 8
  %80 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ARRAY_SIZE(i32* %82)
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %77
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %87 = load i64, i64* @WM9090_AGC_CONTROL_0, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load %struct.wm9090_priv*, %struct.wm9090_priv** %3, align 8
  %92 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %86, i64 %90, i32 %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %105 = load i32, i32* @WM9090_POWER_MANAGEMENT_3, align 4
  %106 = load i32, i32* @WM9090_AGC_ENA, align 4
  %107 = load i32, i32* @WM9090_AGC_ENA, align 4
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 %107)
  br label %114

109:                                              ; preds = %70
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %111 = load i32, i32* @WM9090_POWER_MANAGEMENT_3, align 4
  %112 = load i32, i32* @WM9090_AGC_ENA, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i32 %111, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %109, %103
  ret i32 0
}

declare dso_local %struct.wm9090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

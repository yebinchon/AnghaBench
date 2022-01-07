; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8993_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.snd_soc_dapm_context = type { i32 }

@WM8993_RIGHT_DAC_DIGITAL_VOLUME = common dso_local global i32 0, align 4
@WM8993_DAC_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_ADC_DIGITAL_VOLUME = common dso_local global i32 0, align 4
@WM8993_ADC_VU = common dso_local global i32 0, align 4
@WM8993_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8993_HPOUT1_AUTO_PU = common dso_local global i32 0, align 4
@WM8993_CLOCKING_4 = common dso_local global i32 0, align 4
@WM8993_SR_MODE = common dso_local global i32 0, align 4
@wm8993_snd_controls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Using ReTune Mobile\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No ReTune Mobile, using normal EQ\0A\00", align 1
@wm8993_eq_controls = common dso_local global i32 0, align 4
@wm8993_dapm_widgets = common dso_local global i32 0, align 4
@routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8993_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8993_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.wm8993_priv* %6, %struct.wm8993_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 -2, i32* %14, align 4
  %15 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 -2, i32* %17, align 8
  %18 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %19 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i32 1, i32* %20, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @WM8993_RIGHT_DAC_DIGITAL_VOLUME, align 4
  %23 = load i32, i32* @WM8993_DAC_VU, align 4
  %24 = load i32, i32* @WM8993_DAC_VU, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @WM8993_RIGHT_ADC_DIGITAL_VOLUME, align 4
  %28 = load i32, i32* @WM8993_ADC_VU, align 4
  %29 = load i32, i32* @WM8993_ADC_VU, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %33 = load i32, i32* @WM8993_HPOUT1_AUTO_PU, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @WM8993_CLOCKING_4, align 4
  %37 = load i32, i32* @WM8993_SR_MODE, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %40 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %45 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %49 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %57 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %61 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %65 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %69 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %73 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %77 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wm_hubs_handle_analogue_pdata(%struct.snd_soc_component* %39, i64 %43, i64 %47, i32 %51, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %75, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %82 = load i32, i32* @wm8993_snd_controls, align 4
  %83 = load i32, i32* @wm8993_snd_controls, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %81, i32 %82, i32 %84)
  %86 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %87 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %1
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %93 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %106

96:                                               ; preds = %1
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %102 = load i32, i32* @wm8993_eq_controls, align 4
  %103 = load i32, i32* @wm8993_eq_controls, align 4
  %104 = call i32 @ARRAY_SIZE(i32 %103)
  %105 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %101, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %96, %91
  %107 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %108 = load i32, i32* @wm8993_dapm_widgets, align 4
  %109 = load i32, i32* @wm8993_dapm_widgets, align 4
  %110 = call i32 @ARRAY_SIZE(i32 %109)
  %111 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %107, i32 %108, i32 %110)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %113 = call i32 @wm_hubs_add_analogue_controls(%struct.snd_soc_component* %112)
  %114 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %115 = load i32, i32* @routes, align 4
  %116 = load i32, i32* @routes, align 4
  %117 = call i32 @ARRAY_SIZE(i32 %116)
  %118 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %114, i32 %115, i32 %117)
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %120 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %121 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %125 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @wm_hubs_add_analogue_routes(%struct.snd_soc_component* %119, i64 %123, i64 %127)
  %129 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %130 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %106
  %135 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %136 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %142 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %134, %106
  ret i32 0
}

declare dso_local %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm_hubs_handle_analogue_pdata(%struct.snd_soc_component*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @wm_hubs_add_analogue_controls(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @wm_hubs_add_analogue_routes(%struct.snd_soc_component*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

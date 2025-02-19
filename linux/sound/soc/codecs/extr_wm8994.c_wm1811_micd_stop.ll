; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm1811_micd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm1811_micd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8994_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@WM8958_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8958_MICD_ENA = common dso_local global i32 0, align 4
@WM1811_JACKDET_MODE_JACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MICBIAS2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm1811_micd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm1811_micd_stop(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.wm8994_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %5)
  store %struct.snd_soc_dapm_context* %6, %struct.snd_soc_dapm_context** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8994_priv* %8, %struct.wm8994_priv** %4, align 8
  %9 = load %struct.wm8994_priv*, %struct.wm8994_priv** %4, align 8
  %10 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @WM8958_MIC_DETECT_1, align 4
  %17 = load i32, i32* @WM8958_MICD_ENA, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = load i32, i32* @WM1811_JACKDET_MODE_JACK, align 4
  %21 = call i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component* %19, i32 %20)
  %22 = load %struct.wm8994_priv*, %struct.wm8994_priv** %4, align 8
  %23 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %31 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %13, %29, %14
  ret void
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

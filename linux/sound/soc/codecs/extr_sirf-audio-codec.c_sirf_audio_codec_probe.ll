; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_sirf_audio_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"sirf,prima2-audio-codec\00", align 1
@prima2_output_driver_dapm_widgets = common dso_local global i32* null, align 8
@prima2_codec_clock_dapm_widget = common dso_local global i32 0, align 4
@volume_controls_prima2 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"sirf,atlas6-audio-codec\00", align 1
@atlas6_output_driver_dapm_widgets = common dso_local global i32* null, align 8
@atlas6_codec_clock_dapm_widget = common dso_local global i32 0, align 4
@volume_controls_atlas6 = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sirf_audio_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_audio_codec_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %5)
  store %struct.snd_soc_dapm_context* %6, %struct.snd_soc_dapm_context** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @pm_runtime_enable(%struct.TYPE_2__* %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @of_device_is_compatible(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %20 = load i32*, i32** @prima2_output_driver_dapm_widgets, align 8
  %21 = load i32*, i32** @prima2_output_driver_dapm_widgets, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %19, i32* %20, i32 %22)
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %25 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %24, i32* @prima2_codec_clock_dapm_widget, i32 1)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32*, i32** @volume_controls_prima2, align 8
  %28 = load i32*, i32** @volume_controls_prima2, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %26, i32* %27, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @of_device_is_compatible(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %41 = load i32*, i32** @atlas6_output_driver_dapm_widgets, align 8
  %42 = load i32*, i32** @atlas6_output_driver_dapm_widgets, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %40, i32* %41, i32 %43)
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %46 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %45, i32* @atlas6_codec_clock_dapm_widget, i32 1)
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32*, i32** @volume_controls_atlas6, align 8
  %49 = load i32*, i32** @volume_controls_atlas6, align 8
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %47, i32* %48, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %39, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_2__*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

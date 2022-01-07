; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_codec_analog_add_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_codec_analog_add_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.sun8i_codec_analog_quirks = type { i32, i32 }
%struct.snd_soc_dapm_context = type { i32 }

@sun8i_v3s_codec_mixer_widgets = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to add V3s Mixer DAPM widgets: %d\0A\00", align 1
@sun8i_codec_mixer_widgets = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to add Mixer DAPM widgets: %d\0A\00", align 1
@sun8i_codec_mixer_routes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to add Mixer DAPM routes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.sun8i_codec_analog_quirks*)* @sun8i_codec_analog_add_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_codec_analog_add_mixer(%struct.snd_soc_component* %0, %struct.sun8i_codec_analog_quirks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.sun8i_codec_analog_quirks*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.sun8i_codec_analog_quirks* %1, %struct.sun8i_codec_analog_quirks** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %15 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %2
  %19 = load %struct.sun8i_codec_analog_quirks*, %struct.sun8i_codec_analog_quirks** %5, align 8
  %20 = getelementptr inbounds %struct.sun8i_codec_analog_quirks, %struct.sun8i_codec_analog_quirks* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %25 = load i32, i32* @sun8i_v3s_codec_mixer_widgets, align 4
  %26 = load i32, i32* @sun8i_v3s_codec_mixer_widgets, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %24, i32 %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %23
  br label %51

37:                                               ; preds = %18, %2
  %38 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %39 = load i32, i32* @sun8i_codec_mixer_widgets, align 4
  %40 = load i32, i32* @sun8i_codec_mixer_widgets, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %38, i32 %39, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %53 = load i32, i32* @sun8i_codec_mixer_routes, align 4
  %54 = load i32, i32* @sun8i_codec_mixer_routes, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %52, i32 %53, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %45, %31
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

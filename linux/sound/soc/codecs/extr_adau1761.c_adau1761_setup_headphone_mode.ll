; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1761.c_adau1761_setup_headphone_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1761.c_adau1761_setup_headphone_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.adau1761_platform_data* }
%struct.adau1761_platform_data = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i32 }

@ADAU1761_PLAY_MONO_OUTPUT_VOL = common dso_local global i32 0, align 4
@ADAU1761_PLAY_MONO_OUTPUT_VOL_MODE_HP = common dso_local global i32 0, align 4
@ADAU1761_PLAY_MONO_OUTPUT_VOL_UNMUTE = common dso_local global i32 0, align 4
@ADAU1761_PLAY_HP_RIGHT_VOL = common dso_local global i32 0, align 4
@ADAU1761_PLAY_HP_RIGHT_VOL_MODE_HP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adau1761_capless_dapm_widgets = common dso_local global i32 0, align 4
@adau1761_capless_dapm_routes = common dso_local global i32 0, align 4
@adau1761_mono_controls = common dso_local global i32 0, align 4
@adau1761_mono_dapm_widgets = common dso_local global i32 0, align 4
@adau1761_mono_dapm_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1761_setup_headphone_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1761_setup_headphone_mode(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau*, align 8
  %6 = alloca %struct.adau1761_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.adau* %12, %struct.adau** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %16, align 8
  store %struct.adau1761_platform_data* %17, %struct.adau1761_platform_data** %6, align 8
  %18 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %6, align 8
  %19 = icmp ne %struct.adau1761_platform_data* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %6, align 8
  %22 = getelementptr inbounds %struct.adau1761_platform_data, %struct.adau1761_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %1
  store i32 130, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %48 [
    i32 128, label %27
    i32 129, label %28
    i32 130, label %40
  ]

27:                                               ; preds = %25
  br label %51

28:                                               ; preds = %25
  %29 = load %struct.adau*, %struct.adau** %5, align 8
  %30 = getelementptr inbounds %struct.adau, %struct.adau* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ADAU1761_PLAY_MONO_OUTPUT_VOL, align 4
  %33 = load i32, i32* @ADAU1761_PLAY_MONO_OUTPUT_VOL_MODE_HP, align 4
  %34 = load i32, i32* @ADAU1761_PLAY_MONO_OUTPUT_VOL_UNMUTE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ADAU1761_PLAY_MONO_OUTPUT_VOL_MODE_HP, align 4
  %37 = load i32, i32* @ADAU1761_PLAY_MONO_OUTPUT_VOL_UNMUTE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %25, %28
  %41 = load %struct.adau*, %struct.adau** %5, align 8
  %42 = getelementptr inbounds %struct.adau, %struct.adau* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ADAU1761_PLAY_HP_RIGHT_VOL, align 4
  %45 = load i32, i32* @ADAU1761_PLAY_HP_RIGHT_VOL_MODE_HP, align 4
  %46 = load i32, i32* @ADAU1761_PLAY_HP_RIGHT_VOL_MODE_HP, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %51

48:                                               ; preds = %25
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %98

51:                                               ; preds = %40, %27
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %56 = load i32, i32* @adau1761_capless_dapm_widgets, align 4
  %57 = load i32, i32* @adau1761_capless_dapm_widgets, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %55, i32 %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %98

64:                                               ; preds = %54
  %65 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %66 = load i32, i32* @adau1761_capless_dapm_routes, align 4
  %67 = load i32, i32* @adau1761_capless_dapm_routes, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %65, i32 %66, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %96

70:                                               ; preds = %51
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @adau1761_mono_controls, align 4
  %73 = load i32, i32* @adau1761_mono_controls, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %71, i32 %72, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %98

80:                                               ; preds = %70
  %81 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %82 = load i32, i32* @adau1761_mono_dapm_widgets, align 4
  %83 = load i32, i32* @adau1761_mono_dapm_widgets, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %81, i32 %82, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %80
  %91 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %92 = load i32, i32* @adau1761_mono_dapm_routes, align 4
  %93 = load i32, i32* @adau1761_mono_dapm_routes, align 4
  %94 = call i32 @ARRAY_SIZE(i32 %93)
  %95 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %91, i32 %92, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %90, %64
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %88, %78, %62, %48
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

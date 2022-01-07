; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1761.c_adau1761_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1761.c_adau1761_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.adau1761_platform_data* }
%struct.adau1761_platform_data = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i64, i32 }

@ADAU1761_LEFT_DIFF_INPUT_VOL = common dso_local global i32 0, align 4
@ADAU1761_DIFF_INPUT_VOL_LDEN = common dso_local global i32 0, align 4
@ADAU1761_RIGHT_DIFF_INPUT_VOL = common dso_local global i32 0, align 4
@adau1761_differential_mode_controls = common dso_local global i32 0, align 4
@adau1761_single_mode_controls = common dso_local global i32 0, align 4
@ADAU1761_PLAY_LINE_LEFT_VOL = common dso_local global i32 0, align 4
@ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP = common dso_local global i32 0, align 4
@ADAU1761_PLAY_LINE_RIGHT_VOL = common dso_local global i32 0, align 4
@ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1761 = common dso_local global i64 0, align 8
@adau1761_dapm_widgets = common dso_local global i32 0, align 4
@adau1761_dapm_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1761_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1761_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau1761_platform_data*, align 8
  %6 = alloca %struct.adau*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %13, align 8
  store %struct.adau1761_platform_data* %14, %struct.adau1761_platform_data** %5, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.adau* %16, %struct.adau** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = call i32 @adau17x1_add_widgets(%struct.snd_soc_component* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %138

23:                                               ; preds = %1
  %24 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %25 = icmp ne %struct.adau1761_platform_data* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.adau1761_platform_data, %struct.adau1761_platform_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load %struct.adau*, %struct.adau** %6, align 8
  %33 = getelementptr inbounds %struct.adau, %struct.adau* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ADAU1761_LEFT_DIFF_INPUT_VOL, align 4
  %36 = load i32, i32* @ADAU1761_DIFF_INPUT_VOL_LDEN, align 4
  %37 = load i32, i32* @ADAU1761_DIFF_INPUT_VOL_LDEN, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.adau*, %struct.adau** %6, align 8
  %40 = getelementptr inbounds %struct.adau, %struct.adau* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ADAU1761_RIGHT_DIFF_INPUT_VOL, align 4
  %43 = load i32, i32* @ADAU1761_DIFF_INPUT_VOL_LDEN, align 4
  %44 = load i32, i32* @ADAU1761_DIFF_INPUT_VOL_LDEN, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @adau1761_differential_mode_controls, align 4
  %48 = load i32, i32* @adau1761_differential_mode_controls, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %46, i32 %47, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %31
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %138

55:                                               ; preds = %31
  br label %67

56:                                               ; preds = %26, %23
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32, i32* @adau1761_single_mode_controls, align 4
  %59 = load i32, i32* @adau1761_single_mode_controls, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %57, i32 %58, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %138

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = call i32 @adau1761_get_lineout_mode(%struct.snd_soc_component* %68)
  switch i32 %69, label %86 [
    i32 128, label %70
    i32 129, label %71
  ]

70:                                               ; preds = %67
  br label %89

71:                                               ; preds = %67
  %72 = load %struct.adau*, %struct.adau** %6, align 8
  %73 = getelementptr inbounds %struct.adau, %struct.adau* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ADAU1761_PLAY_LINE_LEFT_VOL, align 4
  %76 = load i32, i32* @ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP, align 4
  %77 = load i32, i32* @ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP, align 4
  %78 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.adau*, %struct.adau** %6, align 8
  %80 = getelementptr inbounds %struct.adau, %struct.adau* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ADAU1761_PLAY_LINE_RIGHT_VOL, align 4
  %83 = load i32, i32* @ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP, align 4
  %84 = load i32, i32* @ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP, align 4
  %85 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %84)
  br label %89

86:                                               ; preds = %67
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %138

89:                                               ; preds = %71, %70
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %91 = call i32 @adau1761_setup_headphone_mode(%struct.snd_soc_component* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %138

96:                                               ; preds = %89
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %98 = call i32 @adau1761_setup_digmic_jackdetect(%struct.snd_soc_component* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %138

103:                                              ; preds = %96
  %104 = load %struct.adau*, %struct.adau** %6, align 8
  %105 = getelementptr inbounds %struct.adau, %struct.adau* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ADAU1761, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  %110 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %111 = load i32, i32* @adau1761_dapm_widgets, align 4
  %112 = load i32, i32* @adau1761_dapm_widgets, align 4
  %113 = call i32 @ARRAY_SIZE(i32 %112)
  %114 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %110, i32 %111, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %138

119:                                              ; preds = %109
  %120 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %121 = load i32, i32* @adau1761_dapm_routes, align 4
  %122 = load i32, i32* @adau1761_dapm_routes, align 4
  %123 = call i32 @ARRAY_SIZE(i32 %122)
  %124 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %120, i32 %121, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %103
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %132 = call i32 @adau17x1_add_routes(%struct.snd_soc_component* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %135, %127, %117, %101, %94, %86, %64, %53, %21
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @adau17x1_add_widgets(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adau1761_get_lineout_mode(%struct.snd_soc_component*) #1

declare dso_local i32 @adau1761_setup_headphone_mode(%struct.snd_soc_component*) #1

declare dso_local i32 @adau1761_setup_digmic_jackdetect(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @adau17x1_add_routes(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

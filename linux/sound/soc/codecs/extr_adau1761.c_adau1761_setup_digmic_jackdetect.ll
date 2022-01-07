; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1761.c_adau1761_setup_digmic_jackdetect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1761.c_adau1761_setup_digmic_jackdetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.adau1761_platform_data* }
%struct.adau1761_platform_data = type { i32, i32, i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU1761_DIGMIC_JACKDETECT_ACTIVE_LOW = common dso_local global i32 0, align 4
@adau1761_jack_detect_controls = common dso_local global i32 0, align 4
@adau1761_no_dmic_routes = common dso_local global i32 0, align 4
@adau1761_dmic_widgets = common dso_local global i32 0, align 4
@adau1761_dmic_routes = common dso_local global i32 0, align 4
@ADAU1761_DIGMIC_JACKDETECT_DIGMIC = common dso_local global i32 0, align 4
@ADAU1761_DIGMIC_JACKDETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1761_setup_digmic_jackdetect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1761_setup_digmic_jackdetect(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau1761_platform_data*, align 8
  %6 = alloca %struct.adau*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %10)
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %15, align 8
  store %struct.adau1761_platform_data* %16, %struct.adau1761_platform_data** %5, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.adau* %18, %struct.adau** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %20 = icmp ne %struct.adau1761_platform_data* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.adau1761_platform_data, %struct.adau1761_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %1
  store i32 132, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %97 [
    i32 133, label %28
    i32 132, label %62
    i32 134, label %73
  ]

28:                                               ; preds = %26
  %29 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.adau1761_platform_data, %struct.adau1761_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %39 [
    i32 128, label %32
    i32 131, label %32
    i32 130, label %32
    i32 129, label %32
  ]

32:                                               ; preds = %28, %28, %28, %28
  %33 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.adau1761_platform_data, %struct.adau1761_platform_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 6
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %107

42:                                               ; preds = %32
  %43 = load %struct.adau1761_platform_data*, %struct.adau1761_platform_data** %5, align 8
  %44 = getelementptr inbounds %struct.adau1761_platform_data, %struct.adau1761_platform_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @ADAU1761_DIGMIC_JACKDETECT_ACTIVE_LOW, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @adau1761_jack_detect_controls, align 4
  %54 = load i32, i32* @adau1761_jack_detect_controls, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %52, i32 %53, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %107

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %26, %61
  %63 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %64 = load i32, i32* @adau1761_no_dmic_routes, align 4
  %65 = load i32, i32* @adau1761_no_dmic_routes, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %63, i32 %64, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %107

72:                                               ; preds = %62
  br label %100

73:                                               ; preds = %26
  %74 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %75 = load i32, i32* @adau1761_dmic_widgets, align 4
  %76 = load i32, i32* @adau1761_dmic_widgets, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %74, i32 %75, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %107

83:                                               ; preds = %73
  %84 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %85 = load i32, i32* @adau1761_dmic_routes, align 4
  %86 = load i32, i32* @adau1761_dmic_routes, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %84, i32 %85, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %107

93:                                               ; preds = %83
  %94 = load i32, i32* @ADAU1761_DIGMIC_JACKDETECT_DIGMIC, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %100

97:                                               ; preds = %26
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %107

100:                                              ; preds = %93, %72
  %101 = load %struct.adau*, %struct.adau** %6, align 8
  %102 = getelementptr inbounds %struct.adau, %struct.adau* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ADAU1761_DIGMIC_JACKDETECT, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @regmap_write(i32 %103, i32 %104, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %97, %91, %81, %70, %59, %39
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

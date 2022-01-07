; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1781.c_adau1781_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1781.c_adau1781_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau1781_platform_data = type { i64, i32, i32 }
%struct.adau = type { i32 }

@ADAU1781_LEFT_PGA = common dso_local global i32 0, align 4
@ADAU1781_RIGHT_PGA = common dso_local global i32 0, align 4
@adau1781_dmic_dapm_widgets = common dso_local global i32 0, align 4
@adau1781_dmic_dapm_routes = common dso_local global i32 0, align 4
@adau1781_adc_dapm_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1781_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1781_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau1781_platform_data*, align 8
  %6 = alloca %struct.adau*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.adau1781_platform_data* @dev_get_platdata(i32 %12)
  store %struct.adau1781_platform_data* %13, %struct.adau1781_platform_data** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.adau* %15, %struct.adau** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = call i32 @adau17x1_add_widgets(%struct.snd_soc_component* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.adau1781_platform_data*, %struct.adau1781_platform_data** %5, align 8
  %24 = icmp ne %struct.adau1781_platform_data* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load %struct.adau*, %struct.adau** %6, align 8
  %27 = load i32, i32* @ADAU1781_LEFT_PGA, align 4
  %28 = load %struct.adau1781_platform_data*, %struct.adau1781_platform_data** %5, align 8
  %29 = getelementptr inbounds %struct.adau1781_platform_data, %struct.adau1781_platform_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @adau1781_set_input_mode(%struct.adau* %26, i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %96

36:                                               ; preds = %25
  %37 = load %struct.adau*, %struct.adau** %6, align 8
  %38 = load i32, i32* @ADAU1781_RIGHT_PGA, align 4
  %39 = load %struct.adau1781_platform_data*, %struct.adau1781_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.adau1781_platform_data, %struct.adau1781_platform_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @adau1781_set_input_mode(%struct.adau* %37, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %96

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.adau1781_platform_data*, %struct.adau1781_platform_data** %5, align 8
  %50 = icmp ne %struct.adau1781_platform_data* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load %struct.adau1781_platform_data*, %struct.adau1781_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.adau1781_platform_data, %struct.adau1781_platform_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %58 = load i32, i32* @adau1781_dmic_dapm_widgets, align 4
  %59 = load i32, i32* @adau1781_dmic_dapm_widgets, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %57, i32 %58, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %96

66:                                               ; preds = %56
  %67 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %68 = load i32, i32* @adau1781_dmic_dapm_routes, align 4
  %69 = load i32, i32* @adau1781_dmic_dapm_routes, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %67, i32 %68, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %96

76:                                               ; preds = %66
  br label %88

77:                                               ; preds = %51, %48
  %78 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %79 = load i32, i32* @adau1781_adc_dapm_routes, align 4
  %80 = load i32, i32* @adau1781_adc_dapm_routes, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %78, i32 %79, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %76
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %90 = call i32 @adau17x1_add_routes(%struct.snd_soc_component* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %93, %85, %74, %64, %45, %34, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau1781_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @adau17x1_add_widgets(%struct.snd_soc_component*) #1

declare dso_local i32 @adau1781_set_input_mode(%struct.adau*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @adau17x1_add_routes(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

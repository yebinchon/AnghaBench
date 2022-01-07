; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_system_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_system_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"system clock control : POWER OFF\0A\00", align 1
@NAU8824_CLK_INTERNAL = common dso_local global i32 0, align 4
@NAU8824_CLK_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"system clock control : POWER ON\0A\00", align 1
@NAU8824_REG_FLL1 = common dso_local global i32 0, align 4
@NAU8824_FLL_RATIO_MASK = common dso_local global i32 0, align 4
@NAU8824_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8824_DCO_EN = common dso_local global i32 0, align 4
@NAU8824_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_VCO = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @system_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @system_clock_control(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.nau8824*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.nau8824* %18, %struct.nau8824** %8, align 8
  %19 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %20 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %19, i32 0, i32 1
  %21 = load %struct.regmap*, %struct.regmap** %20, align 8
  store %struct.regmap* %21, %struct.regmap** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %27 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %31 = call i64 @nau8824_is_jack_inserted(%struct.nau8824* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %35 = load i32, i32* @NAU8824_CLK_INTERNAL, align 4
  %36 = call i32 @nau8824_config_sysclk(%struct.nau8824* %34, i32 %35, i32 0)
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %39 = load i32, i32* @NAU8824_CLK_DIS, align 4
  %40 = call i32 @nau8824_config_sysclk(%struct.nau8824* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %33
  br label %101

42:                                               ; preds = %3
  %43 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %44 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.regmap*, %struct.regmap** %9, align 8
  %48 = load i32, i32* @NAU8824_REG_FLL1, align 4
  %49 = call i32 @regmap_read(%struct.regmap* %47, i32 %48, i32* %10)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @NAU8824_FLL_RATIO_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.regmap*, %struct.regmap** %9, align 8
  %54 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %55 = call i32 @regmap_read(%struct.regmap* %53, i32 %54, i32* %10)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @NAU8824_DCO_EN, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %42
  %62 = load %struct.regmap*, %struct.regmap** %9, align 8
  %63 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %64 = call i32 @regmap_read(%struct.regmap* %62, i32 %63, i32* %10)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @NAU8824_CLK_SRC_VCO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %78

74:                                               ; preds = %61
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @NAU8824_CLK_SRC_VCO, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %74, %67
  br label %79

79:                                               ; preds = %78, %42
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.regmap*, %struct.regmap** %9, align 8
  %87 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %88 = load i32, i32* @NAU8824_DCO_EN, align 4
  %89 = call i32 @regmap_update_bits(%struct.regmap* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.regmap*, %struct.regmap** %9, align 8
  %91 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %92 = load i32, i32* @NAU8824_CLK_SRC_MASK, align 4
  %93 = load i32, i32* @NAU8824_CLK_SRC_VCO, align 4
  %94 = call i32 @regmap_update_bits(%struct.regmap* %90, i32 %91, i32 %92, i32 %93)
  br label %99

95:                                               ; preds = %82
  %96 = load %struct.nau8824*, %struct.nau8824** %8, align 8
  %97 = load i32, i32* @NAU8824_CLK_MCLK, align 4
  %98 = call i32 @nau8824_config_sysclk(%struct.nau8824* %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %95, %85
  br label %100

100:                                              ; preds = %99, %79
  br label %101

101:                                              ; preds = %100, %41
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @nau8824_is_jack_inserted(%struct.nau8824*) #1

declare dso_local i32 @nau8824_config_sysclk(%struct.nau8824*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt5659_priv = type { i32, i32 }

@RT5659_DIG_MISC = common dso_local global i32 0, align 4
@RT5659_DIG_GATE_CTRL = common dso_local global i32 0, align 4
@RT5659_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5659_PWR_LDO = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5659_PWR_MB = common dso_local global i32 0, align 4
@RT5659_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5659_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5659_PWR_FV1 = common dso_local global i32 0, align 4
@RT5659_PWR_FV2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to enable MCLK: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5659_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.rt5659_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.rt5659_priv* %12, %struct.rt5659_priv** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %111 [
    i32 129, label %14
    i32 128, label %56
    i32 130, label %77
  ]

14:                                               ; preds = %2
  %15 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %16 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RT5659_DIG_MISC, align 4
  %19 = load i32, i32* @RT5659_DIG_GATE_CTRL, align 4
  %20 = load i32, i32* @RT5659_DIG_GATE_CTRL, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RT5659_PWR_DIG_1, align 4
  %26 = load i32, i32* @RT5659_PWR_LDO, align 4
  %27 = load i32, i32* @RT5659_PWR_LDO, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %33 = load i32, i32* @RT5659_PWR_MB, align 4
  %34 = load i32, i32* @RT5659_PWR_VREF1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RT5659_PWR_MB, align 4
  %39 = load i32, i32* @RT5659_PWR_VREF1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %37, i32 %42)
  %44 = call i32 @msleep(i32 20)
  %45 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %46 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %49 = load i32, i32* @RT5659_PWR_FV1, align 4
  %50 = load i32, i32* @RT5659_PWR_FV2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RT5659_PWR_FV1, align 4
  %53 = load i32, i32* @RT5659_PWR_FV2, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %51, i32 %54)
  br label %112

56:                                               ; preds = %2
  %57 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %63 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %113

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %56
  br label %112

77:                                               ; preds = %2
  %78 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %79 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @RT5659_PWR_DIG_1, align 4
  %82 = load i32, i32* @RT5659_PWR_LDO, align 4
  %83 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %85 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %88 = load i32, i32* @RT5659_PWR_MB, align 4
  %89 = load i32, i32* @RT5659_PWR_VREF1, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RT5659_PWR_FV1, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @RT5659_PWR_FV2, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RT5659_PWR_MB, align 4
  %98 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @regmap_update_bits(i32 %86, i32 %87, i32 %96, i32 %99)
  %101 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %102 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RT5659_DIG_MISC, align 4
  %105 = load i32, i32* @RT5659_DIG_GATE_CTRL, align 4
  %106 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 0)
  %107 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %108 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clk_disable_unprepare(i32 %109)
  br label %112

111:                                              ; preds = %2
  br label %112

112:                                              ; preds = %111, %77, %76, %14
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %68
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

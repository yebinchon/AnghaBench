; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.nau8825 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to prepare component mclk\0A\00", align 1
@NAU8825_REG_MIC_BIAS = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_JKSLV = common dso_local global i32 0, align 4
@NAU8825_MICBIAS_JKR2 = common dso_local global i32 0, align 4
@NAU8825_REG_HSD_CTRL = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_DIS_CTRL = common dso_local global i32 0, align 4
@NAU8825_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @nau8825_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nau8825*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.nau8825* %9, %struct.nau8825** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %77 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
    i32 131, label %40
  ]

11:                                               ; preds = %2
  br label %77

12:                                               ; preds = %2
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %14)
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %19 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %24 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_prepare_enable(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %31 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %38 = call i32 @nau8825_resume_setup(%struct.nau8825* %37)
  br label %39

39:                                               ; preds = %36, %13
  br label %77

40:                                               ; preds = %2
  %41 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %42 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NAU8825_REG_MIC_BIAS, align 4
  %45 = load i32, i32* @NAU8825_MICBIAS_JKSLV, align 4
  %46 = load i32, i32* @NAU8825_MICBIAS_JKR2, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %47, i32 0)
  %49 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %50 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %53 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 15, i32 15)
  %54 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %55 = call i32 @nau8825_xtalk_cancel(%struct.nau8825* %54)
  %56 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %57 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NAU8825_REG_INTERRUPT_DIS_CTRL, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 65535)
  %61 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %62 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NAU8825_REG_ENA_CTRL, align 4
  %65 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %66 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 0)
  %67 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %68 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %40
  %72 = load %struct.nau8825*, %struct.nau8825** %6, align 8
  %73 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clk_disable_unprepare(i32 %74)
  br label %76

76:                                               ; preds = %71, %40
  br label %77

77:                                               ; preds = %2, %76, %39, %12, %11
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %29
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nau8825_resume_setup(%struct.nau8825*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @nau8825_xtalk_cancel(%struct.nau8825*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_dai_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_dai_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, %struct.clk** }
%struct.clk = type { i32 }

@DA7219_DAI_BCLK_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to enable DAI clks\0A\00", align 1
@DA7219_DAI_CLK_MODE = common dso_local global i32 0, align 4
@DA7219_DAI_CLK_EN_MASK = common dso_local global i32 0, align 4
@DA7219_PC_COUNT = common dso_local global i32 0, align 4
@DA7219_PC_FREERUN_MASK = common dso_local global i32 0, align 4
@DA7219_PLL_CTRL = common dso_local global i32 0, align 4
@DA7219_PLL_MODE_MASK = common dso_local global i32 0, align 4
@DA7219_PLL_MODE_SRM = common dso_local global i32 0, align 4
@DA7219_PLL_SRM_STS = common dso_local global i32 0, align 4
@DA7219_PLL_SRM_STS_SRM_LOCK = common dso_local global i32 0, align 4
@DA7219_SRM_CHECK_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SRM failed to lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @da7219_dai_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_dai_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da7219_priv*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %8, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.da7219_priv* %21, %struct.da7219_priv** %9, align 8
  %22 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %23 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %22, i32 0, i32 1
  %24 = load %struct.clk**, %struct.clk*** %23, align 8
  %25 = load i64, i64* @DA7219_DAI_BCLK_IDX, align 8
  %26 = getelementptr inbounds %struct.clk*, %struct.clk** %24, i64 %25
  %27 = load %struct.clk*, %struct.clk** %26, align 8
  store %struct.clk* %27, %struct.clk** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %127 [
    i32 128, label %29
    i32 129, label %104
  ]

29:                                               ; preds = %3
  %30 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %31 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.clk*, %struct.clk** %10, align 8
  %36 = icmp ne %struct.clk* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.clk*, %struct.clk** %10, align 8
  %39 = call i32 @clk_prepare_enable(%struct.clk* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %4, align 4
  br label %130

48:                                               ; preds = %37
  br label %55

49:                                               ; preds = %34
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = load i32, i32* @DA7219_DAI_CLK_MODE, align 4
  %52 = load i32, i32* @DA7219_DAI_CLK_EN_MASK, align 4
  %53 = load i32, i32* @DA7219_DAI_CLK_EN_MASK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %48
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @DA7219_PC_COUNT, align 4
  %59 = load i32, i32* @DA7219_PC_FREERUN_MASK, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = load i32, i32* @DA7219_PLL_CTRL, align 4
  %63 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @DA7219_PLL_MODE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @DA7219_PLL_MODE_SRM, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %130

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %93, %70
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %73 = load i32, i32* @DA7219_PLL_SRM_STS, align 4
  %74 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @DA7219_PLL_SRM_STS_SRM_LOCK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = call i32 @msleep(i32 50)
  br label %84

84:                                               ; preds = %80, %79
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @DA7219_SRM_CHECK_RETRIES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %71, label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %100 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %95
  store i32 0, i32* %4, align 4
  br label %130

104:                                              ; preds = %3
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %106 = load i32, i32* @DA7219_PC_COUNT, align 4
  %107 = load i32, i32* @DA7219_PC_FREERUN_MASK, align 4
  %108 = load i32, i32* @DA7219_PC_FREERUN_MASK, align 4
  %109 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.da7219_priv*, %struct.da7219_priv** %9, align 8
  %111 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %104
  %115 = load %struct.clk*, %struct.clk** %10, align 8
  %116 = icmp ne %struct.clk* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.clk*, %struct.clk** %10, align 8
  %119 = call i32 @clk_disable_unprepare(%struct.clk* %118)
  br label %125

120:                                              ; preds = %114
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %122 = load i32, i32* @DA7219_DAI_CLK_MODE, align 4
  %123 = load i32, i32* @DA7219_DAI_CLK_EN_MASK, align 4
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %120, %117
  br label %126

126:                                              ; preds = %125, %104
  store i32 0, i32* %4, align 4
  br label %130

127:                                              ; preds = %3
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %126, %103, %69, %42
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

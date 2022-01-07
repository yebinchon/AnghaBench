; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7210_priv = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"DA7210 Audio Codec %s\0A\00", align 1
@DA7210_VERSION = common dso_local global i32 0, align 4
@DA7210_CONTROL = common dso_local global i32 0, align 4
@DA7210_REG_EN = common dso_local global i32 0, align 4
@DA7210_BIAS_EN = common dso_local global i32 0, align 4
@DA7210_MIC_L = common dso_local global i32 0, align 4
@DA7210_MIC_L_EN = common dso_local global i32 0, align 4
@DA7210_MICBIAS_EN = common dso_local global i32 0, align 4
@DA7210_MIC_R = common dso_local global i32 0, align 4
@DA7210_MIC_R_EN = common dso_local global i32 0, align 4
@DA7210_INMIX_L = common dso_local global i32 0, align 4
@DA7210_IN_L_EN = common dso_local global i32 0, align 4
@DA7210_INMIX_R = common dso_local global i32 0, align 4
@DA7210_IN_R_EN = common dso_local global i32 0, align 4
@DA7210_ADC = common dso_local global i32 0, align 4
@DA7210_ADC_L_EN = common dso_local global i32 0, align 4
@DA7210_ADC_R_EN = common dso_local global i32 0, align 4
@DA7210_DAC_SEL = common dso_local global i32 0, align 4
@DA7210_DAC_L_SRC_DAI_L = common dso_local global i32 0, align 4
@DA7210_DAC_L_EN = common dso_local global i32 0, align 4
@DA7210_DAC_R_SRC_DAI_R = common dso_local global i32 0, align 4
@DA7210_DAC_R_EN = common dso_local global i32 0, align 4
@DA7210_OUTMIX_L = common dso_local global i32 0, align 4
@DA7210_OUT_L_EN = common dso_local global i32 0, align 4
@DA7210_OUTMIX_R = common dso_local global i32 0, align 4
@DA7210_OUT_R_EN = common dso_local global i32 0, align 4
@DA7210_HP_CFG = common dso_local global i32 0, align 4
@DA7210_HP_2CAP_MODE = common dso_local global i32 0, align 4
@DA7210_HP_SENSE_EN = common dso_local global i32 0, align 4
@DA7210_HP_L_EN = common dso_local global i32 0, align 4
@DA7210_HP_MODE = common dso_local global i32 0, align 4
@DA7210_HP_R_EN = common dso_local global i32 0, align 4
@DA7210_SOFTMUTE = common dso_local global i32 0, align 4
@DA7210_RAMP_EN = common dso_local global i32 0, align 4
@DA7210_OUT1_L = common dso_local global i32 0, align 4
@DA7210_OUT1_L_EN = common dso_local global i32 0, align 4
@DA7210_OUT1_R = common dso_local global i32 0, align 4
@DA7210_OUT1_R_EN = common dso_local global i32 0, align 4
@DA7210_OUT2 = common dso_local global i32 0, align 4
@DA7210_OUT2_EN = common dso_local global i32 0, align 4
@DA7210_OUT2_OUTMIX_L = common dso_local global i32 0, align 4
@DA7210_OUT2_OUTMIX_R = common dso_local global i32 0, align 4
@DA7210_AUX1_L = common dso_local global i32 0, align 4
@DA7210_AUX1_L_EN = common dso_local global i32 0, align 4
@DA7210_AUX1_R = common dso_local global i32 0, align 4
@DA7210_AUX1_R_EN = common dso_local global i32 0, align 4
@DA7210_AUX2 = common dso_local global i32 0, align 4
@DA7210_AUX2_EN = common dso_local global i32 0, align 4
@DA7210_PLL_DIV3 = common dso_local global i32 0, align 4
@DA7210_MCLK_RANGE_10_20_MHZ = common dso_local global i32 0, align 4
@DA7210_PLL_BYP = common dso_local global i32 0, align 4
@DA7210_PLL = common dso_local global i32 0, align 4
@DA7210_PLL_FS_48000 = common dso_local global i32 0, align 4
@DA7210_STARTUP1 = common dso_local global i32 0, align 4
@DA7210_SC_MST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @da7210_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7210_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7210_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.da7210_priv* %5, %struct.da7210_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DA7210_VERSION, align 4
  %10 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.da7210_priv*, %struct.da7210_priv** %3, align 8
  %12 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.da7210_priv*, %struct.da7210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @DA7210_CONTROL, align 4
  %17 = load i32, i32* @DA7210_REG_EN, align 4
  %18 = load i32, i32* @DA7210_BIAS_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %15, i32 %16, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @DA7210_MIC_L, align 4
  %23 = load i32, i32* @DA7210_MIC_L_EN, align 4
  %24 = load i32, i32* @DA7210_MICBIAS_EN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %25)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = load i32, i32* @DA7210_MIC_R, align 4
  %29 = load i32, i32* @DA7210_MIC_R_EN, align 4
  %30 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @DA7210_INMIX_L, align 4
  %33 = load i32, i32* @DA7210_IN_L_EN, align 4
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = load i32, i32* @DA7210_INMIX_R, align 4
  %37 = load i32, i32* @DA7210_IN_R_EN, align 4
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %40 = load i32, i32* @DA7210_ADC, align 4
  %41 = load i32, i32* @DA7210_ADC_L_EN, align 4
  %42 = load i32, i32* @DA7210_ADC_R_EN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %46 = load i32, i32* @DA7210_DAC_SEL, align 4
  %47 = load i32, i32* @DA7210_DAC_L_SRC_DAI_L, align 4
  %48 = load i32, i32* @DA7210_DAC_L_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @DA7210_DAC_R_SRC_DAI_R, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @DA7210_DAC_R_EN, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %45, i32 %46, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %56 = load i32, i32* @DA7210_OUTMIX_L, align 4
  %57 = load i32, i32* @DA7210_OUT_L_EN, align 4
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 %57)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %60 = load i32, i32* @DA7210_OUTMIX_R, align 4
  %61 = load i32, i32* @DA7210_OUT_R_EN, align 4
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %64 = load i32, i32* @DA7210_HP_CFG, align 4
  %65 = load i32, i32* @DA7210_HP_2CAP_MODE, align 4
  %66 = load i32, i32* @DA7210_HP_SENSE_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DA7210_HP_L_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @DA7210_HP_MODE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @DA7210_HP_R_EN, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %76 = load i32, i32* @DA7210_SOFTMUTE, align 4
  %77 = load i32, i32* @DA7210_RAMP_EN, align 4
  %78 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i32 %76, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %80 = load i32, i32* @DA7210_OUT1_L, align 4
  %81 = load i32, i32* @DA7210_OUT1_L_EN, align 4
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %79, i32 %80, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %84 = load i32, i32* @DA7210_OUT1_R, align 4
  %85 = load i32, i32* @DA7210_OUT1_R_EN, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %88 = load i32, i32* @DA7210_OUT2, align 4
  %89 = load i32, i32* @DA7210_OUT2_EN, align 4
  %90 = load i32, i32* @DA7210_OUT2_OUTMIX_L, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @DA7210_OUT2_OUTMIX_R, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %96 = load i32, i32* @DA7210_AUX1_L, align 4
  %97 = load i32, i32* @DA7210_AUX1_L_EN, align 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %100 = load i32, i32* @DA7210_AUX1_R, align 4
  %101 = load i32, i32* @DA7210_AUX1_R_EN, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %104 = load i32, i32* @DA7210_AUX2, align 4
  %105 = load i32, i32* @DA7210_AUX2_EN, align 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %103, i32 %104, i32 %105)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %108 = load i32, i32* @DA7210_PLL_DIV3, align 4
  %109 = load i32, i32* @DA7210_MCLK_RANGE_10_20_MHZ, align 4
  %110 = load i32, i32* @DA7210_PLL_BYP, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %107, i32 %108, i32 %111)
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %114 = load i32, i32* @DA7210_PLL, align 4
  %115 = load i32, i32* @DA7210_PLL_FS_48000, align 4
  %116 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %113, i32 %114, i32 %115)
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %118 = load i32, i32* @DA7210_STARTUP1, align 4
  %119 = load i32, i32* @DA7210_SC_MST_EN, align 4
  %120 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %117, i32 %118, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %122 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DA7210_VERSION, align 4
  %125 = call i32 @dev_info(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %124)
  ret i32 0
}

declare dso_local %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_sel_asrc_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_sel_asrc_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5640_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5640_STO_DAC_M_MASK = common dso_local global i32 0, align 4
@RT5640_STO_DAC_M_SFT = common dso_local global i32 0, align 4
@RT5640_DA_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5640_MDA_L_M_MASK = common dso_local global i32 0, align 4
@RT5640_MDA_L_M_SFT = common dso_local global i32 0, align 4
@RT5640_DA_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5640_MDA_R_M_MASK = common dso_local global i32 0, align 4
@RT5640_MDA_R_M_SFT = common dso_local global i32 0, align 4
@RT5640_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5640_ADC_M_MASK = common dso_local global i32 0, align 4
@RT5640_ADC_M_SFT = common dso_local global i32 0, align 4
@RT5640_AD_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5640_MAD_L_M_MASK = common dso_local global i32 0, align 4
@RT5640_MAD_L_M_SFT = common dso_local global i32 0, align 4
@RT5640_AD_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5640_MAD_R_M_MASK = common dso_local global i32 0, align 4
@RT5640_MAD_R_M_SFT = common dso_local global i32 0, align 4
@RT5640_ASRC_2 = common dso_local global i32 0, align 4
@RT5640_JD_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5640_sel_asrc_clk_src(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt5640_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.rt5640_priv* %12, %struct.rt5640_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %15 [
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %3, %3
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %149

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %149

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RT5640_DA_STEREO_FILTER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32, i32* @RT5640_STO_DAC_M_MASK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @RT5640_STO_DAC_M_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @RT5640_STO_DAC_M_SFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RT5640_DA_MONO_L_FILTER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32, i32* @RT5640_MDA_L_M_MASK, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @RT5640_MDA_L_M_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @RT5640_MDA_L_M_SFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %46, %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @RT5640_DA_MONO_R_FILTER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32, i32* @RT5640_MDA_R_M_MASK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @RT5640_MDA_R_M_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RT5640_MDA_R_M_SFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %63, %58
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @RT5640_AD_STEREO_FILTER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i32, i32* @RT5640_ADC_M_MASK, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @RT5640_ADC_M_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @RT5640_ADC_M_SFT, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %87, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %80, %75
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @RT5640_AD_MONO_L_FILTER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i32, i32* @RT5640_MAD_L_M_MASK, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @RT5640_MAD_L_M_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @RT5640_MAD_L_M_SFT, align 4
  %107 = shl i32 %105, %106
  %108 = or i32 %104, %107
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %97, %92
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @RT5640_AD_MONO_R_FILTER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i32, i32* @RT5640_MAD_R_M_MASK, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @RT5640_MAD_R_M_MASK, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @RT5640_MAD_R_M_SFT, align 4
  %124 = shl i32 %122, %123
  %125 = or i32 %121, %124
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %114, %109
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %128 = load i32, i32* @RT5640_ASRC_2, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %133 = load i32, i32* @RT5640_ASRC_2, align 4
  %134 = call i64 @snd_soc_component_read32(%struct.snd_soc_component* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load %struct.rt5640_priv*, %struct.rt5640_priv** %8, align 8
  %138 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %140 = load i32, i32* @RT5640_JD_CTRL, align 4
  %141 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i32 %140, i32 3, i32 3)
  br label %148

142:                                              ; preds = %126
  %143 = load %struct.rt5640_priv*, %struct.rt5640_priv** %8, align 8
  %144 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %143, i32 0, i32 0
  store i32 0, i32* %144, align 4
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %146 = load i32, i32* @RT5640_JD_CTRL, align 4
  %147 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %145, i32 %146, i32 3, i32 0)
  br label %148

148:                                              ; preds = %142, %136
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %21, %15
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

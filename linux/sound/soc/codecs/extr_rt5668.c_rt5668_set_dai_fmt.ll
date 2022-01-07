; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5668_priv = type { i32* }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT5668_I2S_BP_INV = common dso_local global i32 0, align 4
@RT5668_TDM_S_BP_INV = common dso_local global i32 0, align 4
@RT5668_TDM_S_LP_INV = common dso_local global i32 0, align 4
@RT5668_TDM_M_BP_INV = common dso_local global i32 0, align 4
@RT5668_TDM_M_LP_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT5668_I2S_DF_LEFT = common dso_local global i32 0, align 4
@RT5668_TDM_DF_LEFT = common dso_local global i32 0, align 4
@RT5668_I2S_DF_PCM_A = common dso_local global i32 0, align 4
@RT5668_TDM_DF_PCM_A = common dso_local global i32 0, align 4
@RT5668_I2S_DF_PCM_B = common dso_local global i32 0, align 4
@RT5668_TDM_DF_PCM_B = common dso_local global i32 0, align 4
@RT5668_I2S1_SDP = common dso_local global i32 0, align 4
@RT5668_I2S_DF_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_TCON_CTRL = common dso_local global i32 0, align 4
@RT5668_TDM_MS_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_S_BP_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_DF_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_M_BP_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_M_LP_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_S_LP_MASK = common dso_local global i32 0, align 4
@RT5668_I2S2_MS_S = common dso_local global i32 0, align 4
@RT5668_I2S2_SDP = common dso_local global i32 0, align 4
@RT5668_I2S2_MS_MASK = common dso_local global i32 0, align 4
@RT5668_I2S_BP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt5668_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5668_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt5668_priv* %14, %struct.rt5668_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %34 [
    i32 137, label %18
    i32 136, label %26
  ]

18:                                               ; preds = %2
  %19 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 1, i32* %25, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 0, i32* %33, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %184

37:                                               ; preds = %26, %18
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %83 [
    i32 128, label %41
    i32 131, label %42
    i32 129, label %49
    i32 132, label %64
  ]

41:                                               ; preds = %37
  br label %86

42:                                               ; preds = %37
  %43 = load i32, i32* @RT5668_I2S_BP_INV, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @RT5668_TDM_S_BP_INV, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %86

49:                                               ; preds = %37
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 139
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @RT5668_TDM_S_LP_INV, align 4
  %56 = load i32, i32* @RT5668_TDM_M_BP_INV, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %184

63:                                               ; preds = %54
  br label %86

64:                                               ; preds = %37
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 139
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32, i32* @RT5668_TDM_S_BP_INV, align 4
  %71 = load i32, i32* @RT5668_TDM_S_LP_INV, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RT5668_TDM_M_BP_INV, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RT5668_TDM_M_LP_INV, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %82

79:                                               ; preds = %64
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %184

82:                                               ; preds = %69
  br label %86

83:                                               ; preds = %37
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %184

86:                                               ; preds = %82, %63, %42, %41
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %112 [
    i32 133, label %90
    i32 130, label %91
    i32 135, label %98
    i32 134, label %105
  ]

90:                                               ; preds = %86
  br label %115

91:                                               ; preds = %86
  %92 = load i32, i32* @RT5668_I2S_DF_LEFT, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @RT5668_TDM_DF_LEFT, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %115

98:                                               ; preds = %86
  %99 = load i32, i32* @RT5668_I2S_DF_PCM_A, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @RT5668_TDM_DF_PCM_A, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %115

105:                                              ; preds = %86
  %106 = load i32, i32* @RT5668_I2S_DF_PCM_B, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @RT5668_TDM_DF_PCM_B, align 4
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %115

112:                                              ; preds = %86
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %184

115:                                              ; preds = %105, %98, %91, %90
  %116 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %117 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  switch i64 %118, label %173 [
    i64 139, label %119
    i64 138, label %149
  ]

119:                                              ; preds = %115
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %121 = load i32, i32* @RT5668_I2S1_SDP, align 4
  %122 = load i32, i32* @RT5668_I2S_DF_MASK, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %126 = load i32, i32* @RT5668_TDM_TCON_CTRL, align 4
  %127 = load i32, i32* @RT5668_TDM_MS_MASK, align 4
  %128 = load i32, i32* @RT5668_TDM_S_BP_MASK, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @RT5668_TDM_DF_MASK, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @RT5668_TDM_M_BP_MASK, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @RT5668_TDM_M_LP_MASK, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @RT5668_TDM_S_LP_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %140 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %143 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %138, %146
  %148 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %126, i32 %137, i32 %147)
  br label %183

149:                                              ; preds = %115
  %150 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %151 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %154 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @RT5668_I2S2_MS_S, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %159, %149
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %165 = load i32, i32* @RT5668_I2S2_SDP, align 4
  %166 = load i32, i32* @RT5668_I2S2_MS_MASK, align 4
  %167 = load i32, i32* @RT5668_I2S_BP_MASK, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @RT5668_I2S_DF_MASK, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %170, i32 %171)
  br label %183

173:                                              ; preds = %115
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %175 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %178 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @dev_err(i32 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %184

183:                                              ; preds = %163, %119
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %173, %112, %83, %79, %60, %34
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

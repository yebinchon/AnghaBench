; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5659_priv = type { i32* }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_MS_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_BP_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_DF_LEFT = common dso_local global i32 0, align 4
@RT5659_I2S_DF_PCM_A = common dso_local global i32 0, align 4
@RT5659_I2S_DF_PCM_B = common dso_local global i32 0, align 4
@RT5659_I2S1_SDP = common dso_local global i32 0, align 4
@RT5659_I2S_MS_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_BP_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_DF_MASK = common dso_local global i32 0, align 4
@RT5659_I2S2_SDP = common dso_local global i32 0, align 4
@RT5659_I2S3_SDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt5659_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5659_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.rt5659_priv* %13, %struct.rt5659_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %36 [
    i32 135, label %17
    i32 134, label %25
  ]

17:                                               ; preds = %2
  %18 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 1, i32* %24, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load i32, i32* @RT5659_I2S_MS_S, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 0, i32* %35, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %117

39:                                               ; preds = %25, %17
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %48 [
    i32 128, label %43
    i32 130, label %44
  ]

43:                                               ; preds = %39
  br label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @RT5659_I2S_BP_INV, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %117

51:                                               ; preds = %44, %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %68 [
    i32 131, label %55
    i32 129, label %56
    i32 133, label %60
    i32 132, label %64
  ]

55:                                               ; preds = %51
  br label %71

56:                                               ; preds = %51
  %57 = load i32, i32* @RT5659_I2S_DF_LEFT, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %71

60:                                               ; preds = %51
  %61 = load i32, i32* @RT5659_I2S_DF_PCM_A, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %71

64:                                               ; preds = %51
  %65 = load i32, i32* @RT5659_I2S_DF_PCM_B, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %51
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %117

71:                                               ; preds = %64, %60, %56, %55
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  switch i64 %74, label %105 [
    i64 138, label %75
    i64 137, label %85
    i64 136, label %95
  ]

75:                                               ; preds = %71
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %77 = load i32, i32* @RT5659_I2S1_SDP, align 4
  %78 = load i32, i32* @RT5659_I2S_MS_MASK, align 4
  %79 = load i32, i32* @RT5659_I2S_BP_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RT5659_I2S_DF_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %82, i32 %83)
  br label %116

85:                                               ; preds = %71
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %87 = load i32, i32* @RT5659_I2S2_SDP, align 4
  %88 = load i32, i32* @RT5659_I2S_MS_MASK, align 4
  %89 = load i32, i32* @RT5659_I2S_BP_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RT5659_I2S_DF_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %92, i32 %93)
  br label %116

95:                                               ; preds = %71
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %97 = load i32, i32* @RT5659_I2S3_SDP, align 4
  %98 = load i32, i32* @RT5659_I2S_MS_MASK, align 4
  %99 = load i32, i32* @RT5659_I2S_BP_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @RT5659_I2S_DF_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %102, i32 %103)
  br label %116

105:                                              ; preds = %71
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %107 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %117

116:                                              ; preds = %95, %85, %75
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %105, %68, %48, %36
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

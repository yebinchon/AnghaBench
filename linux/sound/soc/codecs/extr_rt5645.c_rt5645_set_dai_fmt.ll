; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i32, i32* }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_MS_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_DF_LEFT = common dso_local global i32 0, align 4
@RT5645_I2S_DF_PCM_A = common dso_local global i32 0, align 4
@RT5645_I2S_DF_PCM_B = common dso_local global i32 0, align 4
@RT5645_I2S1_SDP = common dso_local global i32 0, align 4
@RT5645_I2S_MS_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_DF_MASK = common dso_local global i32 0, align 4
@RT5645_I2S2_SDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt5645_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5645_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt5645_priv* %14, %struct.rt5645_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %16 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %19 [
    i32 138, label %18
  ]

18:                                               ; preds = %2
  store i32 8, i32* %9, align 4
  br label %20

19:                                               ; preds = %2
  store i32 7, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %43 [
    i32 135, label %24
    i32 134, label %32
  ]

24:                                               ; preds = %20
  %25 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %26 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 1, i32* %31, align 4
  br label %46

32:                                               ; preds = %20
  %33 = load i32, i32* @RT5645_I2S_MS_S, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.rt5645_priv*, %struct.rt5645_priv** %7, align 8
  %37 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 0, i32* %42, align 4
  br label %46

43:                                               ; preds = %20
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %117

46:                                               ; preds = %32, %24
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %56 [
    i32 128, label %50
    i32 130, label %51
  ]

50:                                               ; preds = %46
  br label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %117

59:                                               ; preds = %51, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %76 [
    i32 131, label %63
    i32 129, label %64
    i32 133, label %68
    i32 132, label %72
  ]

63:                                               ; preds = %59
  br label %79

64:                                               ; preds = %59
  %65 = load i32, i32* @RT5645_I2S_DF_LEFT, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %79

68:                                               ; preds = %59
  %69 = load i32, i32* @RT5645_I2S_DF_PCM_A, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %79

72:                                               ; preds = %59
  %73 = load i32, i32* @RT5645_I2S_DF_PCM_B, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %59
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %117

79:                                               ; preds = %72, %68, %64, %63
  %80 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  switch i64 %82, label %105 [
    i64 137, label %83
    i64 136, label %94
  ]

83:                                               ; preds = %79
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %85 = load i32, i32* @RT5645_I2S1_SDP, align 4
  %86 = load i32, i32* @RT5645_I2S_MS_MASK, align 4
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 1, %87
  %89 = or i32 %86, %88
  %90 = load i32, i32* @RT5645_I2S_DF_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %84, i32 %85, i32 %91, i32 %92)
  br label %116

94:                                               ; preds = %79
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %96 = load i32, i32* @RT5645_I2S2_SDP, align 4
  %97 = load i32, i32* @RT5645_I2S_MS_MASK, align 4
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 1, %98
  %100 = or i32 %97, %99
  %101 = load i32, i32* @RT5645_I2S_DF_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %95, i32 %96, i32 %102, i32 %103)
  br label %116

105:                                              ; preds = %79
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

116:                                              ; preds = %94, %83
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %105, %76, %56, %43
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

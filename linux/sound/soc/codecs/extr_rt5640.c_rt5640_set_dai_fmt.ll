; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32* }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_MS_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_BP_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_DF_LEFT = common dso_local global i32 0, align 4
@RT5640_I2S_DF_PCM_A = common dso_local global i32 0, align 4
@RT5640_I2S_DF_PCM_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get sdp info: %d\0A\00", align 1
@RT5640_U_IF1 = common dso_local global i32 0, align 4
@RT5640_I2S1_SDP = common dso_local global i32 0, align 4
@RT5640_I2S_MS_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_BP_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_DF_MASK = common dso_local global i32 0, align 4
@RT5640_U_IF2 = common dso_local global i32 0, align 4
@RT5640_I2S2_SDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt5640_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5640_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt5640_priv* %14, %struct.rt5640_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %37 [
    i32 135, label %18
    i32 134, label %26
  ]

18:                                               ; preds = %2
  %19 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 1, i32* %25, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load i32, i32* @RT5640_I2S_MS_S, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 0, i32* %36, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %119

40:                                               ; preds = %26, %18
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %49 [
    i32 128, label %44
    i32 130, label %45
  ]

44:                                               ; preds = %40
  br label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @RT5640_I2S_BP_INV, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %119

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %69 [
    i32 131, label %56
    i32 129, label %57
    i32 133, label %61
    i32 132, label %65
  ]

56:                                               ; preds = %52
  br label %72

57:                                               ; preds = %52
  %58 = load i32, i32* @RT5640_I2S_DF_LEFT, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %72

61:                                               ; preds = %52
  %62 = load i32, i32* @RT5640_I2S_DF_PCM_A, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* @RT5640_I2S_DF_PCM_B, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %72

69:                                               ; preds = %52
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %119

72:                                               ; preds = %65, %61, %57, %56
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @get_sdp_info(%struct.snd_soc_component* %73, i64 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %119

88:                                               ; preds = %72
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @RT5640_U_IF1, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %95 = load i32, i32* @RT5640_I2S1_SDP, align 4
  %96 = load i32, i32* @RT5640_I2S_MS_MASK, align 4
  %97 = load i32, i32* @RT5640_I2S_BP_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RT5640_I2S_DF_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %93, %88
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @RT5640_U_IF2, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %110 = load i32, i32* @RT5640_I2S2_SDP, align 4
  %111 = load i32, i32* @RT5640_I2S_MS_MASK, align 4
  %112 = load i32, i32* @RT5640_I2S_BP_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @RT5640_I2S_DF_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %108, %103
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %80, %69, %49, %37
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @get_sdp_info(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da9055_priv = type { i64, i32 }

@DA9055_AIF_WORD_S16_LE = common dso_local global i32 0, align 4
@DA9055_AIF_WORD_S20_3LE = common dso_local global i32 0, align 4
@DA9055_AIF_WORD_S24_LE = common dso_local global i32 0, align 4
@DA9055_AIF_WORD_S32_LE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA9055_AIF_CTRL = common dso_local global i32 0, align 4
@DA9055_AIF_WORD_LENGTH_MASK = common dso_local global i32 0, align 4
@DA9055_SR_8000 = common dso_local global i32 0, align 4
@DA9055_SR_11025 = common dso_local global i32 0, align 4
@DA9055_SR_12000 = common dso_local global i32 0, align 4
@DA9055_SR_16000 = common dso_local global i32 0, align 4
@DA9055_SR_22050 = common dso_local global i32 0, align 4
@DA9055_SR_32000 = common dso_local global i32 0, align 4
@DA9055_SR_44100 = common dso_local global i32 0, align 4
@DA9055_SR_48000 = common dso_local global i32 0, align 4
@DA9055_SR_88200 = common dso_local global i32 0, align 4
@DA9055_SR_96000 = common dso_local global i32 0, align 4
@DA9055_SR = common dso_local global i32 0, align 4
@DA9055_PLL_CTRL = common dso_local global i32 0, align 4
@DA9055_PLL_EN = common dso_local global i32 0, align 4
@DA9055_PLL_SRM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @da9055_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da9055_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.da9055_priv* %17, %struct.da9055_priv** %9, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @params_width(%struct.snd_pcm_hw_params* %18)
  switch i32 %19, label %28 [
    i32 16, label %20
    i32 20, label %22
    i32 24, label %24
    i32 32, label %26
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @DA9055_AIF_WORD_S16_LE, align 4
  store i32 %21, i32* %10, align 4
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* @DA9055_AIF_WORD_S20_3LE, align 4
  store i32 %23, i32* %10, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @DA9055_AIF_WORD_S24_LE, align 4
  store i32 %25, i32* %10, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @DA9055_AIF_WORD_S32_LE, align 4
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %26, %24, %22, %20
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %33 = load i32, i32* @DA9055_AIF_CTRL, align 4
  %34 = load i32, i32* @DA9055_AIF_WORD_LENGTH_MASK, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_rate(%struct.snd_pcm_hw_params* %37)
  switch i32 %38, label %59 [
    i32 8000, label %39
    i32 11025, label %41
    i32 12000, label %43
    i32 16000, label %45
    i32 22050, label %47
    i32 32000, label %49
    i32 44100, label %51
    i32 48000, label %53
    i32 88200, label %55
    i32 96000, label %57
  ]

39:                                               ; preds = %31
  %40 = load i32, i32* @DA9055_SR_8000, align 4
  store i32 %40, i32* %11, align 4
  store i64 3072000, i64* %12, align 8
  br label %62

41:                                               ; preds = %31
  %42 = load i32, i32* @DA9055_SR_11025, align 4
  store i32 %42, i32* %11, align 4
  store i64 2822400, i64* %12, align 8
  br label %62

43:                                               ; preds = %31
  %44 = load i32, i32* @DA9055_SR_12000, align 4
  store i32 %44, i32* %11, align 4
  store i64 3072000, i64* %12, align 8
  br label %62

45:                                               ; preds = %31
  %46 = load i32, i32* @DA9055_SR_16000, align 4
  store i32 %46, i32* %11, align 4
  store i64 3072000, i64* %12, align 8
  br label %62

47:                                               ; preds = %31
  %48 = load i32, i32* @DA9055_SR_22050, align 4
  store i32 %48, i32* %11, align 4
  store i64 2822400, i64* %12, align 8
  br label %62

49:                                               ; preds = %31
  %50 = load i32, i32* @DA9055_SR_32000, align 4
  store i32 %50, i32* %11, align 4
  store i64 3072000, i64* %12, align 8
  br label %62

51:                                               ; preds = %31
  %52 = load i32, i32* @DA9055_SR_44100, align 4
  store i32 %52, i32* %11, align 4
  store i64 2822400, i64* %12, align 8
  br label %62

53:                                               ; preds = %31
  %54 = load i32, i32* @DA9055_SR_48000, align 4
  store i32 %54, i32* %11, align 4
  store i64 3072000, i64* %12, align 8
  br label %62

55:                                               ; preds = %31
  %56 = load i32, i32* @DA9055_SR_88200, align 4
  store i32 %56, i32* %11, align 4
  store i64 2822400, i64* %12, align 8
  br label %62

57:                                               ; preds = %31
  %58 = load i32, i32* @DA9055_SR_96000, align 4
  store i32 %58, i32* %11, align 4
  store i64 3072000, i64* %12, align 8
  br label %62

59:                                               ; preds = %31
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %116

62:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %41, %39
  %63 = load %struct.da9055_priv*, %struct.da9055_priv** %9, align 8
  %64 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = load i32, i32* @DA9055_SR, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i32 %70)
  br label %77

72:                                               ; preds = %62
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %74 = load i32, i32* @DA9055_SR, align 4
  %75 = load i32, i32* @DA9055_SR_48000, align 4
  %76 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.da9055_priv*, %struct.da9055_priv** %9, align 8
  %79 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  %83 = load %struct.da9055_priv*, %struct.da9055_priv** %9, align 8
  %84 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %82
  %89 = load %struct.da9055_priv*, %struct.da9055_priv** %9, align 8
  %90 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load i32, i32* @DA9055_PLL_CTRL, align 4
  %96 = load i32, i32* @DA9055_PLL_EN, align 4
  %97 = load i32, i32* @DA9055_PLL_SRM_EN, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @DA9055_PLL_EN, align 4
  %100 = load i32, i32* @DA9055_PLL_SRM_EN, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %98, i32 %101)
  br label %109

103:                                              ; preds = %88
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %105 = load i32, i32* @DA9055_PLL_CTRL, align 4
  %106 = load i32, i32* @DA9055_PLL_EN, align 4
  %107 = load i32, i32* @DA9055_PLL_EN, align 4
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %93
  br label %115

110:                                              ; preds = %82, %77
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = load i32, i32* @DA9055_PLL_CTRL, align 4
  %113 = load i32, i32* @DA9055_PLL_EN, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %110, %109
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %59, %28
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

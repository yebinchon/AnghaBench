; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DA7218_DAI_WORD_LENGTH_S16_LE = common dso_local global i32 0, align 4
@DA7218_DAI_WORD_LENGTH_S20_LE = common dso_local global i32 0, align 4
@DA7218_DAI_WORD_LENGTH_S24_LE = common dso_local global i32 0, align 4
@DA7218_DAI_WORD_LENGTH_S32_LE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA7218_DAI_CH_NUM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Invalid number of channels, only 1 to %d supported\0A\00", align 1
@DA7218_DAI_CH_NUM_SHIFT = common dso_local global i32 0, align 4
@DA7218_SR_8000 = common dso_local global i32 0, align 4
@DA7218_SR_11025 = common dso_local global i32 0, align 4
@DA7218_SR_12000 = common dso_local global i32 0, align 4
@DA7218_SR_16000 = common dso_local global i32 0, align 4
@DA7218_SR_22050 = common dso_local global i32 0, align 4
@DA7218_SR_24000 = common dso_local global i32 0, align 4
@DA7218_SR_32000 = common dso_local global i32 0, align 4
@DA7218_SR_44100 = common dso_local global i32 0, align 4
@DA7218_SR_48000 = common dso_local global i32 0, align 4
@DA7218_SR_88200 = common dso_local global i32 0, align 4
@DA7218_SR_96000 = common dso_local global i32 0, align 4
@DA7218_DAI_CTRL = common dso_local global i32 0, align 4
@DA7218_DAI_WORD_LENGTH_MASK = common dso_local global i32 0, align 4
@DA7218_DAI_CH_NUM_MASK = common dso_local global i32 0, align 4
@DA7218_SR = common dso_local global i32 0, align 4
@DA7218_SR_DAC_SHIFT = common dso_local global i32 0, align 4
@DA7218_SR_ADC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @da7218_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_width(%struct.snd_pcm_hw_params* %15)
  switch i32 %16, label %33 [
    i32 16, label %17
    i32 20, label %21
    i32 24, label %25
    i32 32, label %29
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @DA7218_DAI_WORD_LENGTH_S16_LE, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load i32, i32* @DA7218_DAI_WORD_LENGTH_S20_LE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load i32, i32* @DA7218_DAI_WORD_LENGTH_S24_LE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @DA7218_DAI_WORD_LENGTH_S32_LE, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %104

36:                                               ; preds = %29, %25, %21, %17
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_channels(%struct.snd_pcm_hw_params* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @DA7218_DAI_CH_NUM_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %36
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DA7218_DAI_CH_NUM_MAX, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %104

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @DA7218_DAI_CH_NUM_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @params_rate(%struct.snd_pcm_hw_params* %59)
  switch i32 %60, label %83 [
    i32 8000, label %61
    i32 11025, label %63
    i32 12000, label %65
    i32 16000, label %67
    i32 22050, label %69
    i32 24000, label %71
    i32 32000, label %73
    i32 44100, label %75
    i32 48000, label %77
    i32 88200, label %79
    i32 96000, label %81
  ]

61:                                               ; preds = %53
  %62 = load i32, i32* @DA7218_SR_8000, align 4
  store i32 %62, i32* %10, align 4
  br label %86

63:                                               ; preds = %53
  %64 = load i32, i32* @DA7218_SR_11025, align 4
  store i32 %64, i32* %10, align 4
  br label %86

65:                                               ; preds = %53
  %66 = load i32, i32* @DA7218_SR_12000, align 4
  store i32 %66, i32* %10, align 4
  br label %86

67:                                               ; preds = %53
  %68 = load i32, i32* @DA7218_SR_16000, align 4
  store i32 %68, i32* %10, align 4
  br label %86

69:                                               ; preds = %53
  %70 = load i32, i32* @DA7218_SR_22050, align 4
  store i32 %70, i32* %10, align 4
  br label %86

71:                                               ; preds = %53
  %72 = load i32, i32* @DA7218_SR_24000, align 4
  store i32 %72, i32* %10, align 4
  br label %86

73:                                               ; preds = %53
  %74 = load i32, i32* @DA7218_SR_32000, align 4
  store i32 %74, i32* %10, align 4
  br label %86

75:                                               ; preds = %53
  %76 = load i32, i32* @DA7218_SR_44100, align 4
  store i32 %76, i32* %10, align 4
  br label %86

77:                                               ; preds = %53
  %78 = load i32, i32* @DA7218_SR_48000, align 4
  store i32 %78, i32* %10, align 4
  br label %86

79:                                               ; preds = %53
  %80 = load i32, i32* @DA7218_SR_88200, align 4
  store i32 %80, i32* %10, align 4
  br label %86

81:                                               ; preds = %53
  %82 = load i32, i32* @DA7218_SR_96000, align 4
  store i32 %82, i32* %10, align 4
  br label %86

83:                                               ; preds = %53
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %104

86:                                               ; preds = %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %88 = load i32, i32* @DA7218_DAI_CTRL, align 4
  %89 = load i32, i32* @DA7218_DAI_WORD_LENGTH_MASK, align 4
  %90 = load i32, i32* @DA7218_DAI_CH_NUM_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load i32, i32* @DA7218_SR, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @DA7218_SR_DAC_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @DA7218_SR_ADC_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %86, %83, %45, %33
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

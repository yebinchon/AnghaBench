; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DA7213_DAI_WORD_LENGTH_S16_LE = common dso_local global i32 0, align 4
@DA7213_DAI_WORD_LENGTH_S20_LE = common dso_local global i32 0, align 4
@DA7213_DAI_WORD_LENGTH_S24_LE = common dso_local global i32 0, align 4
@DA7213_DAI_WORD_LENGTH_S32_LE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA7213_SR_8000 = common dso_local global i32 0, align 4
@DA7213_SR_11025 = common dso_local global i32 0, align 4
@DA7213_SR_12000 = common dso_local global i32 0, align 4
@DA7213_SR_16000 = common dso_local global i32 0, align 4
@DA7213_SR_22050 = common dso_local global i32 0, align 4
@DA7213_SR_32000 = common dso_local global i32 0, align 4
@DA7213_SR_44100 = common dso_local global i32 0, align 4
@DA7213_SR_48000 = common dso_local global i32 0, align 4
@DA7213_SR_88200 = common dso_local global i32 0, align 4
@DA7213_SR_96000 = common dso_local global i32 0, align 4
@DA7213_DAI_CTRL = common dso_local global i32 0, align 4
@DA7213_DAI_WORD_LENGTH_MASK = common dso_local global i32 0, align 4
@DA7213_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @da7213_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_width(%struct.snd_pcm_hw_params* %14)
  switch i32 %15, label %32 [
    i32 16, label %16
    i32 20, label %20
    i32 24, label %24
    i32 32, label %28
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @DA7213_DAI_WORD_LENGTH_S16_LE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i32, i32* @DA7213_DAI_WORD_LENGTH_S20_LE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load i32, i32* @DA7213_DAI_WORD_LENGTH_S24_LE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @DA7213_DAI_WORD_LENGTH_S32_LE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %28, %24, %20, %16
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_rate(%struct.snd_pcm_hw_params* %36)
  switch i32 %37, label %58 [
    i32 8000, label %38
    i32 11025, label %40
    i32 12000, label %42
    i32 16000, label %44
    i32 22050, label %46
    i32 32000, label %48
    i32 44100, label %50
    i32 48000, label %52
    i32 88200, label %54
    i32 96000, label %56
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* @DA7213_SR_8000, align 4
  store i32 %39, i32* %10, align 4
  br label %61

40:                                               ; preds = %35
  %41 = load i32, i32* @DA7213_SR_11025, align 4
  store i32 %41, i32* %10, align 4
  br label %61

42:                                               ; preds = %35
  %43 = load i32, i32* @DA7213_SR_12000, align 4
  store i32 %43, i32* %10, align 4
  br label %61

44:                                               ; preds = %35
  %45 = load i32, i32* @DA7213_SR_16000, align 4
  store i32 %45, i32* %10, align 4
  br label %61

46:                                               ; preds = %35
  %47 = load i32, i32* @DA7213_SR_22050, align 4
  store i32 %47, i32* %10, align 4
  br label %61

48:                                               ; preds = %35
  %49 = load i32, i32* @DA7213_SR_32000, align 4
  store i32 %49, i32* %10, align 4
  br label %61

50:                                               ; preds = %35
  %51 = load i32, i32* @DA7213_SR_44100, align 4
  store i32 %51, i32* %10, align 4
  br label %61

52:                                               ; preds = %35
  %53 = load i32, i32* @DA7213_SR_48000, align 4
  store i32 %53, i32* %10, align 4
  br label %61

54:                                               ; preds = %35
  %55 = load i32, i32* @DA7213_SR_88200, align 4
  store i32 %55, i32* %10, align 4
  br label %61

56:                                               ; preds = %35
  %57 = load i32, i32* @DA7213_SR_96000, align 4
  store i32 %57, i32* %10, align 4
  br label %61

58:                                               ; preds = %35
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %56, %54, %52, %50, %48, %46, %44, %42, %40, %38
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %63 = load i32, i32* @DA7213_DAI_CTRL, align 4
  %64 = load i32, i32* @DA7213_DAI_WORD_LENGTH_MASK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = load i32, i32* @DA7213_SR, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %61, %58, %32
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

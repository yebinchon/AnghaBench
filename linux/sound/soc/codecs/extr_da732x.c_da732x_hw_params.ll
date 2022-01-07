; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }

@DA732X_AIF_WORD_16 = common dso_local global i32 0, align 4
@DA732X_AIF_WORD_20 = common dso_local global i32 0, align 4
@DA732X_AIF_WORD_24 = common dso_local global i32 0, align 4
@DA732X_AIF_WORD_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DA732X_SR_8KHZ = common dso_local global i32 0, align 4
@DA732X_SR_11_025KHZ = common dso_local global i32 0, align 4
@DA732X_SR_12KHZ = common dso_local global i32 0, align 4
@DA732X_SR_16KHZ = common dso_local global i32 0, align 4
@DA732X_SR_22_05KHZ = common dso_local global i32 0, align 4
@DA732X_SR_24KHZ = common dso_local global i32 0, align 4
@DA732X_SR_32KHZ = common dso_local global i32 0, align 4
@DA732X_SR_44_1KHZ = common dso_local global i32 0, align 4
@DA732X_SR_48KHZ = common dso_local global i32 0, align 4
@DA732X_SR_88_1KHZ = common dso_local global i32 0, align 4
@DA732X_SR_96KHZ = common dso_local global i32 0, align 4
@DA732X_AIF_WORD_MASK = common dso_local global i32 0, align 4
@DA732X_REG_CLK_CTRL = common dso_local global i32 0, align 4
@DA732X_SR1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @da732x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da732x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
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
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_width(%struct.snd_pcm_hw_params* %20)
  switch i32 %21, label %38 [
    i32 16, label %22
    i32 20, label %26
    i32 24, label %30
    i32 32, label %34
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @DA732X_AIF_WORD_16, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %41

26:                                               ; preds = %3
  %27 = load i32, i32* @DA732X_AIF_WORD_20, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %41

30:                                               ; preds = %3
  %31 = load i32, i32* @DA732X_AIF_WORD_24, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %41

34:                                               ; preds = %3
  %35 = load i32, i32* @DA732X_AIF_WORD_32, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %34, %30, %26, %22
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  switch i32 %43, label %66 [
    i32 8000, label %44
    i32 11025, label %46
    i32 12000, label %48
    i32 16000, label %50
    i32 22050, label %52
    i32 24000, label %54
    i32 32000, label %56
    i32 44100, label %58
    i32 48000, label %60
    i32 88100, label %62
    i32 96000, label %64
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @DA732X_SR_8KHZ, align 4
  store i32 %45, i32* %11, align 4
  br label %69

46:                                               ; preds = %41
  %47 = load i32, i32* @DA732X_SR_11_025KHZ, align 4
  store i32 %47, i32* %11, align 4
  br label %69

48:                                               ; preds = %41
  %49 = load i32, i32* @DA732X_SR_12KHZ, align 4
  store i32 %49, i32* %11, align 4
  br label %69

50:                                               ; preds = %41
  %51 = load i32, i32* @DA732X_SR_16KHZ, align 4
  store i32 %51, i32* %11, align 4
  br label %69

52:                                               ; preds = %41
  %53 = load i32, i32* @DA732X_SR_22_05KHZ, align 4
  store i32 %53, i32* %11, align 4
  br label %69

54:                                               ; preds = %41
  %55 = load i32, i32* @DA732X_SR_24KHZ, align 4
  store i32 %55, i32* %11, align 4
  br label %69

56:                                               ; preds = %41
  %57 = load i32, i32* @DA732X_SR_32KHZ, align 4
  store i32 %57, i32* %11, align 4
  br label %69

58:                                               ; preds = %41
  %59 = load i32, i32* @DA732X_SR_44_1KHZ, align 4
  store i32 %59, i32* %11, align 4
  br label %69

60:                                               ; preds = %41
  %61 = load i32, i32* @DA732X_SR_48KHZ, align 4
  store i32 %61, i32* %11, align 4
  br label %69

62:                                               ; preds = %41
  %63 = load i32, i32* @DA732X_SR_88_1KHZ, align 4
  store i32 %63, i32* %11, align 4
  br label %69

64:                                               ; preds = %41
  %65 = load i32, i32* @DA732X_SR_96KHZ, align 4
  store i32 %65, i32* %11, align 4
  br label %69

66:                                               ; preds = %41
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %80

69:                                               ; preds = %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @DA732X_AIF_WORD_MASK, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %76 = load i32, i32* @DA732X_REG_CLK_CTRL, align 4
  %77 = load i32, i32* @DA732X_SR1_MASK, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %77, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %69, %66, %38
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

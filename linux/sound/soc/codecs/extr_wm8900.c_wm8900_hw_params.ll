; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8900_REG_AUDIO1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@WM8900_REG_DACCTRL = common dso_local global i32 0, align 4
@WM8900_REG_DACCTRL_DAC_SB_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8900_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %14 = load i32, i32* @WM8900_REG_AUDIO1, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  %16 = and i32 %15, -97
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_width(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %29 [
    i32 16, label %19
    i32 20, label %20
    i32 24, label %23
    i32 32, label %26
  ]

19:                                               ; preds = %3
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, 32
  store i32 %22, i32* %9, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, 64
  store i32 %25, i32* %9, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, 96
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %26, %23, %20, %19
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i32, i32* @WM8900_REG_AUDIO1, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %44 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %45 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %47 = call i32 @params_rate(%struct.snd_pcm_hw_params* %46)
  %48 = icmp sle i32 %47, 24000
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @WM8900_REG_DACCTRL_DAC_SB_FILT, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load i32, i32* @WM8900_REG_DACCTRL_DAC_SB_FILT, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %60 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %32
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

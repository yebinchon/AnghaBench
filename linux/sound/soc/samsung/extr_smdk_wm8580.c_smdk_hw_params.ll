; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smdk_wm8580.c_smdk_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smdk_wm8580.c_smdk_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8580_MCLK = common dso_local global i32 0, align 4
@WM8580_CLKSRC_PLLA = common dso_local global i32 0, align 4
@WM8580_PLLA = common dso_local global i32 0, align 4
@SMDK_WM8580_FREQ = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @smdk_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smdk_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_width(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %20 [
    i32 8, label %19
    i32 16, label %19
  ]

19:                                               ; preds = %2, %2
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %19
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  switch i32 %25, label %29 [
    i32 16000, label %26
    i32 22050, label %26
    i32 32000, label %26
    i32 44100, label %26
    i32 48000, label %26
    i32 88200, label %26
    i32 96000, label %26
    i32 64000, label %27
    i32 8000, label %28
    i32 11025, label %28
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  store i32 256, i32* %9, align 4
  br label %32

27:                                               ; preds = %23
  store i32 384, i32* %9, align 4
  br label %32

28:                                               ; preds = %23, %23
  store i32 512, i32* %9, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %28, %27, %26
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %38 = load i32, i32* @WM8580_MCLK, align 4
  %39 = load i32, i32* @WM8580_CLKSRC_PLLA, align 4
  %40 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %32
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %47 = load i32, i32* @WM8580_PLLA, align 4
  %48 = load i32, i32* @SMDK_WM8580_FREQ, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %46, i32 %47, i32 0, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %45
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %57 = load i32, i32* @WM8580_CLKSRC_PLLA, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %60 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %53, %43, %29, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

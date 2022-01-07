; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_neo1973_wm8753.c_neo1973_hifi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_neo1973_wm8753.c_neo1973_hifi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@WM8753_BCLK_DIV_4 = common dso_local global i32 0, align 4
@WM8753_BCLK_DIV_2 = common dso_local global i32 0, align 4
@WM8753_BCLK_DIV_16 = common dso_local global i32 0, align 4
@WM8753_BCLK_DIV_8 = common dso_local global i32 0, align 4
@WM8753_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@S3C24XX_DIV_MCLK = common dso_local global i32 0, align 4
@S3C2410_IISMOD_32FS = common dso_local global i32 0, align 4
@WM8753_BCLKDIV = common dso_local global i32 0, align 4
@S3C24XX_DIV_PRESCALER = common dso_local global i32 0, align 4
@WM8753_PLL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @neo1973_hifi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neo1973_hifi_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %20, align 8
  store %struct.snd_soc_dai* %21, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = call i64 (...) @s3c24xx_i2s_get_clockrate()
  store i64 %22, i64* %12, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i32 @params_rate(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %38 [
    i32 8000, label %25
    i32 16000, label %25
    i32 48000, label %26
    i32 96000, label %28
    i32 11025, label %30
    i32 22050, label %32
    i32 44100, label %34
    i32 88200, label %36
  ]

25:                                               ; preds = %2, %2
  store i32 12288000, i32* %9, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @WM8753_BCLK_DIV_4, align 4
  store i32 %27, i32* %10, align 4
  store i32 12288000, i32* %9, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* @WM8753_BCLK_DIV_2, align 4
  store i32 %29, i32* %10, align 4
  store i32 12288000, i32* %9, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @WM8753_BCLK_DIV_16, align 4
  store i32 %31, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @WM8753_BCLK_DIV_8, align 4
  store i32 %33, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @WM8753_BCLK_DIV_4, align 4
  store i32 %35, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @WM8753_BCLK_DIV_2, align 4
  store i32 %37, i32* %10, align 4
  store i32 11289600, i32* %9, align 4
  br label %38

38:                                               ; preds = %2, %36, %34, %32, %30, %28, %26, %25
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %40 = load i32, i32* @WM8753_MCLK, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %43 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %87

48:                                               ; preds = %38
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %50 = load i32, i32* @S3C24XX_DIV_MCLK, align 4
  %51 = load i32, i32* @S3C2410_IISMOD_32FS, align 4
  %52 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %48
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = load i32, i32* @WM8753_BCLKDIV, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %87

66:                                               ; preds = %57
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %68 = load i32, i32* @S3C24XX_DIV_PRESCALER, align 4
  %69 = call i32 @S3C24XX_PRESCALE(i32 4, i32 4)
  %70 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %87

75:                                               ; preds = %66
  %76 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %77 = load i32, i32* @WM8753_PLL1, align 4
  %78 = load i64, i64* %12, align 8
  %79 = udiv i64 %78, 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %76, i32 %77, i32 0, i64 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %84, %73, %64, %55, %46
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @s3c24xx_i2s_get_clockrate(...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @S3C24XX_PRESCALE(i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

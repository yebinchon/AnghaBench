; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_spitz.c_spitz_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_spitz.c_spitz_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@WM8750_SYSCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@PXA2XX_I2S_SYSCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @spitz_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spitz_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  switch i32 %21, label %24 [
    i32 8000, label %22
    i32 16000, label %22
    i32 48000, label %22
    i32 96000, label %22
    i32 11025, label %23
    i32 22050, label %23
    i32 44100, label %23
  ]

22:                                               ; preds = %2, %2, %2, %2
  store i32 12288000, i32* %9, align 4
  br label %24

23:                                               ; preds = %2, %2, %2
  store i32 11289600, i32* %9, align 4
  br label %24

24:                                               ; preds = %2, %23, %22
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = load i32, i32* @WM8750_SYSCLK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %29 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %36 = load i32, i32* @PXA2XX_I2S_SYSCLK, align 4
  %37 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %38 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %35, i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

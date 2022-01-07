; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_max98090.c_tegra_max98090_asoc_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_max98090.c_tegra_max98090_asoc_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card*, %struct.snd_soc_dai* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.tegra_max98090 = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Can't configure clocks\0A\00", align 1
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"codec_dai clock not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @tegra_max98090_asoc_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_max98090_asoc_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.tegra_max98090*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %20, align 8
  store %struct.snd_soc_card* %21, %struct.snd_soc_card** %8, align 8
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %23 = call %struct.tegra_max98090* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %22)
  store %struct.tegra_max98090* %23, %struct.tegra_max98090** %9, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %29 [
    i32 8000, label %27
    i32 16000, label %27
    i32 24000, label %27
    i32 32000, label %27
    i32 48000, label %27
    i32 64000, label %27
    i32 96000, label %27
    i32 11025, label %28
    i32 22050, label %28
    i32 44100, label %28
    i32 88200, label %28
  ]

27:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 12288000, i32* %11, align 4
  br label %30

28:                                               ; preds = %2, %2, %2, %2
  store i32 11289600, i32* %11, align 4
  br label %30

29:                                               ; preds = %2
  store i32 12000000, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %28, %27
  %31 = load %struct.tegra_max98090*, %struct.tegra_max98090** %9, align 8
  %32 = getelementptr inbounds %struct.tegra_max98090, %struct.tegra_max98090* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @tegra_asoc_utils_set_rate(i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %30
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %48 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %45, i32 0, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %51, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.tegra_max98090* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @tegra_asoc_utils_set_rate(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

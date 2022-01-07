; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5640.c_tegra_rt5640_asoc_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5640.c_tegra_rt5640_asoc_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card*, %struct.snd_soc_dai* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.tegra_rt5640 = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Can't configure clocks\0A\00", align 1
@RT5640_SCLK_S_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"codec_dai clock not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @tegra_rt5640_asoc_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rt5640_asoc_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.tegra_rt5640*, align 8
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
  %23 = call %struct.tegra_rt5640* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %22)
  store %struct.tegra_rt5640* %23, %struct.tegra_rt5640** %9, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 256, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %9, align 8
  %29 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @tegra_asoc_utils_set_rate(i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %2
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %43 = load i32, i32* @RT5640_SCLK_S_MCLK, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %46 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49, %35
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.tegra_rt5640* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

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

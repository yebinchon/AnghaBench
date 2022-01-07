; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card*, %struct.snd_soc_dai* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.tegra_wm8903 = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Can't configure clocks\0A\00", align 1
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"codec_dai clock not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @tegra_wm8903_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wm8903_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.tegra_wm8903*, align 8
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
  %23 = call %struct.tegra_wm8903* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %22)
  store %struct.tegra_wm8903* %23, %struct.tegra_wm8903** %9, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %30 [
    i32 64000, label %27
    i32 88200, label %27
    i32 96000, label %27
  ]

27:                                               ; preds = %2, %2, %2
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 128, %28
  store i32 %29, i32* %11, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 256, %31
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 6000000
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %11, align 4
  br label %34

40:                                               ; preds = %34
  %41 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %41, i32 0, i32 0
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @tegra_asoc_utils_set_rate(i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %50 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %40
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %58 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %55, i32 0, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %63 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61, %48
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.tegra_wm8903* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

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

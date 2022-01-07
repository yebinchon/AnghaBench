; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_spdif.c_tegra20_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_spdif.c_tegra20_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.device* }
%struct.device = type { i32 }
%struct.tegra20_spdif = type { i32, i32 }

@TEGRA20_SPDIF_CTRL_PACK = common dso_local global i32 0, align 4
@TEGRA20_SPDIF_CTRL_BIT_MODE_MASK = common dso_local global i32 0, align 4
@TEGRA20_SPDIF_CTRL_BIT_MODE_16BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TEGRA20_SPDIF_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't set SPDIF clock rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tegra20_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.tegra20_spdif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.tegra20_spdif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %17)
  store %struct.tegra20_spdif* %18, %struct.tegra20_spdif** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @TEGRA20_SPDIF_CTRL_PACK, align 4
  %20 = load i32, i32* @TEGRA20_SPDIF_CTRL_BIT_MODE_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_format(%struct.snd_pcm_hw_params* %24)
  switch i32 %25, label %32 [
    i32 128, label %26
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @TEGRA20_SPDIF_CTRL_PACK, align 4
  %28 = load i32, i32* @TEGRA20_SPDIF_CTRL_BIT_MODE_16BIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %69

35:                                               ; preds = %26
  %36 = load %struct.tegra20_spdif*, %struct.tegra20_spdif** %9, align 8
  %37 = getelementptr inbounds %struct.tegra20_spdif, %struct.tegra20_spdif* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TEGRA20_SPDIF_CTRL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i32 @params_rate(%struct.snd_pcm_hw_params* %43)
  switch i32 %44, label %52 [
    i32 32000, label %45
    i32 44100, label %46
    i32 48000, label %47
    i32 88200, label %48
    i32 96000, label %49
    i32 176400, label %50
    i32 192000, label %51
  ]

45:                                               ; preds = %35
  store i32 4096000, i32* %13, align 4
  br label %55

46:                                               ; preds = %35
  store i32 5644800, i32* %13, align 4
  br label %55

47:                                               ; preds = %35
  store i32 6144000, i32* %13, align 4
  br label %55

48:                                               ; preds = %35
  store i32 11289600, i32* %13, align 4
  br label %55

49:                                               ; preds = %35
  store i32 12288000, i32* %13, align 4
  br label %55

50:                                               ; preds = %35
  store i32 22579200, i32* %13, align 4
  br label %55

51:                                               ; preds = %35
  store i32 24576000, i32* %13, align 4
  br label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %69

55:                                               ; preds = %51, %50, %49, %48, %47, %46, %45
  %56 = load %struct.tegra20_spdif*, %struct.tegra20_spdif** %9, align 8
  %57 = getelementptr inbounds %struct.tegra20_spdif, %struct.tegra20_spdif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @clk_set_rate(i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %63, %52, %32
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.tegra20_spdif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

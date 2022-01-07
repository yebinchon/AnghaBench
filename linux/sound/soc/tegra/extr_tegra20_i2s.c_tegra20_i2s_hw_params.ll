; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_i2s.c_tegra20_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_i2s.c_tegra20_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.device* }
%struct.device = type { i32 }
%struct.tegra20_i2s = type { i32, i32 }

@TEGRA20_I2S_CTRL_BIT_SIZE_MASK = common dso_local global i32 0, align 4
@TEGRA20_I2S_CTRL_BIT_SIZE_16 = common dso_local global i32 0, align 4
@TEGRA20_I2S_CTRL_BIT_SIZE_24 = common dso_local global i32 0, align 4
@TEGRA20_I2S_CTRL_BIT_SIZE_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TEGRA20_I2S_CTRL_FIFO_FORMAT_MASK = common dso_local global i32 0, align 4
@TEGRA20_I2S_CTRL_FIFO_FORMAT_PACKED = common dso_local global i32 0, align 4
@TEGRA20_I2S_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't set I2S clock rate: %d\0A\00", align 1
@TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_MASK_US = common dso_local global i32 0, align 4
@TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_SHIFT = common dso_local global i32 0, align 4
@TEGRA20_I2S_TIMING_NON_SYM_ENABLE = common dso_local global i32 0, align 4
@TEGRA20_I2S_TIMING = common dso_local global i32 0, align 4
@TEGRA20_I2S_FIFO_SCR = common dso_local global i32 0, align 4
@TEGRA20_I2S_FIFO_SCR_FIFO2_ATN_LVL_FOUR_SLOTS = common dso_local global i32 0, align 4
@TEGRA20_I2S_FIFO_SCR_FIFO1_ATN_LVL_FOUR_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tegra20_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.tegra20_i2s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = call %struct.tegra20_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %20)
  store %struct.tegra20_i2s* %21, %struct.tegra20_i2s** %9, align 8
  %22 = load i32, i32* @TEGRA20_I2S_CTRL_BIT_SIZE_MASK, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_format(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %31 [
    i32 130, label %25
    i32 129, label %27
    i32 128, label %29
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @TEGRA20_I2S_CTRL_BIT_SIZE_16, align 4
  store i32 %26, i32* %11, align 4
  store i32 16, i32* %13, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @TEGRA20_I2S_CTRL_BIT_SIZE_24, align 4
  store i32 %28, i32* %11, align 4
  store i32 24, i32* %13, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @TEGRA20_I2S_CTRL_BIT_SIZE_32, align 4
  store i32 %30, i32* %11, align 4
  store i32 32, i32* %13, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %112

34:                                               ; preds = %29, %27, %25
  %35 = load i32, i32* @TEGRA20_I2S_CTRL_FIFO_FORMAT_MASK, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @TEGRA20_I2S_CTRL_FIFO_FORMAT_PACKED, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.tegra20_i2s*, %struct.tegra20_i2s** %9, align 8
  %42 = getelementptr inbounds %struct.tegra20_i2s, %struct.tegra20_i2s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TEGRA20_I2S_CTRL, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %49 = call i32 @params_rate(%struct.snd_pcm_hw_params* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %52 = call i32 @params_channels(%struct.snd_pcm_hw_params* %51)
  %53 = mul nsw i32 %50, %52
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %53, %54
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %15, align 4
  %57 = load %struct.tegra20_i2s*, %struct.tegra20_i2s** %9, align 8
  %58 = getelementptr inbounds %struct.tegra20_i2s, %struct.tegra20_i2s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @clk_set_rate(i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %34
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %112

69:                                               ; preds = %34
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 2, %71
  %73 = sdiv i32 %70, %72
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_MASK_US, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %69
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %112

84:                                               ; preds = %77
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_SHIFT, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 2, %89
  %91 = srem i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @TEGRA20_I2S_TIMING_NON_SYM_ENABLE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %84
  %98 = load %struct.tegra20_i2s*, %struct.tegra20_i2s** %9, align 8
  %99 = getelementptr inbounds %struct.tegra20_i2s, %struct.tegra20_i2s* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TEGRA20_I2S_TIMING, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @regmap_write(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.tegra20_i2s*, %struct.tegra20_i2s** %9, align 8
  %105 = getelementptr inbounds %struct.tegra20_i2s, %struct.tegra20_i2s* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TEGRA20_I2S_FIFO_SCR, align 4
  %108 = load i32, i32* @TEGRA20_I2S_FIFO_SCR_FIFO2_ATN_LVL_FOUR_SLOTS, align 4
  %109 = load i32, i32* @TEGRA20_I2S_FIFO_SCR_FIFO1_ATN_LVL_FOUR_SLOTS, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @regmap_write(i32 %106, i32 %107, i32 %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %97, %81, %64, %31
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.tegra20_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

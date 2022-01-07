; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-i2s.c_zx_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_i2s_info = type { i32, i64, i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@ZX_I2S_TIMING_CTRL = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_TS_WIDTH_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_DATA_SIZE_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_LANE_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_CHN_MASK = common dso_local global i64 0, align 8
@ZX_I2S_TIMING_TSCFG_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown data format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Not support channel num %d\0A\00", align 1
@CLK_RAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @zx_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.zx_i2s_info*, align 8
  %9 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.zx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %17)
  store %struct.zx_i2s_info* %18, %struct.zx_i2s_info** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 32, i32* %14, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %19, %struct.snd_pcm_substream* %20)
  store %struct.snd_dmaengine_dai_dma_data* %21, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %22 = load i32, i32* %14, align 4
  %23 = lshr i32 %22, 3
  %24 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %25 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %8, align 8
  %27 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZX_I2S_TIMING_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @readl_relaxed(i64 %30)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* @ZX_I2S_TIMING_TS_WIDTH_MASK, align 8
  %33 = load i64, i64* @ZX_I2S_TIMING_DATA_SIZE_MASK, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @ZX_I2S_TIMING_LANE_MASK, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @ZX_I2S_TIMING_CHN_MASK, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @ZX_I2S_TIMING_TSCFG_MASK, align 8
  %40 = or i64 %38, %39
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %15, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %15, align 8
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @params_format(%struct.snd_pcm_hw_params* %44)
  switch i32 %45, label %49 [
    i32 130, label %46
    i32 129, label %47
    i32 128, label %48
  ]

46:                                               ; preds = %3
  store i32 16, i32* %12, align 4
  br label %56

47:                                               ; preds = %3
  store i32 24, i32* %12, align 4
  br label %56

48:                                               ; preds = %3
  store i32 32, i32* %12, align 4
  br label %56

49:                                               ; preds = %3
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %116

56:                                               ; preds = %48, %47, %46
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @ZX_I2S_TIMING_TS_WIDTH(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @ZX_I2S_TIMING_DATA_SIZE(i32 %59)
  %61 = or i64 %58, %60
  %62 = load i64, i64* %15, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %15, align 8
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %65 = call i32 @params_channels(%struct.snd_pcm_hw_params* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  switch i32 %66, label %71 [
    i32 1, label %67
    i32 2, label %68
    i32 4, label %68
    i32 6, label %68
    i32 8, label %68
  ]

67:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  store i64 2, i64* %16, align 8
  br label %79

68:                                               ; preds = %56, %56, %56, %56
  %69 = load i32, i32* %11, align 4
  %70 = udiv i32 %69, 2
  store i32 %70, i32* %10, align 4
  store i64 3, i64* %16, align 8
  br label %79

71:                                               ; preds = %56
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %116

79:                                               ; preds = %68, %67
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @ZX_I2S_TIMING_LANE(i32 %80)
  %82 = load i64, i64* %15, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i64 @ZX_I2S_TIMING_TSCFG(i64 %84)
  %86 = load i64, i64* %15, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %15, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @ZX_I2S_TIMING_CHN(i32 %88)
  %90 = load i64, i64* %15, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %8, align 8
  %94 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ZX_I2S_TIMING_CTRL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel_relaxed(i64 %92, i64 %97)
  %99 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %8, align 8
  %100 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %79
  %104 = load %struct.zx_i2s_info*, %struct.zx_i2s_info** %8, align 8
  %105 = getelementptr inbounds %struct.zx_i2s_info, %struct.zx_i2s_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %108 = call i32 @params_rate(%struct.snd_pcm_hw_params* %107)
  %109 = load i32, i32* %11, align 4
  %110 = mul i32 %108, %109
  %111 = load i32, i32* @CLK_RAT, align 4
  %112 = mul i32 %110, %111
  %113 = call i32 @clk_set_rate(i32 %106, i32 %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %103, %79
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %71, %49
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.zx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @ZX_I2S_TIMING_TS_WIDTH(i32) #1

declare dso_local i64 @ZX_I2S_TIMING_DATA_SIZE(i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @ZX_I2S_TIMING_LANE(i32) #1

declare dso_local i64 @ZX_I2S_TIMING_TSCFG(i64) #1

declare dso_local i64 @ZX_I2S_TIMING_CHN(i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

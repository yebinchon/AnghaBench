; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.jz4740_i2s = type { i64, i32 }

@JZ_REG_AIC_CTRL = common dso_local global i32 0, align 4
@JZ_REG_AIC_CLK_DIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_MASK = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_OFFSET = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_MONO_TO_STEREO = common dso_local global i32 0, align 4
@I2SDIV_DV_MASK = common dso_local global i32 0, align 4
@I2SDIV_DV_SHIFT = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_MASK = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_OFFSET = common dso_local global i32 0, align 4
@JZ_I2S_JZ4780 = common dso_local global i64 0, align 8
@I2SDIV_IDV_MASK = common dso_local global i32 0, align 4
@I2SDIV_IDV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @jz4740_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.jz4740_i2s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.jz4740_i2s* %14, %struct.jz4740_i2s** %8, align 8
  %15 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %16 = load i32, i32* @JZ_REG_AIC_CTRL, align 4
  %17 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %19 = load i32, i32* @JZ_REG_AIC_CLK_DIV, align 4
  %20 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %22 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  %27 = mul nsw i32 64, %26
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_format(%struct.snd_pcm_hw_params* %29)
  switch i32 %30, label %33 [
    i32 128, label %31
    i32 129, label %32
  ]

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %36

32:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %122

36:                                               ; preds = %32, %31
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = load i32, i32* @JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @JZ_AIC_CTRL_OUTPUT_SAMPLE_SIZE_OFFSET, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %53 = call i32 @params_channels(%struct.snd_pcm_hw_params* %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load i32, i32* @JZ_AIC_CTRL_MONO_TO_STEREO, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %64

59:                                               ; preds = %42
  %60 = load i32, i32* @JZ_AIC_CTRL_MONO_TO_STEREO, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* @I2SDIV_DV_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @I2SDIV_DV_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %113

75:                                               ; preds = %36
  %76 = load i32, i32* @JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @JZ_AIC_CTRL_INPUT_SAMPLE_SIZE_OFFSET, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %86 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @JZ_I2S_JZ4780, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %75
  %91 = load i32, i32* @I2SDIV_IDV_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* @I2SDIV_IDV_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %112

101:                                              ; preds = %75
  %102 = load i32, i32* @I2SDIV_DV_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* @I2SDIV_DV_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %101, %90
  br label %113

113:                                              ; preds = %112, %64
  %114 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %115 = load i32, i32* @JZ_REG_AIC_CTRL, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %114, i32 %115, i32 %116)
  %118 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %8, align 8
  %119 = load i32, i32* @JZ_REG_AIC_CLK_DIV, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %118, i32 %119, i32 %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %113, %33
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @jz4740_i2s_read(%struct.jz4740_i2s*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @jz4740_i2s_write(%struct.jz4740_i2s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

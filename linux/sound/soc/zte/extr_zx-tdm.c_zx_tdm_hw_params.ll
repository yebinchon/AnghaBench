; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_tdm_info = type { i32, i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@TIMING_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown data format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_TIMING_CTRL = common dso_local global i32 0, align 4
@REG_TS_MASK0 = common dso_local global i32 0, align 4
@TIMING_WIDTH_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @zx_tdm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tdm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.zx_tdm_info*, align 8
  %9 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.zx_tdm_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.zx_tdm_info* %16, %struct.zx_tdm_info** %8, align 8
  %17 = load i32, i32* @TIMING_DEFAULT_WIDTH, align 4
  store i32 %17, i32* %10, align 4
  store i32 32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %18, %struct.snd_pcm_substream* %19)
  store %struct.snd_dmaengine_dai_dma_data* %20, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = lshr i32 %21, 3
  %23 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %24 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_format(%struct.snd_pcm_hw_params* %25)
  switch i32 %26, label %28 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %3, %3, %3
  store i32 1, i32* %10, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %27
  %36 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %37 = load i32, i32* @REG_TIMING_CTRL, align 4
  %38 = call i64 @zx_tdm_readl(%struct.zx_tdm_info* %36, i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @TIMING_TS_WIDTH(i32 %39)
  %41 = call i64 @TIMING_TS_NUM(i32 1)
  %42 = or i64 %40, %41
  %43 = load i64, i64* %14, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %14, align 8
  %45 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %46 = load i32, i32* @REG_TIMING_CTRL, align 4
  %47 = load i64, i64* %14, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %45, i32 %46, i32 %48)
  %50 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %51 = load i32, i32* @REG_TS_MASK0, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %50, i32 %51, i32 %52)
  %54 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %55 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %35
  %59 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %60 = getelementptr inbounds %struct.zx_tdm_info, %struct.zx_tdm_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i32 @params_rate(%struct.snd_pcm_hw_params* %62)
  %64 = load i32, i32* @TIMING_WIDTH_FACTOR, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = mul i32 %65, %66
  %68 = call i32 @clk_set_rate(i32 %61, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %58, %35
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.zx_tdm_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @zx_tdm_readl(%struct.zx_tdm_info*, i32) #1

declare dso_local i64 @TIMING_TS_WIDTH(i32) #1

declare dso_local i64 @TIMING_TS_NUM(i32) #1

declare dso_local i32 @zx_tdm_writel(%struct.zx_tdm_info*, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

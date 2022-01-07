; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-spdif.c_zx_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-spdif.c_zx_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_spdif_info = type { i32, i64 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@ZX_CTRL = common dso_local global i64 0, align 8
@ZX_CTRL_MODA_MASK = common dso_local global i32 0, align 4
@ZX_CTRL_MODA_16 = common dso_local global i32 0, align 4
@ZX_CTRL_MODA_18 = common dso_local global i32 0, align 4
@ZX_CTRL_MODA_20 = common dso_local global i32 0, align 4
@ZX_CTRL_MODA_24 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Format not support!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZX_CTRL_DOUBLE_TRACK = common dso_local global i32 0, align 4
@ZX_CTRL_LEFT_TRACK = common dso_local global i32 0, align 4
@ZX_VALID_BIT = common dso_local global i64 0, align 8
@ZX_VALID_TRACK_MASK = common dso_local global i32 0, align 4
@ZX_VALID_DOUBLE_TRACK = common dso_local global i32 0, align 4
@ZX_VALID_RIGHT_TRACK = common dso_local global i32 0, align 4
@ZX_SPDIF_CLK_RAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @zx_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.zx_spdif_info*, align 8
  %9 = alloca %struct.zx_spdif_info*, align 8
  %10 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.zx_spdif_info* @dev_get_drvdata(i32 %17)
  store %struct.zx_spdif_info* %18, %struct.zx_spdif_info** %8, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = call %struct.zx_spdif_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %19)
  store %struct.zx_spdif_info* %20, %struct.zx_spdif_info** %9, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %21, %struct.snd_pcm_substream* %22)
  store %struct.snd_dmaengine_dai_dma_data* %23, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_width(%struct.snd_pcm_hw_params* %24)
  %26 = ashr i32 %25, 3
  %27 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %28 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %30 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ZX_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @ZX_CTRL_MODA_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 @params_format(%struct.snd_pcm_hw_params* %39)
  switch i32 %40, label %57 [
    i32 131, label %41
    i32 130, label %45
    i32 129, label %49
    i32 128, label %53
  ]

41:                                               ; preds = %3
  %42 = load i32, i32* @ZX_CTRL_MODA_16, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %64

45:                                               ; preds = %3
  %46 = load i32, i32* @ZX_CTRL_MODA_18, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %64

49:                                               ; preds = %3
  %50 = load i32, i32* @ZX_CTRL_MODA_20, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %64

53:                                               ; preds = %3
  %54 = load i32, i32* @ZX_CTRL_MODA_24, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %64

57:                                               ; preds = %3
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %134

64:                                               ; preds = %53, %49, %45, %41
  %65 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %66 = call i32 @params_channels(%struct.snd_pcm_hw_params* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @ZX_CTRL_DOUBLE_TRACK, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @ZX_CTRL_LEFT_TRACK, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %80 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ZX_CTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel_relaxed(i32 %78, i64 %83)
  %85 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %86 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ZX_VALID_BIT, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl_relaxed(i64 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @ZX_VALID_TRACK_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load i32, i32* @ZX_VALID_DOUBLE_TRACK, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %105

101:                                              ; preds = %77
  %102 = load i32, i32* @ZX_VALID_RIGHT_TRACK, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %108 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ZX_VALID_BIT, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %106, i64 %111)
  %113 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %114 = call i32 @params_rate(%struct.snd_pcm_hw_params* %113)
  store i32 %114, i32* %13, align 4
  %115 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %116 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @zx_spdif_chanstats(i64 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %105
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %4, align 4
  br label %134

124:                                              ; preds = %105
  %125 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %9, align 8
  %126 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* @ZX_SPDIF_CLK_RAT, align 4
  %132 = mul nsw i32 %130, %131
  %133 = call i32 @clk_set_rate(i32 %127, i32 %132)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %124, %122, %57
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.zx_spdif_info* @dev_get_drvdata(i32) #1

declare dso_local %struct.zx_spdif_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @zx_spdif_chanstats(i64, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

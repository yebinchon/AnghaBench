; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { i32, %struct.atmel_pcm_dma_params**, %struct.TYPE_2__*, i32, i32 }
%struct.atmel_pcm_dma_params = type { %struct.snd_pcm_substream*, %struct.TYPE_2__* }
%struct.snd_pcm_substream = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.platform_device = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"atmel_ssc_startup: SSC_SR=0x%x\0A\00", align 1
@SR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"atmel_ssc_dai: Starting clock\0A\00", align 1
@CR = common dso_local global i32 0, align 4
@CR_SWRST = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSC_DIR_MASK_PLAYBACK = common dso_local global i32 0, align 4
@SSC_DIR_MASK_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@atmel_ssc_hw_rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FRAME_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to specify rate rule: %d\0A\00", align 1
@ssc_dma_params = common dso_local global %struct.atmel_pcm_dma_params** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @atmel_ssc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.atmel_ssc_info*, align 8
  %8 = alloca %struct.atmel_pcm_dma_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.platform_device* @to_platform_device(i32 %14)
  store %struct.platform_device* %15, %struct.platform_device** %6, align 8
  %16 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %16, i64 %19
  store %struct.atmel_ssc_info* %20, %struct.atmel_ssc_info** %7, align 8
  %21 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %22 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SR, align 4
  %27 = call i32 @ssc_readl(i32 %25, i32 %26)
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %31 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_enable(i32 %34)
  %36 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %37 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_get_rate(i32 %40)
  %42 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %43 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %45 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %2
  %49 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %50 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CR, align 4
  %55 = load i32, i32* @CR_SWRST, align 4
  %56 = call i32 @SSC_BIT(i32 %55)
  %57 = call i32 @ssc_writel(i32 %53, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %48, %2
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  %65 = load i32, i32* @SSC_DIR_MASK_PLAYBACK, align 4
  store i32 %65, i32* %10, align 4
  br label %68

66:                                               ; preds = %58
  store i32 1, i32* %9, align 4
  %67 = load i32, i32* @SSC_DIR_MASK_CAPTURE, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %73 = load i32, i32* @atmel_ssc_hw_rule_rate, align 4
  %74 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %76 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %77 = call i32 @snd_pcm_hw_rule_add(i32 %71, i32 0, i32 %72, i32 %73, %struct.atmel_ssc_info* %74, i32 %75, i32 %76, i32 -1)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %68
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %131

87:                                               ; preds = %68
  %88 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** @ssc_dma_params, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %88, i64 %91
  %93 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %93, i64 %95
  store %struct.atmel_pcm_dma_params* %96, %struct.atmel_pcm_dma_params** %8, align 8
  %97 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %98 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %8, align 8
  %101 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %100, i32 0, i32 1
  store %struct.TYPE_2__* %99, %struct.TYPE_2__** %101, align 8
  %102 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %103 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %8, align 8
  %104 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %103, i32 0, i32 0
  store %struct.snd_pcm_substream* %102, %struct.snd_pcm_substream** %104, align 8
  %105 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %8, align 8
  %106 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %107 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %106, i32 0, i32 1
  %108 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %108, i64 %110
  store %struct.atmel_pcm_dma_params* %105, %struct.atmel_pcm_dma_params** %111, align 8
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %113 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %114 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %8, align 8
  %115 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %112, %struct.snd_pcm_substream* %113, %struct.atmel_pcm_dma_params* %114)
  %116 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %117 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %87
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %131

125:                                              ; preds = %87
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %7, align 8
  %128 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %122, %80
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ssc_readl(i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.atmel_ssc_info*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.atmel_pcm_dma_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

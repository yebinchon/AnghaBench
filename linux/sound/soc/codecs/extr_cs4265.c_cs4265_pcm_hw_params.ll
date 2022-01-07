; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4265.c_cs4265_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4265.c_cs4265_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs4265_private = type { i32, i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS4265_ADC_CTL = common dso_local global i32 0, align 4
@CS4265_ADC_FM = common dso_local global i32 0, align 4
@clk_map_table = common dso_local global %struct.TYPE_2__* null, align 8
@CS4265_MCLK_FREQ = common dso_local global i32 0, align 4
@CS4265_MCLK_FREQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't get correct mclk\0A\00", align 1
@CS4265_DAC_CTL = common dso_local global i32 0, align 4
@CS4265_DAC_CTL_DIF = common dso_local global i32 0, align 4
@CS4265_ADC_DIF = common dso_local global i32 0, align 4
@CS4265_SPDIF_CTL2 = common dso_local global i32 0, align 4
@CS4265_SPDIF_CTL2_DIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs4265_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4265_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs4265_private*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.cs4265_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs4265_private* %15, %struct.cs4265_private** %9, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.cs4265_private*, %struct.cs4265_private** %9, align 8
  %23 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %129

31:                                               ; preds = %21, %3
  %32 = load %struct.cs4265_private*, %struct.cs4265_private** %9, align 8
  %33 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %36 = call i32 @params_rate(%struct.snd_pcm_hw_params* %35)
  %37 = call i32 @cs4265_get_clk_index(i32 %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @CS4265_ADC_CTL, align 4
  %43 = load i32, i32* @CS4265_ADC_FM, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_map_table, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 6
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %53 = load i32, i32* @CS4265_MCLK_FREQ, align 4
  %54 = load i32, i32* @CS4265_MCLK_FREQ_MASK, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_map_table, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %61)
  br label %70

63:                                               ; preds = %31
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %129

70:                                               ; preds = %40
  %71 = load %struct.cs4265_private*, %struct.cs4265_private** %9, align 8
  %72 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %75 = and i32 %73, %74
  switch i32 %75, label %125 [
    i32 130, label %76
    i32 128, label %89
    i32 129, label %112
  ]

76:                                               ; preds = %70
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %78 = load i32, i32* @CS4265_DAC_CTL, align 4
  %79 = load i32, i32* @CS4265_DAC_CTL_DIF, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 16)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i32, i32* @CS4265_ADC_CTL, align 4
  %83 = load i32, i32* @CS4265_ADC_DIF, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 16)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %86 = load i32, i32* @CS4265_SPDIF_CTL2, align 4
  %87 = load i32, i32* @CS4265_SPDIF_CTL2_DIF, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %87, i32 64)
  br label %128

89:                                               ; preds = %70
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_width(%struct.snd_pcm_hw_params* %90)
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load i32, i32* @CS4265_DAC_CTL, align 4
  %96 = load i32, i32* @CS4265_DAC_CTL_DIF, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %96, i32 32)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %99 = load i32, i32* @CS4265_SPDIF_CTL2, align 4
  %100 = load i32, i32* @CS4265_SPDIF_CTL2_DIF, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 %100, i32 128)
  br label %111

102:                                              ; preds = %89
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %104 = load i32, i32* @CS4265_DAC_CTL, align 4
  %105 = load i32, i32* @CS4265_DAC_CTL_DIF, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %105, i32 48)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %108 = load i32, i32* @CS4265_SPDIF_CTL2, align 4
  %109 = load i32, i32* @CS4265_SPDIF_CTL2_DIF, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %109, i32 192)
  br label %111

111:                                              ; preds = %102, %93
  br label %128

112:                                              ; preds = %70
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %114 = load i32, i32* @CS4265_DAC_CTL, align 4
  %115 = load i32, i32* @CS4265_DAC_CTL_DIF, align 4
  %116 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %118 = load i32, i32* @CS4265_ADC_CTL, align 4
  %119 = load i32, i32* @CS4265_ADC_DIF, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %122 = load i32, i32* @CS4265_SPDIF_CTL2, align 4
  %123 = load i32, i32* @CS4265_SPDIF_CTL2_DIF, align 4
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %123, i32 0)
  br label %128

125:                                              ; preds = %70
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %112, %111, %76
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %125, %63, %28
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.cs4265_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @cs4265_get_clk_index(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

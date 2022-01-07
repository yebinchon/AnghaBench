; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tas2552_data = type { i32 }

@TAS2552_WORDLENGTH_16BIT = common dso_local global i32 0, align 4
@TAS2552_WORDLENGTH_20BIT = common dso_local global i32 0, align 4
@TAS2552_WORDLENGTH_24BIT = common dso_local global i32 0, align 4
@TAS2552_WORDLENGTH_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Not supported sample size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TAS2552_CLKSPERFRAME_32 = common dso_local global i32 0, align 4
@TAS2552_CLKSPERFRAME_64 = common dso_local global i32 0, align 4
@TAS2552_CLKSPERFRAME_128 = common dso_local global i32 0, align 4
@TAS2552_CLKSPERFRAME_256 = common dso_local global i32 0, align 4
@TAS2552_SER_CTRL_1 = common dso_local global i32 0, align 4
@TAS2552_WORDLENGTH_MASK = common dso_local global i32 0, align 4
@TAS2552_CLKSPERFRAME_MASK = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_8KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_11_12KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_16KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_22_24KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_32KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_44_48KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_88_96KHZ = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_176_192KHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Not supported sample rate: %d\0A\00", align 1
@TAS2552_CFG_3 = common dso_local global i32 0, align 4
@TAS2552_WCLK_FREQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tas2552_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas2552_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.tas2552_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tas2552_data* @dev_get_drvdata(i32 %18)
  store %struct.tas2552_data* %19, %struct.tas2552_data** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_width(%struct.snd_pcm_hw_params* %20)
  switch i32 %21, label %46 [
    i32 16, label %22
    i32 20, label %28
    i32 24, label %34
    i32 32, label %40
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @TAS2552_WORDLENGTH_16BIT, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.tas2552_data*, %struct.tas2552_data** %9, align 8
  %25 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 32, %26
  store i32 %27, i32* %10, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i32, i32* @TAS2552_WORDLENGTH_20BIT, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.tas2552_data*, %struct.tas2552_data** %9, align 8
  %31 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 64, %32
  store i32 %33, i32* %10, align 4
  br label %55

34:                                               ; preds = %3
  %35 = load i32, i32* @TAS2552_WORDLENGTH_24BIT, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.tas2552_data*, %struct.tas2552_data** %9, align 8
  %37 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 64, %38
  store i32 %39, i32* %10, align 4
  br label %55

40:                                               ; preds = %3
  %41 = load i32, i32* @TAS2552_WORDLENGTH_32BIT, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.tas2552_data*, %struct.tas2552_data** %9, align 8
  %43 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 64, %44
  store i32 %45, i32* %10, align 4
  br label %55

46:                                               ; preds = %3
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = call i32 @params_width(%struct.snd_pcm_hw_params* %50)
  %52 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %126

55:                                               ; preds = %40, %34, %28, %22
  %56 = load i32, i32* %10, align 4
  %57 = icmp sle i32 %56, 32
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @TAS2552_CLKSPERFRAME_32, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %82

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = icmp sle i32 %63, 64
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @TAS2552_CLKSPERFRAME_64, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %81

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = icmp sle i32 %70, 128
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @TAS2552_CLKSPERFRAME_128, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @TAS2552_CLKSPERFRAME_256, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %58
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = load i32, i32* @TAS2552_SER_CTRL_1, align 4
  %85 = load i32, i32* @TAS2552_WORDLENGTH_MASK, align 4
  %86 = load i32, i32* @TAS2552_CLKSPERFRAME_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_rate(%struct.snd_pcm_hw_params* %90)
  switch i32 %91, label %108 [
    i32 8000, label %92
    i32 11025, label %94
    i32 12000, label %94
    i32 16000, label %96
    i32 22050, label %98
    i32 24000, label %98
    i32 32000, label %100
    i32 44100, label %102
    i32 48000, label %102
    i32 88200, label %104
    i32 96000, label %104
    i32 176400, label %106
    i32 192000, label %106
  ]

92:                                               ; preds = %82
  %93 = load i32, i32* @TAS2552_WCLK_FREQ_8KHZ, align 4
  store i32 %93, i32* %12, align 4
  br label %117

94:                                               ; preds = %82, %82
  %95 = load i32, i32* @TAS2552_WCLK_FREQ_11_12KHZ, align 4
  store i32 %95, i32* %12, align 4
  br label %117

96:                                               ; preds = %82
  %97 = load i32, i32* @TAS2552_WCLK_FREQ_16KHZ, align 4
  store i32 %97, i32* %12, align 4
  br label %117

98:                                               ; preds = %82, %82
  %99 = load i32, i32* @TAS2552_WCLK_FREQ_22_24KHZ, align 4
  store i32 %99, i32* %12, align 4
  br label %117

100:                                              ; preds = %82
  %101 = load i32, i32* @TAS2552_WCLK_FREQ_32KHZ, align 4
  store i32 %101, i32* %12, align 4
  br label %117

102:                                              ; preds = %82, %82
  %103 = load i32, i32* @TAS2552_WCLK_FREQ_44_48KHZ, align 4
  store i32 %103, i32* %12, align 4
  br label %117

104:                                              ; preds = %82, %82
  %105 = load i32, i32* @TAS2552_WCLK_FREQ_88_96KHZ, align 4
  store i32 %105, i32* %12, align 4
  br label %117

106:                                              ; preds = %82, %82
  %107 = load i32, i32* @TAS2552_WCLK_FREQ_176_192KHZ, align 4
  store i32 %107, i32* %12, align 4
  br label %117

108:                                              ; preds = %82
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %113 = call i32 @params_rate(%struct.snd_pcm_hw_params* %112)
  %114 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %126

117:                                              ; preds = %106, %104, %102, %100, %98, %96, %94, %92
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %119 = load i32, i32* @TAS2552_CFG_3, align 4
  %120 = load i32, i32* @TAS2552_WCLK_FREQ_MASK, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %124 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %125 = call i32 @tas2552_setup_pll(%struct.snd_soc_component* %123, %struct.snd_pcm_hw_params* %124)
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %117, %108, %46
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.tas2552_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @tas2552_setup_pll(%struct.snd_soc_component*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

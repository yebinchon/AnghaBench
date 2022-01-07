; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wl1273.c_wl1273_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wl1273.c_wl1273_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, i32 }
%struct.wl1273_priv = type { i32, i32, %struct.wl1273_core* }
%struct.wl1273_core = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%d bits/sample not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@WL1273_MODE_BT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Rate %d not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Only mono supported.\0A\00", align 1
@WL1273_MODE_FM_TX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Only playback supported with TX.\0A\00", align 1
@WL1273_MODE_FM_RX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Only capture supported with RX.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unexpected mode: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wl1273_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1273_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.wl1273_priv*, align 8
  %9 = alloca %struct.wl1273_core*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wl1273_priv* @snd_soc_component_get_drvdata(i32 %15)
  store %struct.wl1273_priv* %16, %struct.wl1273_priv** %8, align 8
  %17 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %18 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %17, i32 0, i32 2
  %19 = load %struct.wl1273_core*, %struct.wl1273_core** %18, align 8
  store %struct.wl1273_core* %19, %struct.wl1273_core** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_width(%struct.snd_pcm_hw_params* %20)
  %22 = icmp ne i32 %21, 16
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_width(%struct.snd_pcm_hw_params* %27)
  %29 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %138

32:                                               ; preds = %3
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %36 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %37 = call %struct.TYPE_2__* @hw_param_interval(%struct.snd_pcm_hw_params* %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %41 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WL1273_MODE_BT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %32
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 8000
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = call i32 @params_rate(%struct.snd_pcm_hw_params* %49)
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %138

54:                                               ; preds = %45
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %56 = call i32 @params_channels(%struct.snd_pcm_hw_params* %55)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %138

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %138

63:                                               ; preds = %32
  %64 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %65 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @WL1273_MODE_FM_TX, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %138

79:                                               ; preds = %69, %63
  %80 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %81 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WL1273_MODE_FM_RX, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %138

95:                                               ; preds = %85, %79
  %96 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %97 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @WL1273_MODE_FM_RX, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %103 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @WL1273_MODE_FM_TX, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %109 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %138

114:                                              ; preds = %101, %95
  %115 = load %struct.wl1273_core*, %struct.wl1273_core** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @snd_wl1273_fm_set_i2s_mode(%struct.wl1273_core* %115, i32 %116, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %138

123:                                              ; preds = %114
  %124 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %125 = call i32 @params_channels(%struct.snd_pcm_hw_params* %124)
  %126 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %127 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.wl1273_core*, %struct.wl1273_core** %9, align 8
  %129 = load %struct.wl1273_priv*, %struct.wl1273_priv** %8, align 8
  %130 = getelementptr inbounds %struct.wl1273_priv, %struct.wl1273_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @snd_wl1273_fm_set_channel_number(%struct.wl1273_core* %128, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %4, align 4
  br label %138

137:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %135, %121, %107, %91, %75, %62, %58, %48, %23
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.wl1273_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.TYPE_2__* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_wl1273_fm_set_i2s_mode(%struct.wl1273_core*, i32, i32) #1

declare dso_local i32 @snd_wl1273_fm_set_channel_number(%struct.wl1273_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

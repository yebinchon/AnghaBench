; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_byt_rt5640_codec_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_byt_rt5640_codec_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@byt_rt5640_quirk = common dso_local global i32 0, align 4
@BYT_RT5640_SSP0_AIF1 = common dso_local global i32 0, align 4
@BYT_RT5640_SSP0_AIF2 = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't set format to I2S, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't set I2S config, err %d\0A\00", align 1
@SNDRV_PCM_FORMAT_S24_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_hw_params*)* @byt_rt5640_codec_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_rt5640_codec_fixup(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %11 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %9, i32 %10)
  store %struct.snd_interval* %11, %struct.snd_interval** %6, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %14 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %12, i32 %13)
  store %struct.snd_interval* %14, %struct.snd_interval** %7, align 8
  %15 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 1
  store i32 48000, i32* %16, align 4
  %17 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %18 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %17, i32 0, i32 0
  store i32 48000, i32* %18, align 4
  %19 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = load i32, i32* @byt_rt5640_quirk, align 4
  %24 = load i32, i32* @BYT_RT5640_SSP0_AIF1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @byt_rt5640_quirk, align 4
  %29 = load i32, i32* @BYT_RT5640_SSP0_AIF2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %27, %2
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %35 = call i32 @params_set_format(%struct.snd_pcm_hw_params* %33, i32 %34)
  %36 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @snd_soc_dai_set_fmt(i32 %38, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %107

54:                                               ; preds = %32
  %55 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_soc_dai_set_tdm_slot(i32 %57, i32 3, i32 3, i32 2, i32 16)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %63 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %107

68:                                               ; preds = %54
  br label %106

69:                                               ; preds = %27
  %70 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %71 = load i32, i32* @SNDRV_PCM_FORMAT_S24_LE, align 4
  %72 = call i32 @params_set_format(%struct.snd_pcm_hw_params* %70, i32 %71)
  %73 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %77 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_soc_dai_set_fmt(i32 %75, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %69
  %85 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %86 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %107

91:                                               ; preds = %69
  %92 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %93 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @snd_soc_dai_set_tdm_slot(i32 %94, i32 3, i32 3, i32 2, i32 24)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %100 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %68
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %98, %84, %61, %47
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_set_format(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_soc_dai_set_fmt(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

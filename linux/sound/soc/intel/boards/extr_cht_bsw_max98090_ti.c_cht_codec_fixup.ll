; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_codec_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_max98090_ti.c_cht_codec_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't set cpu_dai slot fmt: %d\0A\00", align 1
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"can't set cpu_dai set fmt: %d\0A\00", align 1
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_hw_params*)* @cht_codec_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_codec_fixup(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %12 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %10, i32 %11)
  store %struct.snd_interval* %12, %struct.snd_interval** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %15 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_interval* %15, %struct.snd_interval** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_soc_dai_set_tdm_slot(i32 %18, i32 3, i32 3, i32 2, i32 16)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %2
  %30 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @snd_soc_dai_set_fmt(i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %29
  %50 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %51 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %50, i32 0, i32 1
  store i32 48000, i32* %51, align 4
  %52 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %53 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %52, i32 0, i32 0
  store i32 48000, i32* %53, align 4
  %54 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %55 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %54, i32 0, i32 1
  store i32 2, i32* %55, align 4
  %56 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %56, i32 0, i32 0
  store i32 2, i32* %57, align 4
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %59 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %60 = call i32 @params_set_format(%struct.snd_pcm_hw_params* %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %49, %42, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_fmt(i32, i32) #1

declare dso_local i32 @params_set_format(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

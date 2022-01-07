; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmix.c_imx_audmix_be_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmix.c_imx_audmix_be_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to set AUDMIX DAI fmt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @imx_audmix_be_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_audmix_be_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %2
  %32 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @snd_soc_dai_set_fmt(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %30
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @snd_soc_dai_set_fmt(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

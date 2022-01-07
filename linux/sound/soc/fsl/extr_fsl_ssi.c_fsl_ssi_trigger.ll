; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_ssi = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @fsl_ssi_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.fsl_ssi*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.fsl_ssi* @snd_soc_dai_get_drvdata(i32 %16)
  store %struct.fsl_ssi* %17, %struct.fsl_ssi** %9, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %43 [
    i32 130, label %25
    i32 131, label %25
    i32 132, label %25
    i32 129, label %39
    i32 128, label %39
    i32 133, label %39
  ]

25:                                               ; preds = %3, %3, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.fsl_ssi*, %struct.fsl_ssi** %9, align 8
  %30 = call i32 @fsl_ssi_is_ac97(%struct.fsl_ssi* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.fsl_ssi*, %struct.fsl_ssi** %9, align 8
  %34 = call i32 @fsl_ssi_tx_ac97_saccst_setup(%struct.fsl_ssi* %33)
  br label %35

35:                                               ; preds = %32, %28, %25
  %36 = load %struct.fsl_ssi*, %struct.fsl_ssi** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @fsl_ssi_config_enable(%struct.fsl_ssi* %36, i32 %37)
  br label %46

39:                                               ; preds = %3, %3, %3
  %40 = load %struct.fsl_ssi*, %struct.fsl_ssi** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @fsl_ssi_config_disable(%struct.fsl_ssi* %40, i32 %41)
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %39, %35
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.fsl_ssi* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @fsl_ssi_is_ac97(%struct.fsl_ssi*) #1

declare dso_local i32 @fsl_ssi_tx_ac97_saccst_setup(%struct.fsl_ssi*) #1

declare dso_local i32 @fsl_ssi_config_enable(%struct.fsl_ssi*, i32) #1

declare dso_local i32 @fsl_ssi_config_disable(%struct.fsl_ssi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

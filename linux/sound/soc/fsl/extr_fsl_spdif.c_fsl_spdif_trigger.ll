; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_spdif_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@REG_SPDIF_SIE = common dso_local global i32 0, align 4
@REG_SPDIF_SCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @fsl_spdif_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spdif_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.fsl_spdif_priv*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %8, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32 %19)
  store %struct.fsl_spdif_priv* %20, %struct.fsl_spdif_priv** %9, align 8
  %21 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %9, align 8
  %22 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %21, i32 0, i32 0
  %23 = load %struct.regmap*, %struct.regmap** %22, align 8
  store %struct.regmap* %23, %struct.regmap** %10, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @SIE_INTR_FOR(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @SCR_DMA_xX_EN(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %55 [
    i32 130, label %35
    i32 131, label %35
    i32 132, label %35
    i32 129, label %46
    i32 128, label %46
    i32 133, label %46
  ]

35:                                               ; preds = %3, %3, %3
  %36 = load %struct.regmap*, %struct.regmap** %10, align 8
  %37 = load i32, i32* @REG_SPDIF_SIE, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %10, align 8
  %42 = load i32, i32* @REG_SPDIF_SCR, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %43, i32 %44)
  br label %58

46:                                               ; preds = %3, %3, %3
  %47 = load %struct.regmap*, %struct.regmap** %10, align 8
  %48 = load i32, i32* @REG_SPDIF_SCR, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @regmap_update_bits(%struct.regmap* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.regmap*, %struct.regmap** %10, align 8
  %52 = load i32, i32* @REG_SPDIF_SIE, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @regmap_update_bits(%struct.regmap* %51, i32 %52, i32 %53, i32 0)
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %46, %35
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.fsl_spdif_priv* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @SIE_INTR_FOR(i32) #1

declare dso_local i32 @SCR_DMA_xX_EN(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

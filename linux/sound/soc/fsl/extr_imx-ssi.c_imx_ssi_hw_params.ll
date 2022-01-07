; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.imx_ssi = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSI_STCCR = common dso_local global i32 0, align 4
@SSI_SRCCR = common dso_local global i32 0, align 4
@IMX_SSI_SYN = common dso_local global i32 0, align 4
@SSI_STCCR_WL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @imx_ssi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.imx_ssi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = call %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.imx_ssi* %11, %struct.imx_ssi** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SSI_STCCR, align 4
  store i32 %18, i32* %8, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @SSI_SRCCR, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.imx_ssi*, %struct.imx_ssi** %7, align 8
  %23 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IMX_SSI_SYN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @SSI_STCCR, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.imx_ssi*, %struct.imx_ssi** %7, align 8
  %32 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @readl(i32 %35)
  %37 = load i32, i32* @SSI_STCCR_WL_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %41 = call i32 @params_format(%struct.snd_pcm_hw_params* %40)
  switch i32 %41, label %54 [
    i32 130, label %42
    i32 129, label %46
    i32 128, label %50
  ]

42:                                               ; preds = %30
  %43 = call i32 @SSI_SRCCR_WL(i32 16)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %54

46:                                               ; preds = %30
  %47 = call i32 @SSI_SRCCR_WL(i32 20)
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %54

50:                                               ; preds = %30
  %51 = call i32 @SSI_SRCCR_WL(i32 24)
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %30, %50, %46, %42
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.imx_ssi*, %struct.imx_ssi** %7, align 8
  %57 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @writel(i32 %55, i32 %60)
  ret i32 0
}

declare dso_local %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SSI_SRCCR_WL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

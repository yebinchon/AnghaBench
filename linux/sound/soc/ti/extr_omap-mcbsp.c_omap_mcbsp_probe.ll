; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp = type { i32*, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @omap_mcbsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.omap_mcbsp*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %4)
  store %struct.omap_mcbsp* %5, %struct.omap_mcbsp** %3, align 8
  %6 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %7 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pm_runtime_enable(i32 %8)
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %11 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %12 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %17 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %10, i32* %15, i32* %20)
  ret i32 0
}

declare dso_local %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

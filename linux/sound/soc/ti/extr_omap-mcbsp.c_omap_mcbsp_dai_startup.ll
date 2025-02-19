; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@omap_mcbsp_hwrule_min_buffersize = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @omap_mcbsp_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.omap_mcbsp* %8, %struct.omap_mcbsp** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %15 = call i32 @omap_mcbsp_request(%struct.omap_mcbsp* %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %34 = load i32, i32* @omap_mcbsp_hwrule_min_buffersize, align 4
  %35 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %36 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %37 = call i32 @snd_pcm_hw_rule_add(i32 %32, i32 0, i32 %33, i32 %34, %struct.omap_mcbsp* %35, i32 %36, i32 -1)
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %43 = call i32 @snd_pcm_hw_constraint_step(i32 %41, i32 0, i32 %42, i32 2)
  br label %44

44:                                               ; preds = %38, %16
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @omap_mcbsp_request(%struct.omap_mcbsp*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

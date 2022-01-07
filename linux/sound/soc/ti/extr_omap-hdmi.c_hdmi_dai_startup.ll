; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.hdmi_audio_data = type { i32, %struct.snd_pcm_substream*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not apply period constraint: %d\0A\00", align 1
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not apply buffer constraint: %d\0A\00", align 1
@hdmi_dai_abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdmi_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.hdmi_audio_data*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream* %8)
  store %struct.hdmi_audio_data* %9, %struct.hdmi_audio_data** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %14 = call i32 @snd_pcm_hw_constraint_step(i32 %12, i32 0, i32 %13, i32 128)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %29 = call i32 @snd_pcm_hw_constraint_step(i32 %27, i32 0, i32 %28, i32 128)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %24
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %43 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %42, i32 0, i32 4
  %44 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %40, %struct.snd_pcm_substream* %41, i32* %43)
  %45 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %46 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %49 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %50 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %49, i32 0, i32 1
  store %struct.snd_pcm_substream* %48, %struct.snd_pcm_substream** %50, align 8
  %51 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %52 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %55 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %60 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @hdmi_dai_abort, align 4
  %63 = call i32 %58(i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %39
  %67 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %68 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %71 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %70, i32 0, i32 1
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %71, align 8
  %72 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %73 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %66, %39
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %32, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_abort.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_audio_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"HDMI display disabled, aborting playback\0A\00", align 1
@SNDRV_PCM_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @hdmi_dai_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_dai_abort(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hdmi_audio_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.hdmi_audio_data* @dev_get_drvdata(%struct.device* %4)
  store %struct.hdmi_audio_data* %5, %struct.hdmi_audio_data** %3, align 8
  %6 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i64 @snd_pcm_running(%struct.TYPE_5__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %30 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @snd_pcm_stream_lock_irq(%struct.TYPE_5__* %31)
  %33 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %34 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* @SNDRV_PCM_STATE_DISCONNECTED, align 4
  %37 = call i32 @snd_pcm_stop(%struct.TYPE_5__* %35, i32 %36)
  %38 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %39 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @snd_pcm_stream_unlock_irq(%struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %26, %20, %13, %1
  %43 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  ret void
}

declare dso_local %struct.hdmi_audio_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snd_pcm_running(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_pcm_stop(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

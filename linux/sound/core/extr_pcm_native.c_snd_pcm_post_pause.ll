; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_post_pause.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_post_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STATE_PAUSED = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_MPAUSE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_RUNNING = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_MCONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, i32)* @snd_pcm_post_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_post_pause(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call i32 @snd_pcm_trigger_tstamp(%struct.snd_pcm_substream* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @SNDRV_PCM_STATE_PAUSED, align 4
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = load i32, i32* @SNDRV_TIMER_EVENT_MPAUSE, align 4
  %21 = call i32 @snd_pcm_timer_notify(%struct.snd_pcm_substream* %19, i32 %20)
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 2
  %24 = call i32 @wake_up(i32* %23)
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = call i32 @wake_up(i32* %26)
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @SNDRV_PCM_STATE_RUNNING, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = load i32, i32* @SNDRV_TIMER_EVENT_MCONTINUE, align 4
  %36 = call i32 @snd_pcm_timer_notify(%struct.snd_pcm_substream* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %13
  ret void
}

declare dso_local i32 @snd_pcm_trigger_tstamp(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_timer_notify(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

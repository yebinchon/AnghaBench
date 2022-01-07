; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_ml403_ac97cr = type { %struct.snd_pcm_substream* }

@WORK_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"open(playback)\0A\00", align 1
@snd_ml403_ac97cr_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@CR_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ml403_ac97cr_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ml403_ac97cr_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ml403_ac97cr*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_ml403_ac97cr* %6, %struct.snd_ml403_ac97cr** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load i32, i32* @WORK_INFO, align 4
  %11 = call i32 @PDEBUG(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %13, i32 0, i32 0
  store %struct.snd_pcm_substream* %12, %struct.snd_pcm_substream** %14, align 8
  %15 = load i32, i32* @snd_ml403_ac97cr_playback, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %20 = load i32, i32* @CR_FIFO_SIZE, align 4
  %21 = sdiv i32 %20, 2
  %22 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %18, i32 0, i32 %19, i32 %21)
  ret i32 0
}

declare dso_local %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_es1688 = type { %struct.snd_pcm_substream*, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@snd_es1688_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_constraints_clocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1688_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_es1688*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_es1688* %7, %struct.snd_es1688** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %12 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %21 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %20, i32 0, i32 0
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %21, align 8
  %22 = load i32, i32* @snd_es1688_playback, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %27 = call i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime* %25, i32 0, i32 %26, i32* @hw_constraints_clocks)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

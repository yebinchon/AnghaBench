; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@pxa2xx_ac97_ac97 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pxa2xx_ac97_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = call i32 @pxa2xx_pcm_prepare(%struct.snd_pcm_substream* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @pxa2xx_ac97_ac97, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_ac97_set_rate(i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @pxa2xx_pcm_prepare(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

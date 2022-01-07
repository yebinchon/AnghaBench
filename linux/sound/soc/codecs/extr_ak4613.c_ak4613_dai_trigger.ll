; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4613_priv = type { i32, %struct.snd_soc_component* }

@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_RESUME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @ak4613_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4613_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ak4613_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %14 = call %struct.ak4613_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.ak4613_priv* %14, %struct.ak4613_priv** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SNDRV_PCM_TRIGGER_RESUME, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %37

23:                                               ; preds = %18, %3
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %32 = load %struct.ak4613_priv*, %struct.ak4613_priv** %9, align 8
  %33 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %32, i32 0, i32 1
  store %struct.snd_soc_component* %31, %struct.snd_soc_component** %33, align 8
  %34 = load %struct.ak4613_priv*, %struct.ak4613_priv** %9, align 8
  %35 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %34, i32 0, i32 0
  %36 = call i32 @schedule_work(i32* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %29, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.ak4613_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

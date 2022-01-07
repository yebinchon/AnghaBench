; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-codec.c_sun4i_codec_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sun4i_codec = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @sun4i_codec_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_codec_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.sun4i_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %8, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sun4i_codec* @snd_soc_card_get_drvdata(i32 %15)
  store %struct.sun4i_codec* %16, %struct.sun4i_codec** %9, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %44 [
    i32 130, label %18
    i32 131, label %18
    i32 132, label %18
    i32 129, label %31
    i32 128, label %31
    i32 133, label %31
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.sun4i_codec*, %struct.sun4i_codec** %9, align 8
  %26 = call i32 @sun4i_codec_start_playback(%struct.sun4i_codec* %25)
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.sun4i_codec*, %struct.sun4i_codec** %9, align 8
  %29 = call i32 @sun4i_codec_start_capture(%struct.sun4i_codec* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %47

31:                                               ; preds = %3, %3, %3
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sun4i_codec*, %struct.sun4i_codec** %9, align 8
  %39 = call i32 @sun4i_codec_stop_playback(%struct.sun4i_codec* %38)
  br label %43

40:                                               ; preds = %31
  %41 = load %struct.sun4i_codec*, %struct.sun4i_codec** %9, align 8
  %42 = call i32 @sun4i_codec_stop_capture(%struct.sun4i_codec* %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %43, %30
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.sun4i_codec* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @sun4i_codec_start_playback(%struct.sun4i_codec*) #1

declare dso_local i32 @sun4i_codec_start_capture(%struct.sun4i_codec*) #1

declare dso_local i32 @sun4i_codec_stop_playback(%struct.sun4i_codec*) #1

declare dso_local i32 @sun4i_codec_stop_capture(%struct.sun4i_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

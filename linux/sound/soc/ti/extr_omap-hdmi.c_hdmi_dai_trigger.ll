; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.hdmi_audio_data = type { i32, %struct.TYPE_2__*, %struct.snd_pcm_substream* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @hdmi_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.hdmi_audio_data*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream* %9)
  store %struct.hdmi_audio_data* %10, %struct.hdmi_audio_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %7, align 8
  %12 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %11, i32 0, i32 2
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = icmp ne %struct.snd_pcm_substream* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %39 [
    i32 130, label %19
    i32 131, label %19
    i32 132, label %19
    i32 129, label %29
    i32 128, label %29
    i32 133, label %29
  ]

19:                                               ; preds = %3, %3, %3
  %20 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %7, align 8
  %21 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %7, align 8
  %26 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %42

29:                                               ; preds = %3, %3, %3
  %30 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %7, align 8
  %31 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %7, align 8
  %36 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %29, %19
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

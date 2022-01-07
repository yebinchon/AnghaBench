; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.davinci_mcbsp_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @davinci_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.davinci_mcbsp_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = call %struct.davinci_mcbsp_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.davinci_mcbsp_dev* %11, %struct.davinci_mcbsp_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %27 [
    i32 130, label %19
    i32 131, label %19
    i32 132, label %19
    i32 129, label %23
    i32 128, label %23
    i32 133, label %23
  ]

19:                                               ; preds = %3, %3, %3
  %20 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %7, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = call i32 @davinci_mcbsp_start(%struct.davinci_mcbsp_dev* %20, %struct.snd_pcm_substream* %21)
  br label %30

23:                                               ; preds = %3, %3, %3
  %24 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev* %24, i32 %25)
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %23, %19
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local %struct.davinci_mcbsp_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @davinci_mcbsp_start(%struct.davinci_mcbsp_dev*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

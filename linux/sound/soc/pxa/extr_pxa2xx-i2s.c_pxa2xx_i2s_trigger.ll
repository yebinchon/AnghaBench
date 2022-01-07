; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SACR1_DRPL = common dso_local global i32 0, align 4
@SACR1 = common dso_local global i32 0, align 4
@SACR1_DREC = common dso_local global i32 0, align 4
@SACR0_ENB = common dso_local global i32 0, align 4
@SACR0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @pxa2xx_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %30 [
    i32 130, label %9
    i32 131, label %29
    i32 132, label %29
    i32 129, label %29
    i32 128, label %29
    i32 133, label %29
  ]

9:                                                ; preds = %3
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i32, i32* @SACR1_DRPL, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @SACR1, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @SACR1, align 4
  br label %25

20:                                               ; preds = %9
  %21 = load i32, i32* @SACR1_DREC, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @SACR1, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @SACR1, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @SACR0_ENB, align 4
  %27 = load i32, i32* @SACR0, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @SACR0, align 4
  br label %33

29:                                               ; preds = %3, %3, %3, %3, %3
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %29, %25
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

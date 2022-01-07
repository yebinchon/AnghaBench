; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_pdm.c_rockchip_pdm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_pdm.c_rockchip_pdm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rk_pdm_dev = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @rockchip_pdm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pdm_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.rk_pdm_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %10 = call %struct.rk_pdm_dev* @to_info(%struct.snd_soc_dai* %9)
  store %struct.rk_pdm_dev* %10, %struct.rk_pdm_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %32 [
    i32 130, label %12
    i32 131, label %12
    i32 132, label %12
    i32 128, label %22
    i32 129, label %22
    i32 133, label %22
  ]

12:                                               ; preds = %3, %3, %3
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %7, align 8
  %20 = call i32 @rockchip_pdm_rxctrl(%struct.rk_pdm_dev* %19, i32 1)
  br label %21

21:                                               ; preds = %18, %12
  br label %35

22:                                               ; preds = %3, %3, %3
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %7, align 8
  %30 = call i32 @rockchip_pdm_rxctrl(%struct.rk_pdm_dev* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %22
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %31, %21
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.rk_pdm_dev* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @rockchip_pdm_rxctrl(%struct.rk_pdm_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { i32, i32*, i32* }
%struct.snd_cs46xx = type { i32 (%struct.snd_cs46xx*, i32)*, i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs46xx_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_cs46xx_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_cs46xx* %8, %struct.snd_cs46xx** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %13, align 8
  store %struct.snd_cs46xx_pcm* %14, %struct.snd_cs46xx_pcm** %6, align 8
  %15 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %6, align 8
  %16 = icmp ne %struct.snd_cs46xx_pcm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %22 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %6, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %25, i32 0, i32 0
  %27 = call i32 @snd_dma_free_pages(i32* %26)
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %28, i32 0, i32 0
  %30 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %29, align 8
  %31 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %32 = call i32 %30(%struct.snd_cs46xx* %31, i32 -1)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

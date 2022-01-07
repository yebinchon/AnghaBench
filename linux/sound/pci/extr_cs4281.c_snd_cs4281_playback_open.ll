; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.cs4281_dma* }
%struct.cs4281_dma = type { i32, i64, %struct.snd_pcm_substream* }
%struct.cs4281 = type { %struct.cs4281_dma* }

@snd_cs4281_playback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs4281_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cs4281*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.cs4281_dma*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.cs4281* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.cs4281* %7, %struct.cs4281** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %12 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %11, i32 0, i32 0
  %13 = load %struct.cs4281_dma*, %struct.cs4281_dma** %12, align 8
  %14 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %13, i64 0
  store %struct.cs4281_dma* %14, %struct.cs4281_dma** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.cs4281_dma*, %struct.cs4281_dma** %5, align 8
  %17 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %16, i32 0, i32 2
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %17, align 8
  %18 = load %struct.cs4281_dma*, %struct.cs4281_dma** %5, align 8
  %19 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.cs4281_dma*, %struct.cs4281_dma** %5, align 8
  %21 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.cs4281_dma*, %struct.cs4281_dma** %5, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  store %struct.cs4281_dma* %22, %struct.cs4281_dma** %24, align 8
  %25 = load i32, i32* @snd_cs4281_playback, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %29 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %28, i32 0, i32 32, i32 20)
  ret i32 0
}

declare dso_local %struct.cs4281* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

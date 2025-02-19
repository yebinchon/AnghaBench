; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_alchemy_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_alchemy_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.audio_stream = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @alchemy_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.audio_stream*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.audio_stream* @ss_to_as(%struct.snd_pcm_substream* %5)
  store %struct.audio_stream* %6, %struct.audio_stream** %3, align 8
  %7 = load %struct.audio_stream*, %struct.audio_stream** %3, align 8
  %8 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @get_dma_residue(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.audio_stream*, %struct.audio_stream** %3, align 8
  %12 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @bytes_to_frames(i32 %24, i64 %25)
  ret i32 %26
}

declare dso_local %struct.audio_stream* @ss_to_as(%struct.snd_pcm_substream*) #1

declare dso_local i64 @get_dma_residue(i32) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

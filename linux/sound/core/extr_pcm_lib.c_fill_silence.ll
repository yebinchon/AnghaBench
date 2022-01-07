; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_fill_silence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_fill_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i32 (%struct.snd_pcm_substream*, i32, i64, i64)* }
%struct.snd_pcm_runtime = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @fill_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_silence(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 2
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %12, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

22:                                               ; preds = %5
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.snd_pcm_substream*, i32, i64, i64)*, i32 (%struct.snd_pcm_substream*, i32, i64, i64)** %26, align 8
  %28 = icmp ne i32 (%struct.snd_pcm_substream*, i32, i64, i64)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_pcm_substream*, i32, i64, i64)*, i32 (%struct.snd_pcm_substream*, i32, i64, i64)** %33, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 %34(%struct.snd_pcm_substream* %35, i32 %36, i64 %37, i64 %38)
  store i32 %39, i32* %6, align 4
  br label %52

40:                                               ; preds = %22
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @get_dma_ptr(%struct.snd_pcm_runtime* %44, i32 %45, i64 %46)
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @bytes_to_samples(%struct.snd_pcm_runtime* %48, i64 %49)
  %51 = call i32 @snd_pcm_format_set_silence(i32 %43, i32 %47, i32 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %40, %29, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @snd_pcm_format_set_silence(i32, i32, i32) #1

declare dso_local i32 @get_dma_ptr(%struct.snd_pcm_runtime*, i32, i64) #1

declare dso_local i32 @bytes_to_samples(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

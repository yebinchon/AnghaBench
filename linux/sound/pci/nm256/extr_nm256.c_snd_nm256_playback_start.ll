; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_playback_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_playback_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32 }
%struct.nm256_stream = type { i32, i64, i64 }
%struct.snd_pcm_substream = type { i32 }

@NM_PBUFFER_START = common dso_local global i32 0, align 4
@NM_PBUFFER_END = common dso_local global i32 0, align 4
@NM_PBUFFER_CURRP = common dso_local global i32 0, align 4
@NM_PLAYBACK_ENABLE_REG = common dso_local global i32 0, align 4
@NM_PLAYBACK_ENABLE_FLAG = common dso_local global i32 0, align 4
@NM_PLAYBACK_FREERUN = common dso_local global i32 0, align 4
@NM_AUDIO_MUTE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*, %struct.nm256_stream*, %struct.snd_pcm_substream*)* @snd_nm256_playback_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_playback_start(%struct.nm256* %0, %struct.nm256_stream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca %struct.nm256_stream*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.nm256* %0, %struct.nm256** %4, align 8
  store %struct.nm256_stream* %1, %struct.nm256_stream** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %7 = load %struct.nm256*, %struct.nm256** %4, align 8
  %8 = load i32, i32* @NM_PBUFFER_START, align 4
  %9 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %10 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @snd_nm256_writel(%struct.nm256* %7, i32 %8, i64 %11)
  %13 = load %struct.nm256*, %struct.nm256** %4, align 8
  %14 = load i32, i32* @NM_PBUFFER_END, align 4
  %15 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %16 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %19 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %23 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %21, %26
  %28 = call i32 @snd_nm256_writel(%struct.nm256* %13, i32 %14, i64 %27)
  %29 = load %struct.nm256*, %struct.nm256** %4, align 8
  %30 = load i32, i32* @NM_PBUFFER_CURRP, align 4
  %31 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %32 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_nm256_writel(%struct.nm256* %29, i32 %30, i64 %33)
  %35 = load %struct.nm256*, %struct.nm256** %4, align 8
  %36 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %37 = call i32 @snd_nm256_playback_mark(%struct.nm256* %35, %struct.nm256_stream* %36)
  %38 = load %struct.nm256*, %struct.nm256** %4, align 8
  %39 = load i32, i32* @NM_PLAYBACK_ENABLE_REG, align 4
  %40 = load i32, i32* @NM_PLAYBACK_ENABLE_FLAG, align 4
  %41 = load i32, i32* @NM_PLAYBACK_FREERUN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_nm256_writeb(%struct.nm256* %38, i32 %39, i32 %42)
  %44 = load %struct.nm256*, %struct.nm256** %4, align 8
  %45 = load i32, i32* @NM_AUDIO_MUTE_REG, align 4
  %46 = call i32 @snd_nm256_writew(%struct.nm256* %44, i32 %45, i32 0)
  ret void
}

declare dso_local i32 @snd_nm256_writel(%struct.nm256*, i32, i64) #1

declare dso_local i32 @snd_nm256_playback_mark(%struct.nm256*, %struct.nm256_stream*) #1

declare dso_local i32 @snd_nm256_writeb(%struct.nm256*, i32, i32) #1

declare dso_local i32 @snd_nm256_writew(%struct.nm256*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

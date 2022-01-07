; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_sb = type { i32, i32, i32, i32*, i32* }

@SB_OPEN_PCM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SB_MODE_PLAYBACK = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_sb*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_sb* %6, %struct.snd_sb** %4, align 8
  %7 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %8 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %7, i32 0, i32 4
  store i32* null, i32** %8, align 8
  %9 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %10 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @SB_OPEN_PCM, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %18 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @SB_MODE_PLAYBACK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %40

33:                                               ; preds = %1
  %34 = load i32, i32* @SB_MODE_CAPTURE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %37 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %41, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret i32 0
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

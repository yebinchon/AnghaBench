; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_sb = type { i32, i32, i32, i32 }

@SB_MODE_PLAYBACK_8 = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_sb* %8, %struct.snd_sb** %4, align 8
  %9 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %10 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SB_MODE_PLAYBACK_8, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %17 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %21 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %28 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %43

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %35 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @snd_dma_pointer(i32 %33, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @bytes_to_frames(i32 %40, i64 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_dma_pointer(i32, i32) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

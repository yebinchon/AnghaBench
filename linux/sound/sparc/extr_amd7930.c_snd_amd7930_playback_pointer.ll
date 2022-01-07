; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_amd7930 = type { i32, i64, i64 }

@AMD7930_FLAG_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_amd7930_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_amd7930_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_amd7930*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_amd7930* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_amd7930* %7, %struct.snd_amd7930** %4, align 8
  %8 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %9 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AMD7930_FLAG_PLAYBACK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %17 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.snd_amd7930*, %struct.snd_amd7930** %4, align 8
  %20 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @bytes_to_frames(i32 %25, i64 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.snd_amd7930* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

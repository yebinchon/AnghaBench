; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_playback_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_playback_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.ua101* }
%struct.ua101 = type { i32, i32 }

@ALSA_PLAYBACK_OPEN = common dso_local global i32 0, align 4
@ALSA_CAPTURE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @playback_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.ua101*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.ua101*, %struct.ua101** %5, align 8
  store %struct.ua101* %6, %struct.ua101** %3, align 8
  %7 = load %struct.ua101*, %struct.ua101** %3, align 8
  %8 = getelementptr inbounds %struct.ua101, %struct.ua101* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ua101*, %struct.ua101** %3, align 8
  %11 = call i32 @stop_usb_playback(%struct.ua101* %10)
  %12 = load i32, i32* @ALSA_PLAYBACK_OPEN, align 4
  %13 = load %struct.ua101*, %struct.ua101** %3, align 8
  %14 = getelementptr inbounds %struct.ua101, %struct.ua101* %13, i32 0, i32 1
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @ALSA_CAPTURE_OPEN, align 4
  %17 = load %struct.ua101*, %struct.ua101** %3, align 8
  %18 = getelementptr inbounds %struct.ua101, %struct.ua101* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.ua101*, %struct.ua101** %3, align 8
  %23 = call i32 @stop_usb_capture(%struct.ua101* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.ua101*, %struct.ua101** %3, align 8
  %26 = getelementptr inbounds %struct.ua101, %struct.ua101* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stop_usb_playback(%struct.ua101*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @stop_usb_capture(%struct.ua101*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

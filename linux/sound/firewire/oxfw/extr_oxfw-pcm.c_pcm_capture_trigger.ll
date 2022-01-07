; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_pcm_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_pcm_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @pcm_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_oxfw*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_oxfw*, %struct.snd_oxfw** %9, align 8
  store %struct.snd_oxfw* %10, %struct.snd_oxfw** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %15 [
    i32 129, label %12
    i32 128, label %14
  ]

12:                                               ; preds = %2
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %7, align 8
  br label %18

14:                                               ; preds = %2
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %7, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %14, %12
  %19 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %20 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %22 = call i32 @amdtp_stream_pcm_trigger(i32* %20, %struct.snd_pcm_substream* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @amdtp_stream_pcm_trigger(i32*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

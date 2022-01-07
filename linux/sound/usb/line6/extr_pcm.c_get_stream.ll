; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_get_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line6_pcm_stream = type { i32 }
%struct.snd_line6_pcm = type { %struct.line6_pcm_stream, %struct.line6_pcm_stream }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line6_pcm_stream* (%struct.snd_line6_pcm*, i32)* @get_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %10 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %9, i32 0, i32 1
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %13 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %12, i32 0, i32 0
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi %struct.line6_pcm_stream* [ %10, %8 ], [ %13, %11 ]
  ret %struct.line6_pcm_stream* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

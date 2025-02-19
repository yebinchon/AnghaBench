; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_get_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_get_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_substream = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.pcm_runtime = type { %struct.TYPE_4__*, %struct.pcm_substream, %struct.pcm_substream }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"error getting pcm substream slot.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcm_substream* (%struct.snd_pcm_substream*)* @usb6fire_pcm_get_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.pcm_runtime* %6, %struct.pcm_runtime** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %13, i32 0, i32 2
  store %struct.pcm_substream* %14, %struct.pcm_substream** %2, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %22, i32 0, i32 1
  store %struct.pcm_substream* %23, %struct.pcm_substream** %2, align 8
  br label %33

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.pcm_substream* null, %struct.pcm_substream** %2, align 8
  br label %33

33:                                               ; preds = %25, %21, %12
  %34 = load %struct.pcm_substream*, %struct.pcm_substream** %2, align 8
  ret %struct.pcm_substream* %34
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

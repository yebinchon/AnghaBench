; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_do_pcm_hwsync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_do_pcm_hwsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @do_pcm_hwsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pcm_hwsync(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 133, label %11
    i32 130, label %21
    i32 131, label %24
    i32 132, label %24
    i32 129, label %25
    i32 128, label %28
  ]

11:                                               ; preds = %1
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EBADFD, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %1, %20
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = call i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream* %22)
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* @ESTRPIPE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @EPIPE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EBADFD, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28, %25, %24, %21, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

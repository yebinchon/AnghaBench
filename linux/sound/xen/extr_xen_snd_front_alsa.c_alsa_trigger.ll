; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.xen_snd_front_pcm_stream_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XENSND_OP_TRIGGER_START = common dso_local global i32 0, align 4
@XENSND_OP_TRIGGER_RESUME = common dso_local global i32 0, align 4
@XENSND_OP_TRIGGER_STOP = common dso_local global i32 0, align 4
@XENSND_OP_TRIGGER_PAUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @alsa_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream* %8)
  store %struct.xen_snd_front_pcm_stream_info* %9, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %19 [
    i32 130, label %11
    i32 131, label %13
    i32 129, label %15
    i32 128, label %17
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @XENSND_OP_TRIGGER_START, align 4
  store i32 %12, i32* %7, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @XENSND_OP_TRIGGER_RESUME, align 4
  store i32 %14, i32* %7, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @XENSND_OP_TRIGGER_STOP, align 4
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @XENSND_OP_TRIGGER_PAUSE, align 4
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %17, %15, %13, %11
  %23 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %24 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @xen_snd_front_stream_trigger(i32* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream*) #1

declare dso_local i32 @xen_snd_front_stream_trigger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

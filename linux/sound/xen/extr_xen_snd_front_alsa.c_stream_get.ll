; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_stream_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_stream_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_pcm_stream_info = type { i32 }
%struct.snd_pcm_substream = type { i64, i64 }
%struct.xen_snd_front_pcm_instance_info = type { %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_snd_front_pcm_stream_info* (%struct.snd_pcm_substream*)* @stream_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.xen_snd_front_pcm_instance_info*, align 8
  %4 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.xen_snd_front_pcm_instance_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.xen_snd_front_pcm_instance_info* %6, %struct.xen_snd_front_pcm_instance_info** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %3, align 8
  %14 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %13, i32 0, i32 1
  %15 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %15, i64 %18
  store %struct.xen_snd_front_pcm_stream_info* %19, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %3, align 8
  %22 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %21, i32 0, i32 0
  %23 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %22, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %23, i64 %26
  store %struct.xen_snd_front_pcm_stream_info* %27, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  ret %struct.xen_snd_front_pcm_stream_info* %29
}

declare dso_local %struct.xen_snd_front_pcm_instance_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

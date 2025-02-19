; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-pcm.c_pcm_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-pcm.c_pcm_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.snd_tscm* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_tscm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_tscm*, %struct.snd_tscm** %7, align 8
  store %struct.snd_tscm* %8, %struct.snd_tscm** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %13 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_tscm_stream_start_duplex(%struct.snd_tscm* %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %24 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %23, i32 0, i32 1
  %25 = call i32 @amdtp_stream_pcm_prepare(i32* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %28 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_tscm_stream_start_duplex(%struct.snd_tscm*, i32) #1

declare dso_local i32 @amdtp_stream_pcm_prepare(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

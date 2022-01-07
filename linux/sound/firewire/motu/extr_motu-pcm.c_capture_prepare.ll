; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_motu* }
%struct.snd_motu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_motu*, %struct.snd_motu** %6, align 8
  store %struct.snd_motu* %7, %struct.snd_motu** %3, align 8
  %8 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %9 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %12 = call i32 @snd_motu_stream_start_duplex(%struct.snd_motu* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %14 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %13, i32 0, i32 1
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %20 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %19, i32 0, i32 0
  %21 = call i32 @amdtp_stream_pcm_prepare(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_motu_stream_start_duplex(%struct.snd_motu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdtp_stream_pcm_prepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

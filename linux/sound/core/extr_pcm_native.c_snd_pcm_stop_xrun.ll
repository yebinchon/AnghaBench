; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_stop_xrun.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_stop_xrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @snd_pcm_stream_lock_irqsave(%struct.snd_pcm_substream* %4, i64 %5)
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = call i32 @__snd_pcm_xrun(%struct.snd_pcm_substream* %16)
  br label %18

18:                                               ; preds = %15, %11, %1
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.snd_pcm_substream* %19, i64 %20)
  ret i32 0
}

declare dso_local i32 @snd_pcm_stream_lock_irqsave(%struct.snd_pcm_substream*, i64) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @__snd_pcm_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irqrestore(%struct.snd_pcm_substream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

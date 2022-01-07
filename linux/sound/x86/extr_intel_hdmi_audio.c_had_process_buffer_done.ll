; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_process_buffer_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_process_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_intelhad = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_intelhad*)* @had_process_buffer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @had_process_buffer_done(%struct.snd_intelhad* %0) #0 {
  %2 = alloca %struct.snd_intelhad*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_intelhad* %0, %struct.snd_intelhad** %2, align 8
  %4 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %5 = call %struct.snd_pcm_substream* @had_substream_get(%struct.snd_intelhad* %4)
  store %struct.snd_pcm_substream* %5, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = icmp ne %struct.snd_pcm_substream* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %11 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %15)
  br label %29

17:                                               ; preds = %9
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %20 = call i64 @had_process_ringbuf(%struct.snd_pcm_substream* %18, %struct.snd_intelhad* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %23)
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %31 = call i32 @had_substream_put(%struct.snd_intelhad* %30)
  br label %32

32:                                               ; preds = %29, %8
  ret void
}

declare dso_local %struct.snd_pcm_substream* @had_substream_get(%struct.snd_intelhad*) #1

declare dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i64 @had_process_ringbuf(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @had_substream_put(%struct.snd_intelhad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

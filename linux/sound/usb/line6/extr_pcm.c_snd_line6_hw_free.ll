; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_line6_pcm = type { i32 }
%struct.line6_pcm_stream = type { i32 }

@LINE6_STREAM_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_line6_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca %struct.line6_pcm_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_line6_pcm* %6, %struct.snd_line6_pcm** %3, align 8
  %7 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %7, i32 %10)
  store %struct.line6_pcm_stream* %11, %struct.line6_pcm_stream** %4, align 8
  %12 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %13 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %16 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %4, align 8
  %17 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %18 = call i32 @line6_buffer_release(%struct.snd_line6_pcm* %15, %struct.line6_pcm_stream* %16, i32 %17)
  %19 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %20 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %22)
  ret i32 %23
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @line6_buffer_release(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

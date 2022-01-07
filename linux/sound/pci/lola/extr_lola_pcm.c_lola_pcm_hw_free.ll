; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.lola = type { i32 }
%struct.lola_pcm = type { i32 }
%struct.lola_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lola_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.lola*, align 8
  %4 = alloca %struct.lola_pcm*, align 8
  %5 = alloca %struct.lola_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.lola* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.lola* %7, %struct.lola** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.lola_pcm* @lola_get_pcm(%struct.snd_pcm_substream* %8)
  store %struct.lola_pcm* %9, %struct.lola_pcm** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.lola_stream* @lola_get_stream(%struct.snd_pcm_substream* %10)
  store %struct.lola_stream* %11, %struct.lola_stream** %5, align 8
  %12 = load %struct.lola*, %struct.lola** %3, align 8
  %13 = getelementptr inbounds %struct.lola, %struct.lola* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.lola*, %struct.lola** %3, align 8
  %16 = load %struct.lola_stream*, %struct.lola_stream** %5, align 8
  %17 = call i32 @lola_stream_reset(%struct.lola* %15, %struct.lola_stream* %16)
  %18 = load %struct.lola_pcm*, %struct.lola_pcm** %4, align 8
  %19 = load %struct.lola_stream*, %struct.lola_stream** %5, align 8
  %20 = call i32 @lola_cleanup_slave_streams(%struct.lola_pcm* %18, %struct.lola_stream* %19)
  %21 = load %struct.lola*, %struct.lola** %3, align 8
  %22 = getelementptr inbounds %struct.lola, %struct.lola* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %24)
  ret i32 %25
}

declare dso_local %struct.lola* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.lola_pcm* @lola_get_pcm(%struct.snd_pcm_substream*) #1

declare dso_local %struct.lola_stream* @lola_get_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lola_stream_reset(%struct.lola*, %struct.lola_stream*) #1

declare dso_local i32 @lola_cleanup_slave_streams(%struct.lola_pcm*, %struct.lola_stream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

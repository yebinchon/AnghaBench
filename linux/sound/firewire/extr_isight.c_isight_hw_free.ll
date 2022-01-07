; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.isight* }
%struct.isight = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @isight_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isight_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.isight*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.isight*, %struct.isight** %5, align 8
  store %struct.isight* %6, %struct.isight** %3, align 8
  %7 = load %struct.isight*, %struct.isight** %3, align 8
  %8 = getelementptr inbounds %struct.isight, %struct.isight* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WRITE_ONCE(i32 %9, i32 0)
  %11 = load %struct.isight*, %struct.isight** %3, align 8
  %12 = getelementptr inbounds %struct.isight, %struct.isight* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.isight*, %struct.isight** %3, align 8
  %15 = call i32 @isight_stop_streaming(%struct.isight* %14)
  %16 = load %struct.isight*, %struct.isight** %3, align 8
  %17 = getelementptr inbounds %struct.isight, %struct.isight* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = call i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream* %19)
  ret i32 %20
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isight_stop_streaming(%struct.isight*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

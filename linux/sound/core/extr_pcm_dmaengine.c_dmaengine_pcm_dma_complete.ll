; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_dmaengine_pcm_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_dmaengine_pcm_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.dmaengine_pcm_runtime_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dmaengine_pcm_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmaengine_pcm_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.dmaengine_pcm_runtime_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %6, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream* %7)
  store %struct.dmaengine_pcm_runtime_data* %8, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %9)
  %11 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %12 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %16 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %18)
  %20 = icmp sge i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %23 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %25)
  ret void
}

declare dso_local %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

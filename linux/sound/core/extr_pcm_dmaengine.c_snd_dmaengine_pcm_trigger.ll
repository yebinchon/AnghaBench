; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_dmaengine_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_dmaengine_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.dmaengine_pcm_runtime_data = type { i32 }

@SNDRV_PCM_INFO_PAUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dmaengine_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmaengine_pcm_runtime_data*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream* %9)
  store %struct.dmaengine_pcm_runtime_data* %10, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %60 [
    i32 130, label %15
    i32 131, label %27
    i32 132, label %27
    i32 128, label %32
    i32 133, label %50
    i32 129, label %55
  ]

15:                                               ; preds = %2
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = call i32 @dmaengine_pcm_prepare_and_submit(%struct.snd_pcm_substream* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %15
  %23 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %24 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_async_issue_pending(i32 %25)
  br label %63

27:                                               ; preds = %2, %2
  %28 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %29 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dmaengine_resume(i32 %30)
  br label %63

32:                                               ; preds = %2
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SNDRV_PCM_INFO_PAUSE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %41 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dmaengine_pause(i32 %42)
  br label %49

44:                                               ; preds = %32
  %45 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %46 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dmaengine_terminate_async(i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %63

50:                                               ; preds = %2
  %51 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %52 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dmaengine_pause(i32 %53)
  br label %63

55:                                               ; preds = %2
  %56 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %6, align 8
  %57 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dmaengine_terminate_async(i32 %58)
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %55, %50, %49, %27, %22
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dmaengine_pcm_prepare_and_submit(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_resume(i32) #1

declare dso_local i32 @dmaengine_pause(i32) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

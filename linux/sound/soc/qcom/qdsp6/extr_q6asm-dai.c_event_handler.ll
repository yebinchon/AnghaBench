; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6asm_dai_rtd = type { i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@NO_TIMESTAMP = common dso_local global i32 0, align 4
@Q6ASM_STREAM_STOPPED = common dso_local global i32 0, align 4
@Q6ASM_STREAM_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i8*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_handler(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.q6asm_dai_rtd*, align 8
  %10 = alloca %struct.snd_pcm_substream*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.q6asm_dai_rtd*
  store %struct.q6asm_dai_rtd* %12, %struct.q6asm_dai_rtd** %9, align 8
  %13 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %14 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %13, i32 0, i32 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, align 8
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %10, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %83 [
    i32 130, label %17
    i32 131, label %33
    i32 128, label %37
    i32 129, label %62
  ]

17:                                               ; preds = %4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %25 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %28 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NO_TIMESTAMP, align 4
  %31 = call i32 @q6asm_write_async(i32 %26, i32 %29, i32 0, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %23, %17
  br label %84

33:                                               ; preds = %4
  %34 = load i32, i32* @Q6ASM_STREAM_STOPPED, align 4
  %35 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %36 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %84

37:                                               ; preds = %4
  %38 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %39 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %42 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %46 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %45)
  %47 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %48 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @Q6ASM_STREAM_RUNNING, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %37
  %53 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %54 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %57 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NO_TIMESTAMP, align 4
  %60 = call i32 @q6asm_write_async(i32 %55, i32 %58, i32 0, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %52, %37
  br label %84

62:                                               ; preds = %4
  %63 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %64 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %67 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %71 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %70)
  %72 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %73 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @Q6ASM_STREAM_RUNNING, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %9, align 8
  %79 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @q6asm_read(i32 %80)
  br label %82

82:                                               ; preds = %77, %62
  br label %84

83:                                               ; preds = %4
  br label %84

84:                                               ; preds = %83, %82, %61, %33, %32
  ret void
}

declare dso_local i32 @q6asm_write_async(i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @q6asm_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

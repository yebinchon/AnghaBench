; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32, i32 }

@Q6ASM_STREAM_STOPPED = common dso_local global i32 0, align 4
@CMD_EOS = common dso_local global i32 0, align 4
@CMD_PAUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @q6asm_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.q6asm_dai_rtd*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %12, align 8
  store %struct.q6asm_dai_rtd* %13, %struct.q6asm_dai_rtd** %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %35 [
    i32 130, label %15
    i32 131, label %15
    i32 132, label %15
    i32 129, label %20
    i32 128, label %29
    i32 133, label %29
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %17 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @q6asm_run_nowait(i32 %18, i32 0, i32 0, i32 0)
  store i32 %19, i32* %5, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @Q6ASM_STREAM_STOPPED, align 4
  %22 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %23 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %25 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CMD_EOS, align 4
  %28 = call i32 @q6asm_cmd_nowait(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %38

29:                                               ; preds = %2, %2
  %30 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %31 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CMD_PAUSE, align 4
  %34 = call i32 @q6asm_cmd_nowait(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %29, %20, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @q6asm_run_nowait(i32, i32, i32, i32) #1

declare dso_local i32 @q6asm_cmd_nowait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @q6asm_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.q6asm_dai_rtd*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %5, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %11, align 8
  store %struct.q6asm_dai_rtd* %12, %struct.q6asm_dai_rtd** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %13)
  %15 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %16 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %18 = call i32 @params_periods(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %20 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i32 @params_format(%struct.snd_pcm_hw_params* %21)
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %26
  ]

23:                                               ; preds = %2
  %24 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %25 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %24, i32 0, i32 0
  store i32 16, i32* %25, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %28 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %27, i32 0, i32 0
  store i32 24, i32* %28, align 4
  br label %29

29:                                               ; preds = %2, %26, %23
  ret i32 0
}

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

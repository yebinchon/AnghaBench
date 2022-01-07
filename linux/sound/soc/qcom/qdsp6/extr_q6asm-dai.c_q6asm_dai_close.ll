; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32*, i64 }

@CMD_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @q6asm_dai_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.q6asm_dai_rtd*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 2
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %13, align 8
  store %struct.q6asm_dai_rtd* %14, %struct.q6asm_dai_rtd** %5, align 8
  %15 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %16 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %21 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %26 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @CMD_CLOSE, align 4
  %29 = call i32 @q6asm_cmd(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %35 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @q6asm_unmap_memory_regions(i32 %33, i32* %36)
  %38 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %39 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @q6asm_audio_client_free(i32* %40)
  %42 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %43 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %30, %1
  %45 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @q6routing_stream_close(i32 %49, i32 %52)
  %54 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %5, align 8
  %55 = call i32 @kfree(%struct.q6asm_dai_rtd* %54)
  ret i32 0
}

declare dso_local i32 @q6asm_cmd(i32*, i32) #1

declare dso_local i32 @q6asm_unmap_memory_regions(i32, i32*) #1

declare dso_local i32 @q6asm_audio_client_free(i32*) #1

declare dso_local i32 @q6routing_stream_close(i32, i32) #1

declare dso_local i32 @kfree(%struct.q6asm_dai_rtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

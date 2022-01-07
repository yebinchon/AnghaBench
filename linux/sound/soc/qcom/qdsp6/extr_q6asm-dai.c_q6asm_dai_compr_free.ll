; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_compr_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_compr_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32*, i32, i64 }

@CMD_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @q6asm_dai_compr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_free(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca %struct.snd_compr_stream*, align 8
  %3 = alloca %struct.snd_compr_runtime*, align 8
  %4 = alloca %struct.q6asm_dai_rtd*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %2, align 8
  %6 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %6, i32 0, i32 2
  %8 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %7, align 8
  store %struct.snd_compr_runtime* %8, %struct.snd_compr_runtime** %3, align 8
  %9 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %9, i32 0, i32 0
  %11 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  store %struct.q6asm_dai_rtd* %11, %struct.q6asm_dai_rtd** %4, align 8
  %12 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %16 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %21 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %26 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @CMD_CLOSE, align 4
  %29 = call i32 @q6asm_cmd(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %32 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %31, i32 0, i32 1
  %33 = call i32 @snd_dma_free_pages(i32* %32)
  %34 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %35 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %38 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @q6asm_unmap_memory_regions(i32 %36, i32* %39)
  %41 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %42 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @q6asm_audio_client_free(i32* %43)
  %45 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %46 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %30, %1
  %48 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %49 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %54 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @q6routing_stream_close(i32 %52, i32 %55)
  %57 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %4, align 8
  %58 = call i32 @kfree(%struct.q6asm_dai_rtd* %57)
  ret i32 0
}

declare dso_local i32 @q6asm_cmd(i32*, i32) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.psc_dma = type { %struct.TYPE_6__*, i32, %struct.psc_dma_stream, %struct.psc_dma_stream, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.psc_dma_stream = type { i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"psc_dma_close(substream=%p)\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @psc_dma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.psc_dma*, align 8
  %5 = alloca %struct.psc_dma_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  store %struct.snd_soc_pcm_runtime* %8, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.psc_dma* @snd_soc_dai_get_drvdata(i32 %11)
  store %struct.psc_dma* %12, %struct.psc_dma** %4, align 8
  %13 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %14 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %27 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %26, i32 0, i32 2
  store %struct.psc_dma_stream* %27, %struct.psc_dma_stream** %5, align 8
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %30 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %29, i32 0, i32 3
  store %struct.psc_dma_stream* %30, %struct.psc_dma_stream** %5, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %33 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %31
  %38 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %39 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %45 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %50 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @out_be16(i32* %48, i32 %51)
  %53 = load %struct.psc_dma*, %struct.psc_dma** %4, align 8
  %54 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @out_8(i32* %56, i32 64)
  br label %58

58:                                               ; preds = %43, %37, %31
  %59 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %5, align 8
  %60 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  ret i32 0
}

declare dso_local %struct.psc_dma* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

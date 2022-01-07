; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { i32 }
%struct.psc_dma = type { %struct.psc_dma_stream, %struct.psc_dma_stream, i32 }
%struct.psc_dma_stream = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [28 x i8] c"psc_dma_open(substream=%p)\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@psc_dma_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid buffer size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @psc_dma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.psc_dma*, align 8
  %7 = alloca %struct.psc_dma_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.psc_dma* @snd_soc_dai_get_drvdata(i32 %17)
  store %struct.psc_dma* %18, %struct.psc_dma** %6, align 8
  %19 = load %struct.psc_dma*, %struct.psc_dma** %6, align 8
  %20 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.psc_dma*, %struct.psc_dma** %6, align 8
  %33 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %32, i32 0, i32 1
  store %struct.psc_dma_stream* %33, %struct.psc_dma_stream** %7, align 8
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.psc_dma*, %struct.psc_dma** %6, align 8
  %36 = getelementptr inbounds %struct.psc_dma, %struct.psc_dma* %35, i32 0, i32 0
  store %struct.psc_dma_stream* %36, %struct.psc_dma_stream** %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %38, i32* @psc_dma_hardware)
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %42 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %37
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = load %struct.psc_dma_stream*, %struct.psc_dma_stream** %7, align 8
  %58 = getelementptr inbounds %struct.psc_dma_stream, %struct.psc_dma_stream* %57, i32 0, i32 0
  store %struct.snd_pcm_substream* %56, %struct.snd_pcm_substream** %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %45
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.psc_dma* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32 }
%struct.kirkwood_dma_data = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@KIRKWOOD_PLAY_BYTE_INT_COUNT = common dso_local global i64 0, align 8
@KIRKWOOD_PLAY_BUF_ADDR = common dso_local global i64 0, align 8
@KIRKWOOD_PLAY_BUF_SIZE = common dso_local global i64 0, align 8
@KIRKWOOD_REC_BYTE_INT_COUNT = common dso_local global i64 0, align 8
@KIRKWOOD_REC_BUF_ADDR = common dso_local global i64 0, align 8
@KIRKWOOD_REC_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @kirkwood_dma_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_dma_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.kirkwood_dma_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.kirkwood_dma_data* @kirkwood_priv(%struct.snd_pcm_substream* %10)
  store %struct.kirkwood_dma_data* %11, %struct.kirkwood_dma_data** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %12, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = lshr i64 %17, 2
  %19 = sub i64 %18, 1
  store i64 %19, i64* %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %30 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KIRKWOOD_PLAY_BYTE_INT_COUNT, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i64 %28, i64 %33)
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %39 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KIRKWOOD_PLAY_BUF_ADDR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i64 %37, i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %46 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KIRKWOOD_PLAY_BUF_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i64 %44, i64 %49)
  br label %75

51:                                               ; preds = %1
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %54 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @KIRKWOOD_REC_BYTE_INT_COUNT, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i64 %52, i64 %57)
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %63 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KIRKWOOD_REC_BUF_ADDR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i64 %61, i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %70 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @KIRKWOOD_REC_BUF_SIZE, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i64 %68, i64 %73)
  br label %75

75:                                               ; preds = %51, %27
  ret i32 0
}

declare dso_local %struct.kirkwood_dma_data* @kirkwood_priv(%struct.snd_pcm_substream*) #1

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

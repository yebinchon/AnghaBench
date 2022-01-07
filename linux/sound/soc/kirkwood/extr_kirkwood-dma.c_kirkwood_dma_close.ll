; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.kirkwood_dma_data = type { i32, i64, i32*, i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@KIRKWOOD_ERR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @kirkwood_dma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_dma_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.kirkwood_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = call %struct.kirkwood_dma_data* @kirkwood_priv(%struct.snd_pcm_substream* %5)
  store %struct.kirkwood_dma_data* %6, %struct.kirkwood_dma_data** %4, align 8
  %7 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %8 = icmp ne %struct.kirkwood_dma_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %18 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  br label %22

19:                                               ; preds = %10
  %20 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %21 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %24 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %29 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %34 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @KIRKWOOD_ERR_MASK, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 0, i64 %37)
  %39 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %40 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %4, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.kirkwood_dma_data* %42)
  br label %44

44:                                               ; preds = %32, %27, %22
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.kirkwood_dma_data* @kirkwood_priv(%struct.snd_pcm_substream*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.kirkwood_dma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_alchemy_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_alchemy_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.alchemy_pcm_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.snd_pcm_substream*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"audio-tx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"audio-rx\00", align 1
@au1000_dma_interrupt = common dso_local global i32 0, align 4
@DMA_NC = common dso_local global i32 0, align 4
@alchemy_pcm_hardware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @alchemy_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.alchemy_pcm_ctx*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.alchemy_pcm_ctx* @ss_to_ctx(%struct.snd_pcm_substream* %9)
  store %struct.alchemy_pcm_ctx* %10, %struct.alchemy_pcm_ctx** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = call i32* @snd_soc_dai_get_dma_data(i32 %19, %struct.snd_pcm_substream* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %92

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  store i8* %32, i8** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @au1000_dma_interrupt, align 4
  %40 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = call i32 @request_au1000_dma(i32 %37, i8* %38, i32 %39, i32 0, %struct.TYPE_2__* %45)
  %47 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %46, i32* %53, align 8
  %54 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @get_dma_mode(i32 %69)
  %71 = load i32, i32* @DMA_NC, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @set_dma_mode(i32 %61, i32 %73)
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store %struct.snd_pcm_substream* %75, %struct.snd_pcm_substream** %82, align 8
  %83 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %91 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %90, i32* @alchemy_pcm_hardware)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %27, %24
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.alchemy_pcm_ctx* @ss_to_ctx(%struct.snd_pcm_substream*) #1

declare dso_local i32* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @request_au1000_dma(i32, i8*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @get_dma_mode(i32) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

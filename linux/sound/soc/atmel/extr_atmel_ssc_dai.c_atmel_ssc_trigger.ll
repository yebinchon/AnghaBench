; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { %struct.TYPE_3__*, %struct.atmel_pcm_dma_params** }
%struct.TYPE_3__ = type { i32 }
%struct.atmel_pcm_dma_params = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.platform_device = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @atmel_ssc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.atmel_ssc_info*, align 8
  %9 = alloca %struct.atmel_pcm_dma_params*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.platform_device* @to_platform_device(i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %7, align 8
  %15 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %15, i64 %18
  store %struct.atmel_ssc_info* %19, %struct.atmel_ssc_info** %8, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %27

26:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %29 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %28, i32 0, i32 1
  %30 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %30, i64 %32
  %34 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %33, align 8
  store %struct.atmel_pcm_dma_params* %34, %struct.atmel_pcm_dma_params** %9, align 8
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %49 [
    i32 128, label %36
    i32 129, label %36
    i32 130, label %36
  ]

36:                                               ; preds = %27, %27, %27
  %37 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %38 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CR, align 4
  %43 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %9, align 8
  %44 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ssc_writel(i32 %41, i32 %42, i32 %47)
  br label %62

49:                                               ; preds = %27
  %50 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %8, align 8
  %51 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CR, align 4
  %56 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %9, align 8
  %57 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ssc_writel(i32 %54, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %49, %36
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

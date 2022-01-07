; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dma_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_2__ = type { %struct.i2s_stream_instance* }
%struct.i2s_stream_instance = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.i2s_dev_data = type { i64, i32*, i32* }

@DRV_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp3x_dma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_dma_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.i2s_stream_instance*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.i2s_dev_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 2
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %13, align 8
  store %struct.i2s_stream_instance* %14, %struct.i2s_stream_instance** %4, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %16 = load i32, i32* @DRV_NAME, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %15, i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %5, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.i2s_dev_data* @dev_get_drvdata(i32 %20)
  store %struct.i2s_dev_data* %21, %struct.i2s_dev_data** %6, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %29 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %32 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %35 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %40 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %6, align 8
  %45 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @mmACP_EXTERNAL_INTR_ENB, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @rv_writel(i32 0, i64 %48)
  br label %50

50:                                               ; preds = %43, %38, %33
  %51 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %4, align 8
  %52 = call i32 @kfree(%struct.i2s_stream_instance* %51)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.i2s_dev_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @rv_writel(i32, i64) #1

declare dso_local i32 @kfree(%struct.i2s_stream_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

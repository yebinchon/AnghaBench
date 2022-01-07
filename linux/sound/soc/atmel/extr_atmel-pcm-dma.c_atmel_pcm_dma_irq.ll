; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-dma.c_atmel_pcm_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pcm-dma.c_atmel_pcm_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.atmel_pcm_dma_params = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"atmel-pcm: buffer %s on %s (SSC_SR=%#x)\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@SSC_CR = common dso_local global i32 0, align 4
@SSC_RHR = common dso_local global i32 0, align 4
@SSC_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.snd_pcm_substream*)* @atmel_pcm_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pcm_dma_irq(i32 %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.atmel_pcm_dma_params*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %5, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.atmel_pcm_dma_params* @snd_soc_dai_get_dma_data(i32 %12, %struct.snd_pcm_substream* %13)
  store %struct.atmel_pcm_dma_params* %14, %struct.atmel_pcm_dma_params** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %17 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %36 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27, %23
  %41 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %42 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SSC_CR, align 4
  %47 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %48 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ssc_writex(i32 %45, i32 %46, i32 %51)
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %54 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %53)
  %55 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SSC_RHR, align 4
  %61 = call i32 @ssc_readx(i32 %59, i32 %60)
  %62 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %63 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SSC_SR, align 4
  %68 = call i32 @ssc_readx(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %40, %2
  ret void
}

declare dso_local %struct.atmel_pcm_dma_params* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32, i32) #1

declare dso_local i32 @ssc_writex(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @ssc_readx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

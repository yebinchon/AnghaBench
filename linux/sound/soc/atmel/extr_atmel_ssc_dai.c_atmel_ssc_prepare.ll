; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { %struct.TYPE_4__*, %struct.atmel_pcm_dma_params** }
%struct.TYPE_4__ = type { i32 }
%struct.atmel_pcm_dma_params = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.platform_device = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CR = common dso_local global i32 0, align 4
@IDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s enabled SSC_SR=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"transmit\00", align 1
@SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @atmel_ssc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.atmel_ssc_info*, align 8
  %7 = alloca %struct.atmel_pcm_dma_params*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.platform_device* @to_platform_device(i32 %11)
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %13, i64 %16
  store %struct.atmel_ssc_info* %17, %struct.atmel_ssc_info** %6, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

24:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %27 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %26, i32 0, i32 1
  %28 = load %struct.atmel_pcm_dma_params**, %struct.atmel_pcm_dma_params*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %28, i64 %30
  %32 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %31, align 8
  store %struct.atmel_pcm_dma_params* %32, %struct.atmel_pcm_dma_params** %7, align 8
  %33 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CR, align 4
  %39 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ssc_writel(i32 %37, i32 %38, i32 %43)
  %45 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %46 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IDR, align 4
  %51 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %7, align 8
  %52 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ssc_writel(i32 %49, i32 %50, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %62 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SR, align 4
  %67 = call i32 @ssc_readl(i32 %65, i32 %66)
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %67)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

declare dso_local i32 @ssc_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_dma-sh7760.c_camelot_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_dma-sh7760.c_camelot_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camelot_pcm = type { i32, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cam_pcm_data = common dso_local global %struct.camelot_pcm* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@camelot_pcm_hardware = common dso_local global i32 0, align 4
@camelot_rxdma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"audio unit %d irqs already taken!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@camelot_txdma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @camelot_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camelot_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.camelot_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = load %struct.camelot_pcm*, %struct.camelot_pcm** @cam_pcm_data, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %12, i64 %17
  store %struct.camelot_pcm* %18, %struct.camelot_pcm** %5, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %26, i32* @camelot_pcm_hardware)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %32 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 2
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i32 [ %34, %30 ], [ %38, %35 ]
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %46 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %45, i32 0, i32 2
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @camelot_rxdma, align 4
  %49 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %50 = call i32 @dmabrg_request_irq(i32 %47, i32 %48, %struct.camelot_pcm* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %96

63:                                               ; preds = %43
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @camelot_rxdma, align 4
  %67 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %68 = call i32 @dmabrg_request_irq(i32 %65, i32 %66, %struct.camelot_pcm* %67)
  br label %95

69:                                               ; preds = %39
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %71 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %72 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %71, i32 0, i32 1
  store %struct.snd_pcm_substream* %70, %struct.snd_pcm_substream** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @camelot_txdma, align 4
  %75 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %76 = call i32 @dmabrg_request_irq(i32 %73, i32 %74, %struct.camelot_pcm* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %82 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %96

89:                                               ; preds = %69
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @camelot_txdma, align 4
  %93 = load %struct.camelot_pcm*, %struct.camelot_pcm** %5, align 8
  %94 = call i32 @dmabrg_request_irq(i32 %91, i32 %92, %struct.camelot_pcm* %93)
  br label %95

95:                                               ; preds = %89, %63
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %80, %54
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @dmabrg_request_irq(i32, i32, %struct.camelot_pcm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

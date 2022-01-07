; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_dma-sh7760.c_camelot_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_dma-sh7760.c_camelot_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camelot_pcm = type { i32, i32*, i32* }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cam_pcm_data = common dso_local global %struct.camelot_pcm* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @camelot_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camelot_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.camelot_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.camelot_pcm*, %struct.camelot_pcm** @cam_pcm_data, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %10, i64 %15
  store %struct.camelot_pcm* %16, %struct.camelot_pcm** %4, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.camelot_pcm*, %struct.camelot_pcm** %4, align 8
  %28 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 2
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.camelot_pcm*, %struct.camelot_pcm** %4, align 8
  %33 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %30, %26 ], [ %34, %31 ]
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.camelot_pcm*, %struct.camelot_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.camelot_pcm*, %struct.camelot_pcm** %4, align 8
  %44 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @dmabrg_free_irq(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dmabrg_free_irq(i32 %49)
  ret i32 0
}

declare dso_local i32 @dmabrg_free_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

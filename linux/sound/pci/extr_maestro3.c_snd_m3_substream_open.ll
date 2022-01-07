; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_substream_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_substream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, i32, i32, i32, i32, i32, %struct.m3_dma* }
%struct.m3_dma = type { i32, i32**, %struct.snd_pcm_substream*, i64 }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.m3_dma* }

@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, %struct.snd_pcm_substream*)* @snd_m3_substream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_substream_open(%struct.snd_m3* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m3_dma*, align 8
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %8 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %9 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %8, i32 0, i32 5
  %10 = call i32 @spin_lock_irq(i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %14 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %19 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %18, i32 0, i32 6
  %20 = load %struct.m3_dma*, %struct.m3_dma** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %20, i64 %22
  store %struct.m3_dma* %23, %struct.m3_dma** %7, align 8
  %24 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %25 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %39

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %35 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %34, i32 0, i32 5
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %28
  %40 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %41 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %43 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %45 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %44, i32 0, i32 5
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.m3_dma* %47, %struct.m3_dma** %51, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %53 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %54 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %53, i32 0, i32 2
  store %struct.snd_pcm_substream* %52, %struct.snd_pcm_substream** %54, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %39
  %61 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %62 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %61, i32 0, i32 4
  %63 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %64 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  store i32* %62, i32** %66, align 8
  br label %74

67:                                               ; preds = %39
  %68 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %69 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %68, i32 0, i32 3
  %70 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %71 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  store i32* %69, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %76 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %75, i32 0, i32 2
  %77 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %78 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* %76, i32** %80, align 8
  %81 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %82 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %81, i32 0, i32 1
  %83 = load %struct.m3_dma*, %struct.m3_dma** %7, align 8
  %84 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 2
  store i32* %82, i32** %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %74, %33
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, %struct.m3_dma* }
%struct.m3_dma = type { i32 }
%struct.snd_m3 = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_U8 = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_m3_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.m3_dma*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_m3* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_m3* %8, %struct.snd_m3** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 2
  %14 = load %struct.m3_dma*, %struct.m3_dma** %13, align 8
  store %struct.m3_dma* %14, %struct.m3_dma** %6, align 8
  %15 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %16 = icmp ne %struct.m3_dma* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %83

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_FORMAT_U8, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %83

39:                                               ; preds = %30, %24
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 48000
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 8000
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %83

52:                                               ; preds = %44
  %53 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %54 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_irq(i32* %54)
  %56 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %57 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = call i32 @snd_m3_pcm_setup1(%struct.snd_m3* %56, %struct.m3_dma* %57, %struct.snd_pcm_substream* %58)
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %67 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %69 = call i32 @snd_m3_playback_setup(%struct.snd_m3* %66, %struct.m3_dma* %67, %struct.snd_pcm_substream* %68)
  br label %75

70:                                               ; preds = %52
  %71 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %72 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %74 = call i32 @snd_m3_capture_setup(%struct.snd_m3* %71, %struct.m3_dma* %72, %struct.snd_pcm_substream* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %77 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %79 = call i32 @snd_m3_pcm_setup2(%struct.snd_m3* %76, %struct.m3_dma* %77, %struct.snd_pcm_runtime* %78)
  %80 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %81 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_irq(i32* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %49, %36, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.snd_m3* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_m3_pcm_setup1(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_m3_playback_setup(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_m3_capture_setup(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_m3_pcm_setup2(%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

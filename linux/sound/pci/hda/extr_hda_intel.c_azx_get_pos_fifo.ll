; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_pos_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_pos_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@AMD_FIFO_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_get_pos_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_get_pos_fifo(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  %10 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %11 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %7, align 8
  %17 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %18 = call i32 @azx_stream(%struct.azx_dev* %17)
  %19 = call i32 @snd_hdac_stream_get_pos_lpib(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %21 = icmp ne %struct.snd_pcm_runtime* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %2
  %25 = load i32, i32* @AMD_FIFO_SIZE, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %29 = load i32, i32* @AMD_FIFO_SIZE, align 4
  %30 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %32 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %41, i32 %42)
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %48 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %62 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %60, %56
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %50
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @snd_hdac_stream_get_pos_lpib(i32) #1

declare dso_local i32 @azx_stream(%struct.azx_dev*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

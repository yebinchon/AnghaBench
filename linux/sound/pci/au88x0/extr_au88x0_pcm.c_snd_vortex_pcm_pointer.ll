; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@VORTEX_PCM_WT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_vortex_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_vortex_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.TYPE_7__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @VORTEX_PCM_TYPE(i32 %23)
  %25 = load i64, i64* @VORTEX_PCM_WT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @vortex_adbdma_getlinearpos(%struct.TYPE_7__* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @vortex_wtdma_getlinearpos(%struct.TYPE_7__* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @bytes_to_frames(%struct.TYPE_9__* %41, i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i64, i64* %6, align 8
  ret i64 %53
}

declare dso_local %struct.TYPE_7__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @VORTEX_PCM_TYPE(i32) #1

declare dso_local i64 @vortex_adbdma_getlinearpos(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @vortex_wtdma_getlinearpos(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @bytes_to_frames(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

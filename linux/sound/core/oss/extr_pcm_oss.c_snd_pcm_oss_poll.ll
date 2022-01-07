; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_oss_file* }
%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_DRAINING = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_pcm_oss_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.snd_pcm_oss_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_pcm_oss_file, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %8, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %14, align 8
  store %struct.snd_pcm_oss_file* %15, %struct.snd_pcm_oss_file** %5, align 8
  %16 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, i64 %19
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %20, align 8
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %7, align 8
  %22 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %22, i32 0, i32 0
  %24 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %24, i64 %25
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %26, align 8
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %8, align 8
  store i32 0, i32* %6, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %2
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %32, align 8
  store %struct.snd_pcm_runtime* %33, %struct.snd_pcm_runtime** %9, align 8
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 2
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @poll_wait(%struct.file* %34, i32* %36, i32* %37)
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %40 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %39)
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %30
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %58 = call i64 @snd_pcm_oss_playback_ready(%struct.snd_pcm_substream* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %48
  %61 = load i32, i32* @EPOLLOUT, align 4
  %62 = load i32, i32* @EPOLLWRNORM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %56, %30
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %68 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %67)
  br label %69

69:                                               ; preds = %66, %2
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %71 = icmp ne %struct.snd_pcm_substream* %70, null
  br i1 %71, label %72, label %130

72:                                               ; preds = %69
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %73, i32 0, i32 0
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %74, align 8
  store %struct.snd_pcm_runtime* %75, %struct.snd_pcm_runtime** %10, align 8
  %76 = load %struct.file*, %struct.file** %3, align 8
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 2
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @poll_wait(%struct.file* %76, i32* %78, i32* %79)
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %82 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %81)
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %72
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %92 = call i64 @snd_pcm_oss_capture_ready(%struct.snd_pcm_substream* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90, %72
  %95 = load i32, i32* @EPOLLIN, align 4
  %96 = load i32, i32* @EPOLLRDNORM, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %94, %90
  %101 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %102 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %101)
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %100
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = call i32 @memset(%struct.snd_pcm_oss_file* %12, i32 0, i32 8)
  %114 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %5, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %114, i32 0, i32 0
  %116 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %115, align 8
  %117 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %116, i64 %117
  %119 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %118, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %12, i32 0, i32 0
  %121 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %120, align 8
  %122 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %121, i64 %122
  store %struct.snd_pcm_substream* %119, %struct.snd_pcm_substream** %123, align 8
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %128 = call i32 @snd_pcm_oss_set_trigger(%struct.snd_pcm_oss_file* %12, i32 %127)
  br label %129

129:                                              ; preds = %112, %106, %100
  br label %130

130:                                              ; preds = %129, %69
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_oss_playback_ready(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_oss_capture_ready(%struct.snd_pcm_substream*) #1

declare dso_local i32 @memset(%struct.snd_pcm_oss_file*, i32, i32) #1

declare dso_local i32 @snd_pcm_oss_set_trigger(%struct.snd_pcm_oss_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

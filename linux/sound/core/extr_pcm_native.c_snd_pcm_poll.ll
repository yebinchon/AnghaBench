; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_pcm_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_pcm_file*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %13, align 8
  store %struct.snd_pcm_file* %14, %struct.snd_pcm_file** %6, align 8
  %15 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %7, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EPOLLOUT, align 4
  %25 = load i32, i32* @EPOLLWRNORM, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @EPOLLIN, align 4
  %29 = load i32, i32* @EPOLLRDNORM, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %33 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EPOLLERR, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 1
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %41, align 8
  store %struct.snd_pcm_runtime* %42, %struct.snd_pcm_runtime** %8, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @poll_wait(%struct.file* %43, i32* %45, i32* %46)
  store i32 0, i32* %9, align 4
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %49 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %48)
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %51 = call i32 @snd_pcm_avail(%struct.snd_pcm_substream* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %84 [
    i32 128, label %57
    i32 129, label %57
    i32 130, label %57
    i32 131, label %68
  ]

57:                                               ; preds = %39, %39, %39
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %58, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %57
  br label %88

68:                                               ; preds = %39
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @EPOLLERR, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %68
  br label %88

84:                                               ; preds = %39
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @EPOLLERR, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84, %83, %67
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %90 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %35
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_avail(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

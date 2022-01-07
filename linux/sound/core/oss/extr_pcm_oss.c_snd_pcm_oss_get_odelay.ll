; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_odelay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_odelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_DELAY = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*)* @snd_pcm_oss_get_odelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_get_odelay(%struct.snd_pcm_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_oss_file*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %3, align 8
  %8 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, i64 %11
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = icmp eq %struct.snd_pcm_substream* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = call i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %19
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %5, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %25
  store i32 0, i32* %2, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = load i32, i32* @SNDRV_PCM_IOCTL_DELAY, align 4
  %44 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %42, i32 %43, i64* %6)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @EPIPE, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i64 0, i64* %6, align 8
  br label %56

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %49
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @snd_pcm_oss_bytes(%struct.snd_pcm_substream* %57, i64 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %53, %40, %23, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, i64*) #1

declare dso_local i32 @snd_pcm_oss_bytes(%struct.snd_pcm_substream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

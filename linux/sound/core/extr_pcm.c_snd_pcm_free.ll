; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32*, {}*, i32 }

@n_unregister = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*)* @snd_pcm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_free(%struct.snd_pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %3, align 8
  %4 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %5 = icmp ne %struct.snd_pcm* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %14 = load i32, i32* @n_unregister, align 4
  %15 = call i32 @pcm_call_notify(%struct.snd_pcm* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %7
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %17, i32 0, i32 1
  %19 = bitcast {}** %18 to i32 (%struct.snd_pcm*)**
  %20 = load i32 (%struct.snd_pcm*)*, i32 (%struct.snd_pcm*)** %19, align 8
  %21 = icmp ne i32 (%struct.snd_pcm*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 1
  %25 = bitcast {}** %24 to i32 (%struct.snd_pcm*)**
  %26 = load i32 (%struct.snd_pcm*)*, i32 (%struct.snd_pcm*)** %25, align 8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %28 = call i32 %26(%struct.snd_pcm* %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %31 = call i32 @snd_pcm_lib_preallocate_free_for_all(%struct.snd_pcm* %30)
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @snd_pcm_free_stream(i32* %36)
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @snd_pcm_free_stream(i32* %42)
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %45 = call i32 @kfree(%struct.snd_pcm* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %29, %6
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pcm_call_notify(%struct.snd_pcm*, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_free_for_all(%struct.snd_pcm*) #1

declare dso_local i32 @snd_pcm_free_stream(i32*) #1

declare dso_local i32 @kfree(%struct.snd_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

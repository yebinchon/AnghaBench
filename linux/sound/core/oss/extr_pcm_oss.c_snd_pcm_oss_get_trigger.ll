; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*)* @snd_pcm_oss_get_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_get_trigger(%struct.snd_pcm_oss_file* %0) #0 {
  %2 = alloca %struct.snd_pcm_oss_file*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %2, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %7, align 8
  %9 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, i64 %9
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %3, align 8
  %12 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, i64 %15
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = icmp ne %struct.snd_pcm_substream* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %25, %20, %1
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = icmp ne %struct.snd_pcm_substream* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %45, %40, %37
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

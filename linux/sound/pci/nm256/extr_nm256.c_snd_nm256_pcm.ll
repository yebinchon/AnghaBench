; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { %struct.snd_pcm*, %struct.TYPE_2__*, i64, i64, i64, %struct.nm256_stream* }
%struct.snd_pcm = type { i64, %struct.nm256* }
%struct.TYPE_2__ = type { i32 }
%struct.nm256_stream = type { i64, i64, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_nm256_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_nm256_capture_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm256*, i32)* @snd_nm256_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_pcm(%struct.nm256* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nm256_stream*, align 8
  store %struct.nm256* %0, %struct.nm256** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load %struct.nm256*, %struct.nm256** %4, align 8
  %15 = getelementptr inbounds %struct.nm256, %struct.nm256* %14, i32 0, i32 5
  %16 = load %struct.nm256_stream*, %struct.nm256_stream** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %16, i64 %18
  store %struct.nm256_stream* %19, %struct.nm256_stream** %9, align 8
  %20 = load %struct.nm256*, %struct.nm256** %4, align 8
  %21 = getelementptr inbounds %struct.nm256, %struct.nm256* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nm256_stream*, %struct.nm256_stream** %9, align 8
  %24 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nm256*, %struct.nm256** %4, align 8
  %27 = getelementptr inbounds %struct.nm256, %struct.nm256* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = add nsw i64 %22, %29
  %31 = load %struct.nm256_stream*, %struct.nm256_stream** %9, align 8
  %32 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.nm256*, %struct.nm256** %4, align 8
  %34 = getelementptr inbounds %struct.nm256, %struct.nm256* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nm256_stream*, %struct.nm256_stream** %9, align 8
  %37 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nm256*, %struct.nm256** %4, align 8
  %40 = getelementptr inbounds %struct.nm256, %struct.nm256* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = add nsw i64 %35, %42
  %44 = load %struct.nm256_stream*, %struct.nm256_stream** %9, align 8
  %45 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %13
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load %struct.nm256*, %struct.nm256** %4, align 8
  %51 = getelementptr inbounds %struct.nm256, %struct.nm256* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.nm256*, %struct.nm256** %4, align 8
  %54 = getelementptr inbounds %struct.nm256, %struct.nm256* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @snd_pcm_new(%struct.TYPE_2__* %52, i32 %57, i32 %58, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %49
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %66 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %67 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %65, i32 %66, i32* @snd_nm256_playback_ops)
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %69 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %70 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %68, i32 %69, i32* @snd_nm256_capture_ops)
  %71 = load %struct.nm256*, %struct.nm256** %4, align 8
  %72 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %73 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %72, i32 0, i32 1
  store %struct.nm256* %71, %struct.nm256** %73, align 8
  %74 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %75 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %77 = load %struct.nm256*, %struct.nm256** %4, align 8
  %78 = getelementptr inbounds %struct.nm256, %struct.nm256* %77, i32 0, i32 0
  store %struct.snd_pcm* %76, %struct.snd_pcm** %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %64, %62
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

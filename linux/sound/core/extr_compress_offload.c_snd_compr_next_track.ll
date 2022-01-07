; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_next_track.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_next_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_compr_stream*, i32)* }
%struct.TYPE_3__ = type { i64 }

@SNDRV_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@SND_COMPRESS_CAPTURE = common dso_local global i64 0, align 8
@SND_COMPR_TRIGGER_NEXT_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @snd_compr_next_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_next_track(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SND_COMPRESS_CAPTURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.snd_compr_stream*, i32)*, i32 (%struct.snd_compr_stream*, i32)** %36, align 8
  %38 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %39 = load i32, i32* @SND_COMPR_TRIGGER_NEXT_TRACK, align 4
  %40 = call i32 %37(%struct.snd_compr_stream* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %47 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %43, %29, %21, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

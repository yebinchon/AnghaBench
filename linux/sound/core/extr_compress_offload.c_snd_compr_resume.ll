; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.snd_compr_stream*, i32)* }

@SNDRV_PCM_STATE_PAUSED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_PAUSE_RELEASE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @snd_compr_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_resume(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STATE_PAUSED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.snd_compr_stream*, i32)*, i32 (%struct.snd_compr_stream*, i32)** %19, align 8
  %21 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %22 = load i32, i32* @SNDRV_PCM_TRIGGER_PAUSE_RELEASE, align 4
  %23 = call i32 %20(%struct.snd_compr_stream* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %28 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

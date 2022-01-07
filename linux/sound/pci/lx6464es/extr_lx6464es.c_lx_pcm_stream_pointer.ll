; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_stream_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_stream_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lx6464es = type { %struct.TYPE_4__*, i32, %struct.lx_stream, %struct.lx_stream }
%struct.TYPE_4__ = type { i32 }
%struct.lx_stream = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"->lx_pcm_stream_pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"stream_pointer at %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lx_pcm_stream_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_pcm_stream_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lx_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.lx6464es* %8, %struct.lx6464es** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %19 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %18, i32 0, i32 3
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %22 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %21, i32 0, i32 2
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.lx_stream* [ %19, %17 ], [ %22, %20 ]
  store %struct.lx_stream* %24, %struct.lx_stream** %6, align 8
  %25 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %26 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %32 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.lx_stream*, %struct.lx_stream** %6, align 8
  %35 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %36, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %44 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %47 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

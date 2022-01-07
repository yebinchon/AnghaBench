; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vx_pipe* }
%struct.vx_pipe = type { i64, i64 }
%struct.vx_core = type { i32** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @vx_pcm_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.vx_pipe*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.vx_core* %7, %struct.vx_core** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.vx_pipe*, %struct.vx_pipe** %11, align 8
  %13 = icmp ne %struct.vx_pipe* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.vx_pipe*, %struct.vx_pipe** %21, align 8
  store %struct.vx_pipe* %22, %struct.vx_pipe** %5, align 8
  %23 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %24 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %30 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %33 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* null, i32** %35, align 8
  %36 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %37 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %38 = call i32 @vx_free_pipe(%struct.vx_core* %36, %struct.vx_pipe* %37)
  br label %39

39:                                               ; preds = %28, %17
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @vx_free_pipe(%struct.vx_core*, %struct.vx_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

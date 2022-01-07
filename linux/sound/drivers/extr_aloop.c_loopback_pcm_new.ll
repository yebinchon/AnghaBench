; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback = type { %struct.snd_pcm**, i32 }
%struct.snd_pcm = type { i32, i64, %struct.loopback* }

@.str = private unnamed_addr constant [13 x i8] c"Loopback PCM\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@loopback_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback*, i32, i32)* @loopback_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_pcm_new(%struct.loopback* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loopback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.loopback* %0, %struct.loopback** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.loopback*, %struct.loopback** %5, align 8
  %11 = getelementptr inbounds %struct.loopback, %struct.loopback* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @snd_pcm_new(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15, %struct.snd_pcm** %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %23 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %24 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %22, i32 %23, i32* @loopback_pcm_ops)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @loopback_pcm_ops)
  %28 = load %struct.loopback*, %struct.loopback** %5, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 2
  store %struct.loopback* %28, %struct.loopback** %30, align 8
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %34 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %38 = load %struct.loopback*, %struct.loopback** %5, align 8
  %39 = getelementptr inbounds %struct.loopback, %struct.loopback* %38, i32 0, i32 0
  %40 = load %struct.snd_pcm**, %struct.snd_pcm*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %40, i64 %42
  store %struct.snd_pcm* %37, %struct.snd_pcm** %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %21, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

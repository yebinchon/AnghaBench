; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_pcm_digital.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_pcm_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixart = type { i32, %struct.snd_pcm*, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i32, i64, %struct.snd_mixart* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"miXart AES/EBU %d\00", align 1
@MIXART_PCM_DIGITAL = common dso_local global i32 0, align 4
@MIXART_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@MIXART_CAPTURE_STREAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot create the digital pcm %d\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_mixart_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_mixart_capture_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixart*)* @snd_mixart_pcm_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_pcm_digital(%struct.snd_mixart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixart*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca [32 x i8], align 16
  store %struct.snd_mixart* %0, %struct.snd_mixart** %3, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %8 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %9 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %13 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %16 = load i32, i32* @MIXART_PCM_DIGITAL, align 4
  %17 = load i32, i32* @MIXART_PLAYBACK_STREAMS, align 4
  %18 = load i32, i32* @MIXART_CAPTURE_STREAMS, align 4
  %19 = call i32 @snd_pcm_new(%struct.TYPE_2__* %14, i8* %15, i32 %16, i32 %17, i32 %18, %struct.snd_pcm** %5)
  store i32 %19, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %23 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %28 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %57

32:                                               ; preds = %1
  %33 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 3
  store %struct.snd_mixart* %33, %struct.snd_mixart** %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %37 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i32 %37, i32* @snd_mixart_playback_ops)
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %40 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %41 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %39, i32 %40, i32* @snd_mixart_capture_ops)
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %50 = call i32 @strcpy(i32 %48, i8* %49)
  %51 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %52 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %53 = call i32 @preallocate_buffers(%struct.snd_mixart* %51, %struct.snd_pcm* %52)
  %54 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %55 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %56 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %55, i32 0, i32 1
  store %struct.snd_pcm* %54, %struct.snd_pcm** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %32, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @preallocate_buffers(%struct.snd_mixart*, %struct.snd_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

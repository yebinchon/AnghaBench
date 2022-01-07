; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sgio2audio = type { i32 }
%struct.snd_pcm = type { i32, %struct.snd_sgio2audio* }

@.str = private unnamed_addr constant [13 x i8] c"SGI O2 Audio\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SGI O2 DAC1\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_sgio2audio_playback1_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_sgio2audio_capture_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"SGI O2 DAC2\00", align 1
@snd_sgio2audio_playback2_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sgio2audio*)* @snd_sgio2audio_new_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_new_pcm(%struct.snd_sgio2audio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sgio2audio*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sgio2audio* %0, %struct.snd_sgio2audio** %3, align 8
  %6 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_pcm_new(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 1
  store %struct.snd_sgio2audio* %15, %struct.snd_sgio2audio** %17, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %23 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %24 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %22, i32 %23, i32* @snd_sgio2audio_playback1_ops)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @snd_sgio2audio_capture_ops)
  %28 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %29 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_pcm_new(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 0, %struct.snd_pcm** %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %14
  %37 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  store %struct.snd_sgio2audio* %37, %struct.snd_sgio2audio** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %45 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %46 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %44, i32 %45, i32* @snd_sgio2audio_playback2_ops)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %34, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

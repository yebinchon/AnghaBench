; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mixart_stream* }
%struct.mixart_stream = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"SNDRV_PCM_TRIGGER_START\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIXART_STREAM_STATUS_RUNNING = common dso_local global i8* null, align 8
@MIXART_STREAM_STATUS_OPEN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"SNDRV_PCM_TRIGGER_STOP\0A\00", align 1
@MIXART_STREAM_STATUS_PAUSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"SNDRV_PCM_PAUSE_PUSH\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SNDRV_PCM_PAUSE_RELEASE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_mixart_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mixart_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mixart_stream*, %struct.mixart_stream** %10, align 8
  store %struct.mixart_stream* %11, %struct.mixart_stream** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %75 [
    i32 129, label %13
    i32 128, label %32
    i32 131, label %51
    i32 130, label %63
  ]

13:                                               ; preds = %2
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %23 = call i32 @mixart_set_stream_state(%struct.mixart_stream* %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %13
  %29 = load i8*, i8** @MIXART_STREAM_STATUS_RUNNING, align 8
  %30 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %31 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %78

32:                                               ; preds = %2
  %33 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %34 = call i32 @mixart_set_stream_state(%struct.mixart_stream* %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %79

39:                                               ; preds = %32
  %40 = load i8*, i8** @MIXART_STREAM_STATUS_OPEN, align 8
  %41 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %42 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %78

51:                                               ; preds = %2
  %52 = load i8*, i8** @MIXART_STREAM_STATUS_PAUSE, align 8
  %53 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %54 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %78

63:                                               ; preds = %2
  %64 = load i8*, i8** @MIXART_STREAM_STATUS_RUNNING, align 8
  %65 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %66 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %78

75:                                               ; preds = %2
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %63, %51, %39, %28
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %75, %36, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mixart_set_stream_state(%struct.mixart_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

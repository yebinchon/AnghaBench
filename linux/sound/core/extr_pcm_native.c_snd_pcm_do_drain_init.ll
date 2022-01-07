; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_do_drain_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_do_drain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_6__*, %struct.snd_pcm_runtime* }
%struct.TYPE_6__ = type { {}* }
%struct.snd_pcm_runtime = type { %struct.TYPE_5__, %struct.snd_pcm_substream*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_DRAINING = common dso_local global i8* null, align 8
@SNDRV_PCM_STATE_SETUP = common dso_local global i8* null, align 8
@SNDRV_PCM_INFO_DRAIN_TRIGGER = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_do_drain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_do_drain_init(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 2
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %55 [
    i32 130, label %22
    i32 129, label %41
    i32 128, label %48
  ]

22:                                               ; preds = %16
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = call i32 @snd_pcm_playback_empty(%struct.snd_pcm_substream* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = load i8*, i8** @SNDRV_PCM_STATE_DRAINING, align 8
  %29 = call i32 @snd_pcm_do_start(%struct.snd_pcm_substream* %27, i8* %28)
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = load i8*, i8** @SNDRV_PCM_STATE_DRAINING, align 8
  %32 = call i32 @snd_pcm_post_start(%struct.snd_pcm_substream* %30, i8* %31)
  br label %40

33:                                               ; preds = %22
  %34 = load i8*, i8** @SNDRV_PCM_STATE_SETUP, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %26
  br label %56

41:                                               ; preds = %16
  %42 = load i8*, i8** @SNDRV_PCM_STATE_DRAINING, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  br label %56

48:                                               ; preds = %16
  %49 = load i8*, i8** @SNDRV_PCM_STATE_SETUP, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  br label %56

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55, %48, %41, %40
  br label %82

57:                                               ; preds = %2
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %81

64:                                               ; preds = %57
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %66 = call i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime* %65)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i8*, i8** @SNDRV_PCM_STATE_DRAINING, align 8
  br label %72

70:                                               ; preds = %64
  %71 = load i8*, i8** @SNDRV_PCM_STATE_SETUP, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i8* [ %69, %68 ], [ %71, %70 ]
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @snd_pcm_do_stop(%struct.snd_pcm_substream* %75, i32 %76)
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @snd_pcm_post_stop(%struct.snd_pcm_substream* %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %57
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8*, i8** @SNDRV_PCM_STATE_DRAINING, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %82
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 1
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %94, align 8
  %96 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %97 = icmp eq %struct.snd_pcm_substream* %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SNDRV_PCM_INFO_DRAIN_TRIGGER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = bitcast {}** %110 to i32 (%struct.snd_pcm_substream*, i32)**
  %112 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %111, align 8
  %113 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %114 = load i32, i32* @SNDRV_PCM_TRIGGER_DRAIN, align 4
  %115 = call i32 %112(%struct.snd_pcm_substream* %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %117

116:                                              ; preds = %98, %92, %82
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %106
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @snd_pcm_playback_empty(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_do_start(%struct.snd_pcm_substream*, i8*) #1

declare dso_local i32 @snd_pcm_post_start(%struct.snd_pcm_substream*, i8*) #1

declare dso_local i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_do_stop(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_post_stop(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

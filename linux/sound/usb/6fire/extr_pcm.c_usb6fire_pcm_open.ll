; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__ }
%struct.pcm_runtime = type { i64, i32, %struct.TYPE_5__*, %struct.pcm_substream, %struct.pcm_substream, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pcm_substream = type { i32, %struct.snd_pcm_substream* }

@EPIPE = common dso_local global i32 0, align 4
@pcm_hw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@rates = common dso_local global i32 0, align 4
@rates_alsaid = common dso_local global i8** null, align 8
@OUT_N_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@IN_N_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid stream type.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @usb6fire_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  %5 = alloca %struct.pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.pcm_runtime* %8, %struct.pcm_runtime** %4, align 8
  store %struct.pcm_substream* null, %struct.pcm_substream** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EPIPE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %111

19:                                               ; preds = %1
  %20 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = bitcast %struct.TYPE_6__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.TYPE_6__* @pcm_hw to i8*), i64 16, i1 false)
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %19
  %32 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @rates, align 4
  %36 = call i64 @ARRAY_SIZE(i32 %35)
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load i8**, i8*** @rates_alsaid, align 8
  %40 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  br label %48

48:                                               ; preds = %38, %31
  %49 = load i32, i32* @OUT_N_CHANNELS, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %54 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %53, i32 0, i32 4
  store %struct.pcm_substream* %54, %struct.pcm_substream** %5, align 8
  br label %86

55:                                               ; preds = %19
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %63 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @rates, align 4
  %66 = call i64 @ARRAY_SIZE(i32 %65)
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i8**, i8*** @rates_alsaid, align 8
  %70 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %71 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %68, %61
  %79 = load i32, i32* @IN_N_CHANNELS, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %83, i32 0, i32 3
  store %struct.pcm_substream* %84, %struct.pcm_substream** %5, align 8
  br label %85

85:                                               ; preds = %78, %55
  br label %86

86:                                               ; preds = %85, %48
  %87 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %88 = icmp ne %struct.pcm_substream* %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %91 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %94 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %111

102:                                              ; preds = %86
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %104 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %105 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %104, i32 0, i32 1
  store %struct.snd_pcm_substream* %103, %struct.snd_pcm_substream** %105, align 8
  %106 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %107 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %109 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %102, %89, %16
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_register_minor.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_register_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32, i8*, %struct.TYPE_6__, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@dsp_map = common dso_local global i32* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" (DUPLEX)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@adsp_map = common dso_local global i32* null, align 8
@SNDRV_OSS_INFO_DEV_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*)* @snd_pcm_oss_register_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_register_minor(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %5 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load i32*, i32** @dsp_map, align 8
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %1
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %23 = call i32 @register_oss_dsp(%struct.snd_pcm* %22, i32 0)
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %21
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %34 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %41, %32, %21
  %50 = phi i1 [ false, %32 ], [ false, %21 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %54 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %59)
  %61 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %62 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %67 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %49, %1
  %72 = load i32*, i32** @adsp_map, align 8
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %74 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %81 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %71
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %87 = call i32 @register_oss_dsp(%struct.snd_pcm* %86, i32 1)
  %88 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %89 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %94 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, 2
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %85, %71
  %99 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %100 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %106 = call i32 @snd_pcm_oss_proc_init(%struct.snd_pcm* %105)
  br label %107

107:                                              ; preds = %104, %98
  ret i32 0
}

declare dso_local i32 @register_oss_dsp(%struct.snd_pcm*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snd_pcm_oss_proc_init(%struct.snd_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

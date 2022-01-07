; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_snd_vx_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_snd_vx_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32, %struct.snd_pcm**, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.snd_pcm = type { i32, i32, i64, i32, %struct.vx_core* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"VX PCM\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@vx_pcm_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@vx_pcm_capture_ops = common dso_local global i32 0, align 4
@snd_vx_pcm_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_vx_pcm_new(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %9 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %10 = call i32 @vx_init_audio_io(%struct.vx_core* %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %103

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %99, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %18 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %102

23:                                               ; preds = %15
  %24 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %25 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul i32 %27, 2
  %29 = icmp ugt i32 %26, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %7, align 4
  %32 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %33 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul i32 %35, 2
  %37 = icmp ugt i32 %34, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %102

46:                                               ; preds = %42, %23
  %47 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %48 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @snd_pcm_new(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, %struct.snd_pcm** %4)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %103

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %63 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %64 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %62, i32 %63, i32* @vx_pcm_playback_ops)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %70 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %71 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %69, i32 %70, i32* @vx_pcm_capture_ops)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %74 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %75 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %74, i32 0, i32 4
  store %struct.vx_core* %73, %struct.vx_core** %75, align 8
  %76 = load i32, i32* @snd_vx_pcm_free, align 4
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %80 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %82 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %87 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strcpy(i32 %85, i32 %90)
  %92 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %93 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %94 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %93, i32 0, i32 2
  %95 = load %struct.snd_pcm**, %struct.snd_pcm*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %95, i64 %97
  store %struct.snd_pcm* %92, %struct.snd_pcm** %98, align 8
  br label %99

99:                                               ; preds = %72
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %15

102:                                              ; preds = %45, %15
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %56, %12
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @vx_init_audio_io(%struct.vx_core*) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_4__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

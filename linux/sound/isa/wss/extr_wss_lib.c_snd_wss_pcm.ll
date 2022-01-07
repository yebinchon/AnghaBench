; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i64, i32, i32, %struct.snd_pcm*, %struct.TYPE_2__*, i64 }
%struct.snd_pcm = type { i32, i32, %struct.snd_wss* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"WSS\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_wss_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_wss_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@WSS_HW_INTERWAVE = common dso_local global i64 0, align 8
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_pcm(%struct.snd_wss* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_wss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %9 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(%struct.TYPE_2__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %18, i32 %19, i32* @snd_wss_playback_ops)
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, i32* @snd_wss_capture_ops)
  %24 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 2
  store %struct.snd_wss* %24, %struct.snd_wss** %26, align 8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %30 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %17
  %40 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %41 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WSS_HW_INTERWAVE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %48 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %56 = call i32 @snd_wss_chip_id(%struct.snd_wss* %55)
  %57 = call i32 @strcpy(i32 %54, i32 %56)
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %59 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %60 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %61 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %66 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %74, label %69

69:                                               ; preds = %51
  %70 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %71 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 3
  br label %74

74:                                               ; preds = %69, %51
  %75 = phi i1 [ true, %51 ], [ %73, %69 ]
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 131072, i32 65536
  %78 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %58, i32 %59, i32 %64, i32 65536, i32 %77)
  %79 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %80 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %81 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %80, i32 0, i32 3
  store %struct.snd_pcm* %79, %struct.snd_pcm** %81, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %74, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_wss_chip_id(%struct.snd_wss*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

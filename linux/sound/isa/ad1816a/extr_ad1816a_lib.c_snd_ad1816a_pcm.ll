; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32, i32, %struct.snd_pcm*, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i32, %struct.snd_ad1816a* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"AD1816A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_ad1816a_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_ad1816a_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ad1816a_pcm(%struct.snd_ad1816a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ad1816a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm*, align 8
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(%struct.TYPE_2__* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %7)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %18 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %19 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %17, i32 %18, i32* @snd_ad1816a_playback_ops)
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %21 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %22 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %20, i32 %21, i32* @snd_ad1816a_capture_ops)
  %23 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 2
  store %struct.snd_ad1816a* %23, %struct.snd_ad1816a** %25, align 8
  %26 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  br label %36

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %44 = call i32 @snd_ad1816a_chip_id(%struct.snd_ad1816a* %43)
  %45 = call i32 @strcpy(i32 %42, i32 %44)
  %46 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %47 = call i32 @snd_ad1816a_init(%struct.snd_ad1816a* %46)
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %49 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %50 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %64, label %59

59:                                               ; preds = %36
  %60 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 3
  br label %64

64:                                               ; preds = %59, %36
  %65 = phi i1 [ true, %36 ], [ %63, %59 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 131072, i32 65536
  %68 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %48, i32 %49, i32 %54, i32 65536, i32 %67)
  %69 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %70 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %70, i32 0, i32 2
  store %struct.snd_pcm* %69, %struct.snd_pcm** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_ad1816a_chip_id(%struct.snd_ad1816a*) #1

declare dso_local i32 @snd_ad1816a_init(%struct.snd_ad1816a*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

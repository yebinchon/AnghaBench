; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, %struct.snd_pcm*, %struct.TYPE_8__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_pcm = type { i32, i32, %struct.snd_pmac* }
%struct.TYPE_8__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_pmac_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_pmac_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pmac_pcm_new(%struct.snd_pmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %13, i32 0, i32 7
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %16, i32 0, i32 7
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @snd_pcm_new(%struct.TYPE_8__* %15, i32 %20, i32 0, i32 1, i32 %21, %struct.snd_pcm** %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %103

27:                                               ; preds = %12
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @snd_pmac_playback_ops)
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %37 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i32 %37, i32* @snd_pmac_capture_ops)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 2
  store %struct.snd_pmac* %40, %struct.snd_pmac** %42, align 8
  %43 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %47 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %49, i32 0, i32 7
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcpy(i32 %48, i32 %53)
  %55 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %56 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %56, i32 0, i32 6
  store %struct.snd_pcm* %55, %struct.snd_pcm** %57, align 8
  %58 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_BE, align 4
  %59 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %60 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %62 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %39
  %66 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %67 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %68 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %39
  %72 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %73 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %76 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %79 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %82 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %85 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %88 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %91 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %94 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %97 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %98 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %99 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %96, i32 %97, i32* %101, i32 65536, i32 65536)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %71, %25
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

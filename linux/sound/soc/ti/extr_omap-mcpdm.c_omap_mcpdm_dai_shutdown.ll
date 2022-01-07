; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_dai_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_dai_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_mcpdm = type { i32, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @omap_mcpdm_dai_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcpdm_dai_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.omap_mcpdm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.omap_mcpdm* %10, %struct.omap_mcpdm** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %34 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %31
  %41 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %42 = call i64 @omap_mcpdm_active(%struct.omap_mcpdm* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %46 = call i32 @omap_mcpdm_stop(%struct.omap_mcpdm* %45)
  %47 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %48 = call i32 @omap_mcpdm_close_streams(%struct.omap_mcpdm* %47)
  %49 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %50 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %55 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %44, %40
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %62 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %71 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %70, i32 0, i32 2
  %72 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %73 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @pm_qos_update_request(i32* %71, i64 %78)
  br label %94

80:                                               ; preds = %60
  %81 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %82 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %91 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %90, i32 0, i32 2
  %92 = call i32 @pm_qos_remove_request(i32* %91)
  br label %93

93:                                               ; preds = %89, %80
  br label %94

94:                                               ; preds = %93, %69
  %95 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %96 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 0, i64* %100, align 8
  %101 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %102 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  ret void
}

declare dso_local %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @omap_mcpdm_active(%struct.omap_mcpdm*) #1

declare dso_local i32 @omap_mcpdm_stop(%struct.omap_mcpdm*) #1

declare dso_local i32 @omap_mcpdm_close_streams(%struct.omap_mcpdm*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i64) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

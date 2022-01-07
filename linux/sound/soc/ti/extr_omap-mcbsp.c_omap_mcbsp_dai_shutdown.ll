; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp = type { i64, i64*, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @omap_mcbsp_dai_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_dai_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.omap_mcbsp* %10, %struct.omap_mcbsp** %5, align 8
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
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %34 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %43 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %42, i32 0, i32 2
  %44 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %45 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pm_qos_update_request(i32* %43, i64 %50)
  br label %66

52:                                               ; preds = %31
  %53 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %54 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %63 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %62, i32 0, i32 2
  %64 = call i32 @pm_qos_remove_request(i32* %63)
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %68 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %66
  %78 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %79 = call i32 @omap_mcbsp_free(%struct.omap_mcbsp* %78)
  %80 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %81 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %66
  ret void
}

declare dso_local %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i64) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @omap_mcbsp_free(%struct.omap_mcbsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

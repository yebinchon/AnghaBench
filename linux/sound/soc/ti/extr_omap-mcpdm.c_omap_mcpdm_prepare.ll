; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_mcpdm = type { i32*, i32, %struct.pm_qos_request }
%struct.pm_qos_request = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @omap_mcpdm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcpdm_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.omap_mcpdm*, align 8
  %6 = alloca %struct.pm_qos_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = call %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.omap_mcpdm* %12, %struct.omap_mcpdm** %5, align 8
  %13 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %14 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %13, i32 0, i32 2
  store %struct.pm_qos_request* %14, %struct.pm_qos_request** %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %9, align 4
  %37 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %38 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %48 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46, %35
  %57 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %58 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %56, %46
  %65 = load %struct.pm_qos_request*, %struct.pm_qos_request** %6, align 8
  %66 = call i64 @pm_qos_request_active(%struct.pm_qos_request* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.pm_qos_request*, %struct.pm_qos_request** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @pm_qos_update_request(%struct.pm_qos_request* %69, i32 %70)
  br label %81

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.pm_qos_request*, %struct.pm_qos_request** %6, align 8
  %77 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @pm_qos_add_request(%struct.pm_qos_request* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %83 = call i32 @omap_mcpdm_active(%struct.omap_mcpdm* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %87 = call i32 @omap_mcpdm_start(%struct.omap_mcpdm* %86)
  %88 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %89 = call i32 @omap_mcpdm_reg_dump(%struct.omap_mcpdm* %88)
  br label %105

90:                                               ; preds = %81
  %91 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %92 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %97 = call i32 @omap_mcpdm_stop(%struct.omap_mcpdm* %96)
  %98 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %99 = call i32 @omap_mcpdm_start(%struct.omap_mcpdm* %98)
  %100 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %101 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %100, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %5, align 8
  %103 = call i32 @omap_mcpdm_reg_dump(%struct.omap_mcpdm* %102)
  br label %104

104:                                              ; preds = %95, %90
  br label %105

105:                                              ; preds = %104, %85
  ret i32 0
}

declare dso_local %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @pm_qos_request_active(%struct.pm_qos_request*) #1

declare dso_local i32 @pm_qos_update_request(%struct.pm_qos_request*, i32) #1

declare dso_local i32 @pm_qos_add_request(%struct.pm_qos_request*, i32, i32) #1

declare dso_local i32 @omap_mcpdm_active(%struct.omap_mcpdm*) #1

declare dso_local i32 @omap_mcpdm_start(%struct.omap_mcpdm*) #1

declare dso_local i32 @omap_mcpdm_reg_dump(%struct.omap_mcpdm*) #1

declare dso_local i32 @omap_mcpdm_stop(%struct.omap_mcpdm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

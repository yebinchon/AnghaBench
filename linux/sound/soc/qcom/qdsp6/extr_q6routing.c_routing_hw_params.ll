; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6routing.c_routing_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6routing.c_routing_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.msm_routing_data = type { i32, %struct.session_data* }
%struct.session_data = type { i32, i32, i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ADM_PATH_PLAYBACK = common dso_local global i32 0, align 4
@ADM_PATH_LIVE_REC = common dso_local global i32 0, align 4
@AFE_MAX_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @routing_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @routing_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.msm_routing_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.session_data*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = load i32, i32* @DRV_NAME, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %15, i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %7, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.msm_routing_data* @dev_get_drvdata(i32 %20)
  store %struct.msm_routing_data* %21, %struct.msm_routing_data** %8, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @ADM_PATH_PLAYBACK, align 4
  store i32 %33, i32* %11, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @ADM_PATH_LIVE_REC, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @AFE_MAX_PORTS, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.msm_routing_data*, %struct.msm_routing_data** %8, align 8
  %45 = getelementptr inbounds %struct.msm_routing_data, %struct.msm_routing_data* %44, i32 0, i32 1
  %46 = load %struct.session_data*, %struct.session_data** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.session_data, %struct.session_data* %46, i64 %48
  store %struct.session_data* %49, %struct.session_data** %10, align 8
  %50 = load %struct.msm_routing_data*, %struct.msm_routing_data** %8, align 8
  %51 = getelementptr inbounds %struct.msm_routing_data, %struct.msm_routing_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.session_data*, %struct.session_data** %10, align 8
  %55 = getelementptr inbounds %struct.session_data, %struct.session_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %57 = call i32 @params_rate(%struct.snd_pcm_hw_params* %56)
  %58 = load %struct.session_data*, %struct.session_data** %10, align 8
  %59 = getelementptr inbounds %struct.session_data, %struct.session_data* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %61 = call i32 @params_channels(%struct.snd_pcm_hw_params* %60)
  %62 = load %struct.session_data*, %struct.session_data** %10, align 8
  %63 = getelementptr inbounds %struct.session_data, %struct.session_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %65 = call i32 @params_format(%struct.snd_pcm_hw_params* %64)
  switch i32 %65, label %72 [
    i32 129, label %66
    i32 128, label %69
  ]

66:                                               ; preds = %43
  %67 = load %struct.session_data*, %struct.session_data** %10, align 8
  %68 = getelementptr inbounds %struct.session_data, %struct.session_data* %67, i32 0, i32 1
  store i32 16, i32* %68, align 4
  br label %73

69:                                               ; preds = %43
  %70 = load %struct.session_data*, %struct.session_data** %10, align 8
  %71 = getelementptr inbounds %struct.session_data, %struct.session_data* %70, i32 0, i32 1
  store i32 24, i32* %71, align 4
  br label %73

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %72, %69, %66
  %74 = load %struct.msm_routing_data*, %struct.msm_routing_data** %8, align 8
  %75 = getelementptr inbounds %struct.msm_routing_data, %struct.msm_routing_data* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %40
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.msm_routing_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

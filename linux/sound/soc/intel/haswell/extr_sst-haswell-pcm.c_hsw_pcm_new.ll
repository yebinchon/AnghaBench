; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__*, %struct.snd_pcm* }
%struct.TYPE_7__ = type { i64 }
%struct.snd_pcm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.sst_pdata = type { %struct.device* }
%struct.device = type { i32 }
%struct.hsw_priv_data = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.snd_pcm* }

@DRV_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@hsw_pcm_hardware = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @hsw_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.hsw_priv_data*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  store %struct.snd_pcm* %10, %struct.snd_pcm** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %12 = load i32, i32* @DRV_NAME, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %11, i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %4, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sst_pdata* @dev_get_platdata(i32 %16)
  store %struct.sst_pdata* %17, %struct.sst_pdata** %5, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.hsw_priv_data* @dev_get_drvdata(i32 %20)
  store %struct.hsw_priv_data* %21, %struct.hsw_priv_data** %6, align 8
  %22 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %23 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %1
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33, %1
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %44 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hsw_pcm_hardware, i32 0, i32 0), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hsw_pcm_hardware, i32 0, i32 0), align 4
  %48 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %43, i32 %44, %struct.device* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %49
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %60 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %61 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %64 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store %struct.snd_pcm* %59, %struct.snd_pcm** %72, align 8
  br label %73

73:                                               ; preds = %58, %49
  %74 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %75 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %73
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %84 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %85 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %85, align 8
  %87 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %88 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %86, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store %struct.snd_pcm* %83, %struct.snd_pcm** %96, align 8
  br label %97

97:                                               ; preds = %82, %73
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.hsw_priv_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, %struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

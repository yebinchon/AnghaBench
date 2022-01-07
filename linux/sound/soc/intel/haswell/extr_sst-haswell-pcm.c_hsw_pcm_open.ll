; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.hsw_priv_data = type { i32, %struct.hsw_pcm_data**, %struct.sst_hsw* }
%struct.hsw_pcm_data = type { i32, i32*, %struct.snd_pcm_substream* }
%struct.sst_hsw = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@mod_map = common dso_local global %struct.TYPE_4__* null, align 8
@hsw_pcm_hardware = common dso_local global i32 0, align 4
@hsw_notify_pointer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error: failed to create stream\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @hsw_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.hsw_priv_data*, align 8
  %7 = alloca %struct.hsw_pcm_data*, align 8
  %8 = alloca %struct.sst_hsw*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %5, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.hsw_priv_data* %17, %struct.hsw_priv_data** %6, align 8
  %18 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %19 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %18, i32 0, i32 2
  %20 = load %struct.sst_hsw*, %struct.sst_hsw** %19, align 8
  store %struct.sst_hsw* %20, %struct.sst_hsw** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mod_map, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %31 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %30, i32 0, i32 1
  %32 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %32, i64 %34
  %36 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %35, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %36, i64 %39
  store %struct.hsw_pcm_data* %40, %struct.hsw_pcm_data** %7, align 8
  %41 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %42 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %45 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pm_runtime_get_sync(i32 %46)
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %50 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %49, i32 0, i32 2
  store %struct.snd_pcm_substream* %48, %struct.snd_pcm_substream** %50, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %51, i32* @hsw_pcm_hardware)
  %53 = load %struct.sst_hsw*, %struct.sst_hsw** %8, align 8
  %54 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @hsw_notify_pointer, align 4
  %60 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %61 = call i32* @sst_hsw_stream_new(%struct.sst_hsw* %53, i64 %58, i32 %59, %struct.hsw_pcm_data* %60)
  %62 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %63 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %65 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %1
  %69 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %70 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %74 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pm_runtime_mark_last_busy(i32 %75)
  %77 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %78 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pm_runtime_put_autosuspend(i32 %79)
  %81 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %82 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %90

86:                                               ; preds = %1
  %87 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %7, align 8
  %88 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %68
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32* @sst_hsw_stream_new(%struct.sst_hsw*, i64, i32, %struct.hsw_pcm_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

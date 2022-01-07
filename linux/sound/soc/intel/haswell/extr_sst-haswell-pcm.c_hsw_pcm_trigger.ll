; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.hsw_priv_data = type { %struct.hsw_pcm_data**, %struct.sst_hsw* }
%struct.hsw_pcm_data = type { %struct.sst_hsw_stream* }
%struct.sst_hsw_stream = type { i32 }
%struct.sst_hsw = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@mod_map = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @hsw_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.hsw_priv_data*, align 8
  %8 = alloca %struct.hsw_pcm_data*, align 8
  %9 = alloca %struct.sst_hsw_stream*, align 8
  %10 = alloca %struct.sst_hsw*, align 8
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %5, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %18 = load i32, i32* @DRV_NAME, align 4
  %19 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %17, i32 %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.hsw_priv_data* %21, %struct.hsw_priv_data** %7, align 8
  %22 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %7, align 8
  %23 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %22, i32 0, i32 1
  %24 = load %struct.sst_hsw*, %struct.sst_hsw** %23, align 8
  store %struct.sst_hsw* %24, %struct.sst_hsw** %10, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 1
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %11, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mod_map, align 8
  %29 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %7, align 8
  %38 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %37, i32 0, i32 0
  %39 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %39, i64 %41
  %43 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %42, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %43, i64 %46
  store %struct.hsw_pcm_data* %47, %struct.hsw_pcm_data** %8, align 8
  %48 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %8, align 8
  %49 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %48, i32 0, i32 0
  %50 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %49, align 8
  store %struct.sst_hsw_stream* %50, %struct.sst_hsw_stream** %9, align 8
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %89 [
    i32 130, label %52
    i32 131, label %52
    i32 132, label %52
    i32 129, label %61
    i32 128, label %61
    i32 133, label %61
    i32 134, label %70
  ]

52:                                               ; preds = %2, %2, %2
  %53 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %54 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %9, align 8
  %55 = call i32 @sst_hsw_stream_set_silence_start(%struct.sst_hsw* %53, %struct.sst_hsw_stream* %54, i32 0)
  %56 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %57 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %8, align 8
  %58 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %57, i32 0, i32 0
  %59 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %58, align 8
  %60 = call i32 @sst_hsw_stream_resume(%struct.sst_hsw* %56, %struct.sst_hsw_stream* %59, i32 0)
  br label %90

61:                                               ; preds = %2, %2, %2
  %62 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %63 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %9, align 8
  %64 = call i32 @sst_hsw_stream_set_silence_start(%struct.sst_hsw* %62, %struct.sst_hsw_stream* %63, i32 0)
  %65 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %66 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %8, align 8
  %67 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %66, i32 0, i32 0
  %68 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %67, align 8
  %69 = call i32 @sst_hsw_stream_pause(%struct.sst_hsw* %65, %struct.sst_hsw_stream* %68, i32 0)
  br label %90

70:                                               ; preds = %2
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %81 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %8, align 8
  %82 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %81, i32 0, i32 0
  %83 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @sst_hsw_stream_set_old_position(%struct.sst_hsw* %80, %struct.sst_hsw_stream* %83, i32 %84)
  %86 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %87 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %9, align 8
  %88 = call i32 @sst_hsw_stream_set_silence_start(%struct.sst_hsw* %86, %struct.sst_hsw_stream* %87, i32 1)
  br label %90

89:                                               ; preds = %2
  br label %90

90:                                               ; preds = %89, %70, %61, %52
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sst_hsw_stream_set_silence_start(%struct.sst_hsw*, %struct.sst_hsw_stream*, i32) #1

declare dso_local i32 @sst_hsw_stream_resume(%struct.sst_hsw*, %struct.sst_hsw_stream*, i32) #1

declare dso_local i32 @sst_hsw_stream_pause(%struct.sst_hsw*, %struct.sst_hsw_stream*, i32) #1

declare dso_local i32 @sst_hsw_stream_set_old_position(%struct.sst_hsw*, %struct.sst_hsw_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

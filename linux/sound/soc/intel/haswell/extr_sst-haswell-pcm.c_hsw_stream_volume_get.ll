; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_stream_volume_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_stream_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }
%struct.snd_soc_component = type { i32 }
%struct.soc_mixer_control = type { i64 }
%struct.hsw_priv_data = type { i32, %struct.hsw_pcm_data**, %struct.sst_hsw* }
%struct.hsw_pcm_data = type { i32, i32, i32* }
%struct.sst_hsw = type { i32 }

@mod_map = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hsw_stream_volume_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_stream_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca %struct.hsw_priv_data*, align 8
  %9 = alloca %struct.hsw_pcm_data*, align 8
  %10 = alloca %struct.sst_hsw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %19, %struct.soc_mixer_control** %7, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.hsw_priv_data* %21, %struct.hsw_priv_data** %8, align 8
  %22 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %23 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %22, i32 0, i32 2
  %24 = load %struct.sst_hsw*, %struct.sst_hsw** %23, align 8
  store %struct.sst_hsw* %24, %struct.sst_hsw** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mod_map, align 8
  %26 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %27 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mod_map, align 8
  %33 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %34 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %40 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %39, i32 0, i32 1
  %41 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %41, i64 %43
  %45 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %45, i64 %47
  store %struct.hsw_pcm_data* %48, %struct.hsw_pcm_data** %9, align 8
  %49 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %50 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %53 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pm_runtime_get_sync(i32 %54)
  %56 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %57 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %96, label %60

60:                                               ; preds = %2
  %61 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %62 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @hsw_ipc_to_mixer(i32 %65)
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %66, i8** %72, align 8
  %73 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %74 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @hsw_ipc_to_mixer(i32 %77)
  %79 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %80 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* %78, i8** %84, align 8
  %85 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %86 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pm_runtime_mark_last_busy(i32 %87)
  %89 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %90 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pm_runtime_put_autosuspend(i32 %91)
  %93 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %94 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %3, align 4
  br label %134

96:                                               ; preds = %2
  %97 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %98 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %99 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sst_hsw_stream_get_volume(%struct.sst_hsw* %97, i32 %100, i32 0, i32 0, i32* %11)
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @hsw_ipc_to_mixer(i32 %102)
  %104 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %105 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  store i8* %103, i8** %109, align 8
  %110 = load %struct.sst_hsw*, %struct.sst_hsw** %10, align 8
  %111 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %112 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @sst_hsw_stream_get_volume(%struct.sst_hsw* %110, i32 %113, i32 0, i32 1, i32* %11)
  %115 = load i32, i32* %11, align 4
  %116 = call i8* @hsw_ipc_to_mixer(i32 %115)
  %117 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %118 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  store i8* %116, i8** %122, align 8
  %123 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %124 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pm_runtime_mark_last_busy(i32 %125)
  %127 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %8, align 8
  %128 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pm_runtime_put_autosuspend(i32 %129)
  %131 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %9, align 8
  %132 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %96, %60
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i8* @hsw_ipc_to_mixer(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sst_hsw_stream_get_volume(%struct.sst_hsw*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

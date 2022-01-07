; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_pipe_module_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_pipe_module_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.sst_ids*, i32 }
%struct.sst_ids = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*)* @sst_send_pipe_module_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_send_pipe_module_params(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.sst_data*, align 8
  %7 = alloca %struct.sst_ids*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %4, align 8
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.sst_data* %13, %struct.sst_data** %6, align 8
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 1
  %16 = load %struct.sst_ids*, %struct.sst_ids** %15, align 8
  store %struct.sst_ids* %16, %struct.sst_ids** %7, align 8
  %17 = load %struct.sst_data*, %struct.sst_data** %6, align 8
  %18 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.sst_data*, %struct.sst_data** %6, align 8
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sst_ids*, %struct.sst_ids** %7, align 8
  %25 = call i32 @sst_find_and_send_pipe_algo(%struct.sst_data* %20, i32 %23, %struct.sst_ids* %24)
  %26 = load %struct.sst_ids*, %struct.sst_ids** %7, align 8
  %27 = load %struct.sst_data*, %struct.sst_data** %6, align 8
  %28 = call i32 @sst_set_pipe_gain(%struct.sst_ids* %26, %struct.sst_data* %27, i32 0)
  %29 = load %struct.sst_data*, %struct.sst_data** %6, align 8
  %30 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_find_and_send_pipe_algo(%struct.sst_data*, i32, %struct.sst_ids*) #1

declare dso_local i32 @sst_set_pipe_gain(%struct.sst_ids*, %struct.sst_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

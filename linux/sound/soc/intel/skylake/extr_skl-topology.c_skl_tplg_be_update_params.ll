; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_be_update_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_be_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget* }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.skl_pipe_params = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_tplg_be_update_params(%struct.snd_soc_dai* %0, %struct.skl_pipe_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.skl_pipe_params*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.skl_pipe_params* %1, %struct.skl_pipe_params** %5, align 8
  %7 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %8 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %14, align 8
  store %struct.snd_soc_dapm_widget* %15, %struct.snd_soc_dapm_widget** %6, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %18 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %19 = call i32 @skl_tplg_be_set_src_pipe_params(%struct.snd_soc_dai* %16, %struct.snd_soc_dapm_widget* %17, %struct.skl_pipe_params* %18)
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %22, align 8
  store %struct.snd_soc_dapm_widget* %23, %struct.snd_soc_dapm_widget** %6, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %26 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %5, align 8
  %27 = call i32 @skl_tplg_be_set_sink_pipe_params(%struct.snd_soc_dai* %24, %struct.snd_soc_dapm_widget* %25, %struct.skl_pipe_params* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @skl_tplg_be_set_src_pipe_params(%struct.snd_soc_dai*, %struct.snd_soc_dapm_widget*, %struct.skl_pipe_params*) #1

declare dso_local i32 @skl_tplg_be_set_sink_pipe_params(%struct.snd_soc_dai*, %struct.snd_soc_dapm_widget*, %struct.skl_pipe_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

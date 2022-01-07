; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_be_get_cpr_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_be_get_cpr_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_cfg = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget* }
%struct.snd_soc_dapm_widget = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.skl_module_cfg* @skl_tplg_be_get_cpr_module(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %12, align 8
  store %struct.snd_soc_dapm_widget* %13, %struct.snd_soc_dapm_widget** %5, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = call %struct.skl_module_cfg* @skl_get_mconfig_pb_cpr(%struct.snd_soc_dai* %14, %struct.snd_soc_dapm_widget* %15)
  store %struct.skl_module_cfg* %16, %struct.skl_module_cfg** %6, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %19, align 8
  store %struct.snd_soc_dapm_widget* %20, %struct.snd_soc_dapm_widget** %5, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %23 = call %struct.skl_module_cfg* @skl_get_mconfig_cap_cpr(%struct.snd_soc_dai* %21, %struct.snd_soc_dapm_widget* %22)
  store %struct.skl_module_cfg* %23, %struct.skl_module_cfg** %6, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  ret %struct.skl_module_cfg* %25
}

declare dso_local %struct.skl_module_cfg* @skl_get_mconfig_pb_cpr(%struct.snd_soc_dai*, %struct.snd_soc_dapm_widget*) #1

declare dso_local %struct.skl_module_cfg* @skl_get_mconfig_cap_cpr(%struct.snd_soc_dai*, %struct.snd_soc_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

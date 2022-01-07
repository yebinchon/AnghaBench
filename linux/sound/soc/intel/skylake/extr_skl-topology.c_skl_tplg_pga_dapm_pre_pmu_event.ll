; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_pga_dapm_pre_pmu_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_pga_dapm_pre_pmu_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.skl_module_cfg* }
%struct.skl_module_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.skl_dev = type { i32 }

@SKL_PIPE_CONN_TYPE_FE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.skl_dev*)* @skl_tplg_pga_dapm_pre_pmu_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_pga_dapm_pre_pmu_event(%struct.snd_soc_dapm_widget* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  store %struct.skl_module_cfg* %10, %struct.skl_module_cfg** %6, align 8
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %15 = call i32 @skl_tplg_bind_sinks(%struct.snd_soc_dapm_widget* %11, %struct.skl_dev* %12, %struct.snd_soc_dapm_widget* %13, %struct.skl_module_cfg* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SKL_PIPE_CONN_TYPE_FE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %30 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %31 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @skl_run_pipe(%struct.skl_dev* %29, %struct.TYPE_2__* %32)
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @skl_tplg_bind_sinks(%struct.snd_soc_dapm_widget*, %struct.skl_dev*, %struct.snd_soc_dapm_widget*, %struct.skl_module_cfg*) #1

declare dso_local i32 @skl_run_pipe(%struct.skl_dev*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_mixer_dapm_post_pmu_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_mixer_dapm_post_pmu_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.skl_module_cfg* }
%struct.skl_module_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.skl_dev = type { i32 }

@SKL_PIPE_STARTED = common dso_local global i64 0, align 8
@SKL_PIPE_CONN_TYPE_FE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.skl_dev*)* @skl_tplg_mixer_dapm_post_pmu_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_mixer_dapm_post_pmu_event(%struct.snd_soc_dapm_widget* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  %8 = alloca %struct.snd_soc_dapm_widget*, align 8
  %9 = alloca %struct.skl_module_cfg*, align 8
  %10 = alloca %struct.skl_module_cfg*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %12, %struct.snd_soc_dapm_widget** %8, align 8
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %14, align 8
  store %struct.skl_module_cfg* %15, %struct.skl_module_cfg** %10, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %18 = call %struct.snd_soc_dapm_widget* @skl_get_src_dsp_widget(%struct.snd_soc_dapm_widget* %16, %struct.skl_dev* %17)
  store %struct.snd_soc_dapm_widget* %18, %struct.snd_soc_dapm_widget** %7, align 8
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %20 = icmp ne %struct.snd_soc_dapm_widget* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 0
  %24 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %23, align 8
  store %struct.skl_module_cfg* %24, %struct.skl_module_cfg** %9, align 8
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %26, align 8
  store %struct.skl_module_cfg* %27, %struct.skl_module_cfg** %10, align 8
  store i32 1, i32* %11, align 4
  %28 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %29 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SKL_PIPE_STARTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %42 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %43 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %44 = call i32 @skl_bind_modules(%struct.skl_dev* %41, %struct.skl_module_cfg* %42, %struct.skl_module_cfg* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %40
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %51 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %52 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %53 = call i32 @skl_tplg_set_module_bind_params(%struct.snd_soc_dapm_widget* %50, %struct.skl_module_cfg* %51, %struct.skl_dev* %52)
  %54 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %55 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %56 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %57 = call i32 @skl_tplg_set_module_bind_params(%struct.snd_soc_dapm_widget* %54, %struct.skl_module_cfg* %55, %struct.skl_dev* %56)
  %58 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %59 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SKL_PIPE_CONN_TYPE_FE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %67 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  %68 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @skl_run_pipe(%struct.skl_dev* %66, %struct.TYPE_2__* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %65, %49
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %47
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.snd_soc_dapm_widget* @skl_get_src_dsp_widget(%struct.snd_soc_dapm_widget*, %struct.skl_dev*) #1

declare dso_local i32 @skl_bind_modules(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_module_cfg*) #1

declare dso_local i32 @skl_tplg_set_module_bind_params(%struct.snd_soc_dapm_widget*, %struct.skl_module_cfg*, %struct.skl_dev*) #1

declare dso_local i32 @skl_run_pipe(%struct.skl_dev*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

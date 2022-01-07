; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_module_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_module_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.skl_module_cfg* }
%struct.skl_module_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.skl_pipe_params* }
%struct.skl_pipe_params = type { i32 }
%struct.skl_dev = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Mconfig for widget=%s BEFORE updation\0A\00", align 1
@SKL_PIPE_CONN_TYPE_FE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Mconfig for widget=%s AFTER updation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_widget*, %struct.skl_dev*)* @skl_tplg_update_module_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tplg_update_module_params(%struct.snd_soc_dapm_widget* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_pipe_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %4, align 8
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  %11 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %10, align 8
  store %struct.skl_module_cfg* %11, %struct.skl_module_cfg** %5, align 8
  %12 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %15, align 8
  store %struct.skl_pipe_params* %16, %struct.skl_pipe_params** %6, align 8
  %17 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %29 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %36 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %37 = call i32 @skl_dump_mconfig(%struct.skl_dev* %35, %struct.skl_module_cfg* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SKL_PIPE_CONN_TYPE_FE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %43

42:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %45 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @skl_tplg_update_params_fixup(%struct.skl_module_cfg* %44, %struct.skl_pipe_params* %45, i32 %46)
  %48 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %49 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %50 = call i32 @skl_tplg_update_buffer_size(%struct.skl_dev* %48, %struct.skl_module_cfg* %49)
  %51 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %52 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %59 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %60 = call i32 @skl_dump_mconfig(%struct.skl_dev* %58, %struct.skl_module_cfg* %59)
  br label %61

61:                                               ; preds = %43, %26
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @skl_dump_mconfig(%struct.skl_dev*, %struct.skl_module_cfg*) #1

declare dso_local i32 @skl_tplg_update_params_fixup(%struct.skl_module_cfg*, %struct.skl_pipe_params*, i32) #1

declare dso_local i32 @skl_tplg_update_buffer_size(%struct.skl_dev*, %struct.skl_module_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

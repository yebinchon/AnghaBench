; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_load_pipeline_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_load_pipeline_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32 }
%struct.sof_ipc_pipe_new = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sof_ipc_comp_reply = type { i32, i32, %struct.TYPE_2__ }
%struct.sof_ipc_pm_core_config = type { i32, i32, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [34 x i8] c"error: load pipeline ipc failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"error: powering up pipeline schedule core %d\0A\00", align 1
@SOF_IPC_GLB_PM_MSG = common dso_local global i32 0, align 4
@SOF_IPC_PM_CORE_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error: core enable ipc failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sof_load_pipeline_ipc(%struct.snd_sof_dev* %0, %struct.sof_ipc_pipe_new* %1, %struct.sof_ipc_comp_reply* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.sof_ipc_pipe_new*, align 8
  %7 = alloca %struct.sof_ipc_comp_reply*, align 8
  %8 = alloca %struct.sof_ipc_pm_core_config, align 4
  %9 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store %struct.sof_ipc_pipe_new* %1, %struct.sof_ipc_pipe_new** %6, align 8
  store %struct.sof_ipc_comp_reply* %2, %struct.sof_ipc_comp_reply** %7, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %11 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %6, align 8
  %14 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %6, align 8
  %18 = bitcast %struct.sof_ipc_pipe_new* %17 to %struct.sof_ipc_pm_core_config*
  %19 = load %struct.sof_ipc_comp_reply*, %struct.sof_ipc_comp_reply** %7, align 8
  %20 = bitcast %struct.sof_ipc_comp_reply* %19 to %struct.sof_ipc_pm_core_config*
  %21 = call i32 @sof_ipc_tx_message(i32 %12, i32 %16, %struct.sof_ipc_pm_core_config* %18, i32 16, %struct.sof_ipc_pm_core_config* %20, i32 16)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %26 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %85

30:                                               ; preds = %3
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %32 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %6, align 8
  %33 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = call i32 @snd_sof_dsp_core_power_up(%struct.snd_sof_dev* %31, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %41 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %6, align 8
  %44 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %85

48:                                               ; preds = %30
  %49 = load %struct.sof_ipc_pipe_new*, %struct.sof_ipc_pipe_new** %6, align 8
  %50 = getelementptr inbounds %struct.sof_ipc_pipe_new, %struct.sof_ipc_pipe_new* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %54 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = call i32 @memset(%struct.sof_ipc_pm_core_config* %8, i32 0, i32 16)
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %59 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.sof_ipc_pm_core_config, %struct.sof_ipc_pm_core_config* %8, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.sof_ipc_pm_core_config, %struct.sof_ipc_pm_core_config* %8, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 16, i32* %63, align 4
  %64 = load i32, i32* @SOF_IPC_GLB_PM_MSG, align 4
  %65 = load i32, i32* @SOF_IPC_PM_CORE_ENABLE, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.sof_ipc_pm_core_config, %struct.sof_ipc_pm_core_config* %8, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %70 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.sof_ipc_pm_core_config, %struct.sof_ipc_pm_core_config* %8, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sof_ipc_tx_message(i32 %71, i32 %74, %struct.sof_ipc_pm_core_config* %8, i32 16, %struct.sof_ipc_pm_core_config* %8, i32 16)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %48
  %79 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %80 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %48
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %39, %24
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_pm_core_config*, i32, %struct.sof_ipc_pm_core_config*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_sof_dsp_core_power_up(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @memset(%struct.sof_ipc_pm_core_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

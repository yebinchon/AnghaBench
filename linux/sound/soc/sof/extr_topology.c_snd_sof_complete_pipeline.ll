; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_snd_sof_complete_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_snd_sof_complete_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_sof_widget = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sof_ipc_pipe_ready = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sof_ipc_reply = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"tplg: complete pipeline %s id %d\0A\00", align 1
@SOF_IPC_GLB_TPLG_MSG = common dso_local global i32 0, align 4
@SOF_IPC_TPLG_PIPE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_complete_pipeline(%struct.snd_sof_dev* %0, %struct.snd_sof_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_sof_widget*, align 8
  %6 = alloca %struct.sof_ipc_pipe_ready, align 4
  %7 = alloca %struct.sof_ipc_reply, align 4
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_sof_widget* %1, %struct.snd_sof_widget** %5, align 8
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %10 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = call i32 @memset(%struct.sof_ipc_pipe_ready* %6, i32 0, i32 12)
  %22 = getelementptr inbounds %struct.sof_ipc_pipe_ready, %struct.sof_ipc_pipe_ready* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 12, i32* %23, align 4
  %24 = load i32, i32* @SOF_IPC_GLB_TPLG_MSG, align 4
  %25 = load i32, i32* @SOF_IPC_TPLG_PIPE_COMPLETE, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.sof_ipc_pipe_ready, %struct.sof_ipc_pipe_ready* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %5, align 8
  %30 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.sof_ipc_pipe_ready, %struct.sof_ipc_pipe_ready* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %34 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.sof_ipc_pipe_ready, %struct.sof_ipc_pipe_ready* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sof_ipc_tx_message(i32 %35, i32 %38, %struct.sof_ipc_pipe_ready* %6, i32 12, %struct.sof_ipc_reply* %7, i32 4)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.sof_ipc_pipe_ready*, i32, i32) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_pipe_ready*, i32, %struct.sof_ipc_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_ipc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_ipc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_widget = type { %struct.TYPE_3__*, i32, %struct.snd_sof_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.sof_ipc_stream = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sof_ipc_reply = type { i32 }

@SOF_IPC_GLB_STREAM_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error: failed to trigger %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_widget*, i32)* @ipc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_trigger(%struct.snd_sof_widget* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_widget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.sof_ipc_stream, align 4
  %7 = alloca %struct.sof_ipc_reply, align 4
  %8 = alloca i32, align 4
  store %struct.snd_sof_widget* %0, %struct.snd_sof_widget** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %9, i32 0, i32 2
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  store %struct.snd_sof_dev* %11, %struct.snd_sof_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 12, i32* %13, align 4
  %14 = load i32, i32* @SOF_IPC_GLB_STREAM_MSG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %3, align 8
  %20 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sof_ipc_tx_message(i32 %25, i32 %28, %struct.sof_ipc_stream* %6, i32 12, %struct.sof_ipc_reply* %7, i32 4)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %34 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %3, align 8
  %37 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %32, %2
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_stream*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

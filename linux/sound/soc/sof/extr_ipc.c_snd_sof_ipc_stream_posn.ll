; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_stream_posn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_stream_posn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_sof_pcm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sof_ipc_stream_posn = type { i32 }
%struct.sof_ipc_stream = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SOF_IPC_GLB_STREAM_MSG = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_POSITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: failed to get stream %d position\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_ipc_stream_posn(%struct.snd_sof_dev* %0, %struct.snd_sof_pcm* %1, i32 %2, %struct.sof_ipc_stream_posn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.snd_sof_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sof_ipc_stream_posn*, align 8
  %10 = alloca %struct.sof_ipc_stream, align 4
  %11 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.snd_sof_pcm* %1, %struct.snd_sof_pcm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sof_ipc_stream_posn* %3, %struct.sof_ipc_stream_posn** %9, align 8
  %12 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 12, i32* %13, align 4
  %14 = load i32, i32* @SOF_IPC_GLB_STREAM_MSG, align 4
  %15 = load i32, i32* @SOF_IPC_STREAM_POSITION, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %20 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %29 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sof_ipc_tx_message(i32 %30, i32 %33, %struct.sof_ipc_stream* %10, i32 12, %struct.sof_ipc_stream_posn** %9, i32 4)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %39 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_stream*, i32, %struct.sof_ipc_stream_posn**, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

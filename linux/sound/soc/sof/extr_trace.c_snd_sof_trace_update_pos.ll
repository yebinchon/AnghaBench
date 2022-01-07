; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_trace_update_pos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_trace_update_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i64, i32, i32, i64 }
%struct.sof_ipc_dma_trace_posn = type { i64, i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"error: DSP trace buffer overflow %u bytes. Total messages %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_trace_update_pos(%struct.snd_sof_dev* %0, %struct.sof_ipc_dma_trace_posn* %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.sof_ipc_dma_trace_posn*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store %struct.sof_ipc_dma_trace_posn* %1, %struct.sof_ipc_dma_trace_posn** %4, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %6 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %11 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sof_ipc_dma_trace_posn*, %struct.sof_ipc_dma_trace_posn** %4, align 8
  %14 = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, %struct.sof_ipc_dma_trace_posn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load %struct.sof_ipc_dma_trace_posn*, %struct.sof_ipc_dma_trace_posn** %4, align 8
  %19 = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, %struct.sof_ipc_dma_trace_posn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %22 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 2
  %25 = call i32 @wake_up(i32* %24)
  br label %26

26:                                               ; preds = %17, %9, %2
  %27 = load %struct.sof_ipc_dma_trace_posn*, %struct.sof_ipc_dma_trace_posn** %4, align 8
  %28 = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, %struct.sof_ipc_dma_trace_posn* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %33 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sof_ipc_dma_trace_posn*, %struct.sof_ipc_dma_trace_posn** %4, align 8
  %36 = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, %struct.sof_ipc_dma_trace_posn* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sof_ipc_dma_trace_posn*, %struct.sof_ipc_dma_trace_posn** %4, align 8
  %39 = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, %struct.sof_ipc_dma_trace_posn* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %31, %26
  ret i32 0
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

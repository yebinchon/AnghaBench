; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32, i32 }
%struct.sst_byt_stream = type { i32 }
%struct.sst_byt_start_stream_params = type { i32 }
%struct.sst_ipc_message = type { i32, %struct.sst_byt_start_stream_params*, i32 }

@IPC_IA_START_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ipc: error failed to start stream %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_stream_start(%struct.sst_byt* %0, %struct.sst_byt_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.sst_byt*, align 8
  %5 = alloca %struct.sst_byt_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_byt_start_stream_params, align 4
  %8 = alloca %struct.sst_ipc_message, align 8
  %9 = alloca i32, align 4
  store %struct.sst_byt* %0, %struct.sst_byt** %4, align 8
  store %struct.sst_byt_stream* %1, %struct.sst_byt_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.sst_byt_start_stream_params, %struct.sst_byt_start_stream_params* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @IPC_IA_START_STREAM, align 4
  %13 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %14 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sst_byt_header(i32 %12, i32 8, i32 1, i32 %15)
  %17 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %8, i32 0, i32 1
  store %struct.sst_byt_start_stream_params* %7, %struct.sst_byt_start_stream_params** %18, align 8
  %19 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %8, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %21 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %20, i32 0, i32 1
  %22 = call i32 @sst_ipc_tx_message_nowait(i32* %21, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %27 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %30 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25, %3
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @sst_byt_header(i32, i32, i32, i32) #1

declare dso_local i32 @sst_ipc_tx_message_nowait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

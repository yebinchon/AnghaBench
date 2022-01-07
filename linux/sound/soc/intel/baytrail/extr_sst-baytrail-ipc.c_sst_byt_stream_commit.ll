; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_commit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32, i32 }
%struct.sst_byt_stream = type { i32, i32, i32, i32 }
%struct.sst_ipc_message = type { i32, i32*, i32, i32 }

@IPC_IA_ALLOC_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ipc: error stream commit failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_stream_commit(%struct.sst_byt* %0, %struct.sst_byt_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_byt*, align 8
  %5 = alloca %struct.sst_byt_stream*, align 8
  %6 = alloca %struct.sst_ipc_message, align 8
  %7 = alloca %struct.sst_ipc_message, align 8
  %8 = alloca i32, align 4
  store %struct.sst_byt* %0, %struct.sst_byt** %4, align 8
  store %struct.sst_byt_stream* %1, %struct.sst_byt_stream** %5, align 8
  %9 = bitcast %struct.sst_ipc_message* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @IPC_IA_ALLOC_STREAM, align 4
  %11 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %12 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sst_byt_header(i32 %10, i32 8, i32 1, i32 %13)
  %15 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %17 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 1
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %21 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 1
  store i32* %21, i32** %22, align 8
  %23 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %25 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %24, i32 0, i32 1
  %26 = call i32 @sst_ipc_tx_message_wait(i32* %25, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %6, %struct.sst_ipc_message* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %31 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %37 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sst_byt_header(i32, i32, i32, i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, %struct.sst_ipc_message*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

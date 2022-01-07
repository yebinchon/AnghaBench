; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_commit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32 }
%struct.sst_hsw_stream = type { i32, i32, i32, i32 }
%struct.sst_ipc_message = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"warning: stream is NULL, no stream to commit, ignore it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"warning: stream is already committed, ignore it.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"stream alloc\00", align 1
@IPC_GLB_ALLOCATE_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"error: stream commit failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_commit(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca %struct.sst_hsw_stream*, align 8
  %6 = alloca %struct.sst_ipc_message, align 8
  %7 = alloca %struct.sst_ipc_message, align 8
  %8 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %4, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %5, align 8
  %9 = bitcast %struct.sst_ipc_message* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %11 = icmp ne %struct.sst_hsw_stream* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %14 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %19 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %24 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %29 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @IPC_GLB_ALLOCATE_STREAM, align 4
  %33 = call i32 @IPC_GLB_TYPE(i32 %32)
  %34 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %36 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 1
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %40 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  %42 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %44 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %43, i32 0, i32 1
  %45 = call i32 @sst_ipc_tx_message_wait(i32* %44, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %6, %struct.sst_ipc_message* %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %27
  %49 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %50 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %27
  %55 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %56 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %58 = call i32 @trace_hsw_stream_alloc_reply(%struct.sst_hsw_stream* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %48, %22, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @trace_ipc_request(i8*, i32) #2

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, %struct.sst_ipc_message*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @trace_hsw_stream_alloc_reply(%struct.sst_hsw_stream*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

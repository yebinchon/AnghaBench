; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_mixer_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_mixer_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32, i32 }
%struct.sst_ipc_message = type { i32, i32*, i32, i32 }

@IPC_GLB_GET_MIXER_STREAM_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"get global mixer info\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"error: get stream info failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_mixer_get_info(%struct.sst_hsw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca %struct.sst_ipc_message, align 8
  %5 = alloca %struct.sst_ipc_message, align 8
  %6 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  %7 = bitcast %struct.sst_ipc_message* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = bitcast %struct.sst_ipc_message* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* @IPC_GLB_GET_MIXER_STREAM_INFO, align 4
  %10 = call i32 @IPC_GLB_TYPE(i32 %9)
  %11 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %4, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %13 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %5, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %5, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %18 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %17, i32 0, i32 2
  %19 = call i32 @sst_ipc_tx_message_wait(i32* %18, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %4, %struct.sst_ipc_message* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %24 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %30 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %29, i32 0, i32 0
  %31 = call i32 @trace_hsw_mixer_info_reply(i32* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @trace_ipc_request(i8*, i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, %struct.sst_ipc_message*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @trace_hsw_mixer_info_reply(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

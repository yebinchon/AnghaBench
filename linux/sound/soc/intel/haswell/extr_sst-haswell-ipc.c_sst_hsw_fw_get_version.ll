; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_fw_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_fw_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32 }
%struct.sst_hsw_ipc_fw_version = type { i32 }
%struct.sst_ipc_message = type { i32, %struct.sst_hsw_ipc_fw_version*, i32, i32 }

@IPC_GLB_GET_FW_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error: get version failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_fw_get_version(%struct.sst_hsw* %0, %struct.sst_hsw_ipc_fw_version* %1) #0 {
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca %struct.sst_hsw_ipc_fw_version*, align 8
  %5 = alloca %struct.sst_ipc_message, align 8
  %6 = alloca %struct.sst_ipc_message, align 8
  %7 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  store %struct.sst_hsw_ipc_fw_version* %1, %struct.sst_hsw_ipc_fw_version** %4, align 8
  %8 = bitcast %struct.sst_ipc_message* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = bitcast %struct.sst_ipc_message* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @IPC_GLB_GET_FW_VERSION, align 4
  %11 = call i32 @IPC_GLB_TYPE(i32 %10)
  %12 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load %struct.sst_hsw_ipc_fw_version*, %struct.sst_hsw_ipc_fw_version** %4, align 8
  %14 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 1
  store %struct.sst_hsw_ipc_fw_version* %13, %struct.sst_hsw_ipc_fw_version** %14, align 8
  %15 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %17 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %16, i32 0, i32 1
  %18 = call i32 @sst_ipc_tx_message_wait(i32* %17, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %5, %struct.sst_ipc_message* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %23 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, %struct.sst_ipc_message*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

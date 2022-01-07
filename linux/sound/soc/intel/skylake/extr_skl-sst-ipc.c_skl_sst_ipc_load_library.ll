; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_sst_ipc_load_library.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_sst_ipc_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { i32 }
%struct.skl_ipc_header = type { i32, i32 }
%struct.sst_ipc_message = type { i32, i32 }

@IPC_FW_GEN_MSG = common dso_local global i32 0, align 4
@IPC_MSG_REQUEST = common dso_local global i32 0, align 4
@IPC_GLB_LOAD_LIBRARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ipc: load lib failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_sst_ipc_load_library(%struct.sst_generic_ipc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sst_generic_ipc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skl_ipc_header, align 4
  %10 = alloca %struct.sst_ipc_message, align 4
  %11 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.skl_ipc_header* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %struct.sst_ipc_message* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @IPC_FW_GEN_MSG, align 4
  %15 = call i32 @IPC_MSG_TARGET(i32 %14)
  %16 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @IPC_MSG_REQUEST, align 4
  %18 = call i32 @IPC_MSG_DIR(i32 %17)
  %19 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @IPC_GLB_LOAD_LIBRARY, align 4
  %23 = call i32 @IPC_GLB_TYPE(i32 %22)
  %24 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @IPC_MOD_INSTANCE_ID(i32 %27)
  %29 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @IPC_MOD_ID(i32 %32)
  %34 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = bitcast %struct.skl_ipc_header* %9 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %5, align 8
  %44 = bitcast %struct.sst_ipc_message* %10 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc* %43, i64 %45, i32* null)
  store i32 %46, i32* %11, align 4
  br label %52

47:                                               ; preds = %4
  %48 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %5, align 8
  %49 = bitcast %struct.sst_ipc_message* %10 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = call i32 @sst_ipc_tx_message_nowait(%struct.sst_generic_ipc* %48, i64 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %5, align 8
  %57 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IPC_MSG_TARGET(i32) #2

declare dso_local i32 @IPC_MSG_DIR(i32) #2

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @IPC_MOD_INSTANCE_ID(i32) #2

declare dso_local i32 @IPC_MOD_ID(i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc*, i64, i32*) #2

declare dso_local i32 @sst_ipc_tx_message_nowait(%struct.sst_generic_ipc*, i64) #2

declare dso_local i32 @dev_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_unload_modules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_unload_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { i32 }
%struct.skl_ipc_header = type { i32, i32 }
%struct.sst_ipc_message = type { i32, i8*, i32 }

@IPC_FW_GEN_MSG = common dso_local global i32 0, align 4
@IPC_MSG_REQUEST = common dso_local global i32 0, align 4
@IPC_GLB_UNLOAD_MULTIPLE_MODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ipc: unload modules failed :%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_ipc_unload_modules(%struct.sst_generic_ipc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sst_generic_ipc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.skl_ipc_header, align 4
  %8 = alloca %struct.sst_ipc_message, align 8
  %9 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.skl_ipc_header* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* @IPC_FW_GEN_MSG, align 4
  %12 = call i32 @IPC_MSG_TARGET(i32 %11)
  %13 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @IPC_MSG_REQUEST, align 4
  %15 = call i32 @IPC_MSG_DIR(i32 %14)
  %16 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @IPC_GLB_UNLOAD_MULTIPLE_MODS, align 4
  %20 = call i32 @IPC_GLB_TYPE(i32 %19)
  %21 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @IPC_LOAD_MODULE_CNT(i32 %24)
  %26 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = bitcast %struct.skl_ipc_header* %7 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %8, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %8, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %40 = call i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc* %39, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %8, i32* null)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %45 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %3
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IPC_MSG_TARGET(i32) #2

declare dso_local i32 @IPC_MSG_DIR(i32) #2

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @IPC_LOAD_MODULE_CNT(i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

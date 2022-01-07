; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_lease_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_lease_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.nfs4_get_lease_time_args = type { i32 }
%struct.nfs4_get_lease_time_res = type { i32, %struct.nfs_fsinfo* }
%struct.nfs4_get_lease_time_data = type { %struct.nfs_client*, %struct.nfs4_get_lease_time_res*, %struct.nfs4_get_lease_time_args* }
%struct.rpc_message = type { %struct.nfs4_get_lease_time_res*, %struct.nfs4_get_lease_time_args*, i32* }
%struct.rpc_task_setup = type { i32, %struct.nfs4_get_lease_time_data*, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_GET_LEASE_TIME = common dso_local global i64 0, align 8
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@nfs4_get_lease_time_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_get_lease_time(%struct.nfs_client* %0, %struct.nfs_fsinfo* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs_fsinfo*, align 8
  %5 = alloca %struct.nfs4_get_lease_time_args, align 4
  %6 = alloca %struct.nfs4_get_lease_time_res, align 8
  %7 = alloca %struct.nfs4_get_lease_time_data, align 8
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca %struct.rpc_task_setup, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  store %struct.nfs_fsinfo* %1, %struct.nfs_fsinfo** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_get_lease_time_res, %struct.nfs4_get_lease_time_res* %6, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.nfs4_get_lease_time_res, %struct.nfs4_get_lease_time_res* %6, i32 0, i32 1
  %12 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  store %struct.nfs_fsinfo* %12, %struct.nfs_fsinfo** %11, align 8
  %13 = getelementptr inbounds %struct.nfs4_get_lease_time_data, %struct.nfs4_get_lease_time_data* %7, i32 0, i32 0
  %14 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  store %struct.nfs_client* %14, %struct.nfs_client** %13, align 8
  %15 = getelementptr inbounds %struct.nfs4_get_lease_time_data, %struct.nfs4_get_lease_time_data* %7, i32 0, i32 1
  store %struct.nfs4_get_lease_time_res* %6, %struct.nfs4_get_lease_time_res** %15, align 8
  %16 = getelementptr inbounds %struct.nfs4_get_lease_time_data, %struct.nfs4_get_lease_time_data* %7, i32 0, i32 2
  store %struct.nfs4_get_lease_time_args* %5, %struct.nfs4_get_lease_time_args** %16, align 8
  %17 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store %struct.nfs4_get_lease_time_res* %6, %struct.nfs4_get_lease_time_res** %17, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  store %struct.nfs4_get_lease_time_args* %5, %struct.nfs4_get_lease_time_args** %18, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %20 = load i32*, i32** @nfs4_procedures, align 8
  %21 = load i64, i64* @NFSPROC4_CLNT_GET_LEASE_TIME, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 0
  %24 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 1
  store %struct.nfs4_get_lease_time_data* %7, %struct.nfs4_get_lease_time_data** %25, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 2
  store i32* @nfs4_get_lease_time_ops, i32** %26, align 8
  %27 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 3
  store %struct.rpc_message* %8, %struct.rpc_message** %27, align 8
  %28 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 4
  %29 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 8
  %32 = getelementptr inbounds %struct.nfs4_get_lease_time_args, %struct.nfs4_get_lease_time_args* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.nfs4_get_lease_time_res, %struct.nfs4_get_lease_time_res* %6, i32 0, i32 0
  %34 = call i32 @nfs4_init_sequence(i32* %32, i32* %33, i32 0, i32 1)
  %35 = call i32 @nfs4_call_sync_custom(%struct.rpc_task_setup* %9)
  ret i32 %35
}

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_call_sync_custom(%struct.rpc_task_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

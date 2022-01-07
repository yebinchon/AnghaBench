; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_call_sync_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_call_sync_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_message = type { i32 }
%struct.nfs4_sequence_args = type { i32 }
%struct.nfs4_sequence_res = type { i32 }
%struct.nfs4_call_sync_data = type { %struct.nfs4_sequence_res*, %struct.nfs4_sequence_args*, %struct.nfs_server* }
%struct.rpc_task_setup = type { %struct.nfs4_call_sync_data*, i32, %struct.rpc_message*, %struct.rpc_clnt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, %struct.nfs4_sequence_args*, %struct.nfs4_sequence_res*)* @nfs4_call_sync_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_call_sync_sequence(%struct.rpc_clnt* %0, %struct.nfs_server* %1, %struct.rpc_message* %2, %struct.nfs4_sequence_args* %3, %struct.nfs4_sequence_res* %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.rpc_message*, align 8
  %9 = alloca %struct.nfs4_sequence_args*, align 8
  %10 = alloca %struct.nfs4_sequence_res*, align 8
  %11 = alloca %struct.nfs_client*, align 8
  %12 = alloca %struct.nfs4_call_sync_data, align 8
  %13 = alloca %struct.rpc_task_setup, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %7, align 8
  store %struct.rpc_message* %2, %struct.rpc_message** %8, align 8
  store %struct.nfs4_sequence_args* %3, %struct.nfs4_sequence_args** %9, align 8
  store %struct.nfs4_sequence_res* %4, %struct.nfs4_sequence_res** %10, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 0
  %16 = load %struct.nfs_client*, %struct.nfs_client** %15, align 8
  store %struct.nfs_client* %16, %struct.nfs_client** %11, align 8
  %17 = getelementptr inbounds %struct.nfs4_call_sync_data, %struct.nfs4_call_sync_data* %12, i32 0, i32 0
  %18 = load %struct.nfs4_sequence_res*, %struct.nfs4_sequence_res** %10, align 8
  store %struct.nfs4_sequence_res* %18, %struct.nfs4_sequence_res** %17, align 8
  %19 = getelementptr inbounds %struct.nfs4_call_sync_data, %struct.nfs4_call_sync_data* %12, i32 0, i32 1
  %20 = load %struct.nfs4_sequence_args*, %struct.nfs4_sequence_args** %9, align 8
  store %struct.nfs4_sequence_args* %20, %struct.nfs4_sequence_args** %19, align 8
  %21 = getelementptr inbounds %struct.nfs4_call_sync_data, %struct.nfs4_call_sync_data* %12, i32 0, i32 2
  %22 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  store %struct.nfs_server* %22, %struct.nfs_server** %21, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 0
  store %struct.nfs4_call_sync_data* %12, %struct.nfs4_call_sync_data** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 1
  %25 = load %struct.nfs_client*, %struct.nfs_client** %11, align 8
  %26 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 2
  %31 = load %struct.rpc_message*, %struct.rpc_message** %8, align 8
  store %struct.rpc_message* %31, %struct.rpc_message** %30, align 8
  %32 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 3
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_clnt* %33, %struct.rpc_clnt** %32, align 8
  %34 = call i32 @nfs4_call_sync_custom(%struct.rpc_task_setup* %13)
  ret i32 %34
}

declare dso_local i32 @nfs4_call_sync_custom(%struct.rpc_task_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

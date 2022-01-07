; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs4_setclientid_res = type { i32 }
%struct.cred = type { i32 }
%struct.rpc_message = type { %struct.cred*, %struct.nfs4_setclientid_res*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETCLIENTID_CONFIRM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"NFS call  setclientid_confirm auth=%s, (client ID %llx)\0A\00", align 1
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@RPC_TASK_NO_ROUND_ROBIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"NFS reply setclientid_confirm: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_setclientid_confirm(%struct.nfs_client* %0, %struct.nfs4_setclientid_res* %1, %struct.cred* %2) #0 {
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs4_setclientid_res*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.nfs4_setclientid_res* %1, %struct.nfs4_setclientid_res** %5, align 8
  store %struct.cred* %2, %struct.cred** %6, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  %10 = load %struct.cred*, %struct.cred** %6, align 8
  store %struct.cred* %10, %struct.cred** %9, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  %12 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %5, align 8
  store %struct.nfs4_setclientid_res* %12, %struct.nfs4_setclientid_res** %11, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  %14 = load i32*, i32** @nfs4_procedures, align 8
  %15 = load i64, i64* @NFSPROC4_CLNT_SETCLIENTID_CONFIRM, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %13, align 8
  %17 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %34 = load i32, i32* @RPC_TASK_NO_ROUND_ROBIN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rpc_call_sync(%struct.TYPE_6__* %32, %struct.rpc_message* %7, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @trace_nfs4_setclientid_confirm(%struct.nfs_client* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @rpc_call_sync(%struct.TYPE_6__*, %struct.rpc_message*, i32) #1

declare dso_local i32 @trace_nfs4_setclientid_confirm(%struct.nfs_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_do_unlck.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_do_unlck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.file_lock = type { i32, i32 }
%struct.nfs_open_context = type { i32, i32 }
%struct.nfs4_lock_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_seqid = type { i32 }
%struct.nfs4_unlockdata = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rpc_message = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32* }
%struct.rpc_task_setup = type { %struct.nfs4_unlockdata*, i32, i32, i32, i32*, %struct.rpc_message* }
%struct.TYPE_8__ = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOCKU = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_locku_ops = common dso_local global i32 0, align 4
@NFS_SP4_MACH_CRED_CLEANUP = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@NFS_CONTEXT_UNLOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_task* (%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, %struct.nfs_seqid*)* @nfs4_do_unlck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_task* @nfs4_do_unlck(%struct.file_lock* %0, %struct.nfs_open_context* %1, %struct.nfs4_lock_state* %2, %struct.nfs_seqid* %3) #0 {
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.nfs4_lock_state*, align 8
  %9 = alloca %struct.nfs_seqid*, align 8
  %10 = alloca %struct.nfs4_unlockdata*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  store %struct.file_lock* %0, %struct.file_lock** %6, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %7, align 8
  store %struct.nfs4_lock_state* %2, %struct.nfs4_lock_state** %8, align 8
  store %struct.nfs_seqid* %3, %struct.nfs_seqid** %9, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %16 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 3
  %20 = load i32*, i32** @nfs4_procedures, align 8
  %21 = load i64, i64* @NFSPROC4_CLNT_LOCKU, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.nfs4_unlockdata* null, %struct.nfs4_unlockdata** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %25 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %26 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NFS_CLIENT(i32 %29)
  store i32 %30, i32* %24, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %32 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  %34 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store i32* @nfs4_locku_ops, i32** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 5
  store %struct.rpc_message* %11, %struct.rpc_message** %36, align 8
  %37 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %38 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_8__* @NFS_SERVER(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NFS_SP4_MACH_CRED_CLEANUP, align 4
  %46 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %47 = call i32 @nfs4_state_protect(i32 %44, i32 %45, i32* %46, %struct.rpc_message* %11)
  %48 = load i32, i32* @F_UNLCK, align 4
  %49 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %50 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %52 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FL_CLOSE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %4
  %58 = load i32, i32* @NFS_CONTEXT_UNLOCK, align 4
  %59 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %60 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %4
  %63 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %64 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %65 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %66 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %67 = call %struct.nfs4_unlockdata* @nfs4_alloc_unlockdata(%struct.file_lock* %63, %struct.nfs_open_context* %64, %struct.nfs4_lock_state* %65, %struct.nfs_seqid* %66)
  store %struct.nfs4_unlockdata* %67, %struct.nfs4_unlockdata** %10, align 8
  %68 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %69 = icmp eq %struct.nfs4_unlockdata* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %72 = call i32 @nfs_free_seqid(%struct.nfs_seqid* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.rpc_task* @ERR_PTR(i32 %74)
  store %struct.rpc_task* %75, %struct.rpc_task** %5, align 8
  br label %93

76:                                               ; preds = %62
  %77 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %78 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %81 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = call i32 @nfs4_init_sequence(i32* %79, i32* %82, i32 1, i32 0)
  %84 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %85 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %86, align 8
  %87 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %88 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %91 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.nfs4_unlockdata* %90, %struct.nfs4_unlockdata** %91, align 8
  %92 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %92, %struct.rpc_task** %5, align 8
  br label %93

93:                                               ; preds = %76, %70
  %94 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  ret %struct.rpc_task* %94
}

declare dso_local i32 @NFS_CLIENT(i32) #1

declare dso_local i32 @nfs4_state_protect(i32, i32, i32*, %struct.rpc_message*) #1

declare dso_local %struct.TYPE_8__* @NFS_SERVER(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.nfs4_unlockdata* @nfs4_alloc_unlockdata(%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, %struct.nfs_seqid*) #1

declare dso_local i32 @nfs_free_seqid(%struct.nfs_seqid*) #1

declare dso_local %struct.rpc_task* @ERR_PTR(i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

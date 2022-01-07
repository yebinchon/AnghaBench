; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_open_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_open_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_server = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32* }
%struct.rpc_task_setup = type { i32, i32, %struct.nfs4_opendata*, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OPEN_CONFIRM = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_open_confirm_ops = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*)* @_nfs4_proc_open_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_message, align 8
  %7 = alloca %struct.rpc_task_setup, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  %9 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @d_inode(i32 %11)
  %13 = call %struct.nfs_server* @NFS_SERVER(i32 %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  %15 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %15, i32 0, i32 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  %21 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %22 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %21, i32 0, i32 6
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %20, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 2
  %24 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %25 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %24, i32 0, i32 7
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %23, align 8
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 3
  %27 = load i32*, i32** @nfs4_procedures, align 8
  %28 = load i64, i64* @NFSPROC4_CLNT_OPEN_CONFIRM, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 0
  %31 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 1
  %33 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 2
  %35 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs4_opendata* %35, %struct.nfs4_opendata** %34, align 8
  %36 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 3
  store i32* @nfs4_open_confirm_ops, i32** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 4
  store %struct.rpc_message* %6, %struct.rpc_message** %37, align 8
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 5
  %39 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 8
  %42 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %43 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %46 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %49 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nfs4_init_sequence(i32* %44, i32* %47, i32 1, i32 %50)
  %52 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %53 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %52, i32 0, i32 4
  %54 = call i32 @kref_get(i32* %53)
  %55 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %56 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %58 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @jiffies, align 4
  %60 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %61 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %7)
  store %struct.rpc_task* %62, %struct.rpc_task** %5, align 8
  %63 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %64 = call i64 @IS_ERR(%struct.rpc_task* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %1
  %67 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %68 = call i32 @PTR_ERR(%struct.rpc_task* %67)
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %1
  %70 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %71 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %76 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = call i32 (...) @smp_wmb()
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %80 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %84 = call i32 @rpc_put_task(%struct.rpc_task* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %66
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

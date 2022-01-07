; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_run_open_task.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_run_open_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.nfs_openres, %struct.nfs_openargs, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_openres = type { i32 }
%struct.nfs_openargs = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { i32, %struct.nfs_openres*, %struct.nfs_openargs*, i32* }
%struct.rpc_task_setup = type { i32, i32, %struct.nfs4_opendata*, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OPEN = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_open_ops = common dso_local global i32 0, align 4
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, %struct.nfs_open_context*)* @nfs4_run_open_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_run_open_task(%struct.nfs4_opendata* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_opendata*, align 8
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs_openargs*, align 8
  %9 = alloca %struct.nfs_openres*, align 8
  %10 = alloca %struct.rpc_task*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  %13 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %4, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %5, align 8
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.inode* @d_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %7, align 8
  %20 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %20, i32 0, i32 7
  store %struct.nfs_openargs* %21, %struct.nfs_openargs** %8, align 8
  %22 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %22, i32 0, i32 6
  store %struct.nfs_openres* %23, %struct.nfs_openres** %9, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  %25 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 8
  %30 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  %31 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  store %struct.nfs_openres* %31, %struct.nfs_openres** %30, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %33 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  store %struct.nfs_openargs* %33, %struct.nfs_openargs** %32, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 3
  %35 = load i32*, i32** @nfs4_procedures, align 8
  %36 = load i64, i64* @NFSPROC4_CLNT_OPEN, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  %39 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %41 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %43 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  store %struct.nfs4_opendata* %43, %struct.nfs4_opendata** %42, align 8
  %44 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  store i32* @nfs4_open_ops, i32** %44, align 8
  %45 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store %struct.rpc_message* %11, %struct.rpc_message** %45, align 8
  %46 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 5
  %47 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %48 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 8
  %50 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %51 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %50, i32 0, i32 4
  %52 = call i32 @kref_get(i32* %51)
  %53 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %54 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %56 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %58 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %60 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %62 = icmp ne %struct.nfs_open_context* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %2
  %64 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %65 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %64, i32 0, i32 0
  %66 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %67 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %66, i32 0, i32 0
  %68 = call i32 @nfs4_init_sequence(i32* %65, i32* %67, i32 1, i32 1)
  %69 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %70 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %72 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 8
  br label %84

75:                                               ; preds = %2
  %76 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %77 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %76, i32 0, i32 0
  %78 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %79 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %78, i32 0, i32 0
  %80 = call i32 @nfs4_init_sequence(i32* %77, i32* %79, i32 1, i32 0)
  %81 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %82 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %83 = call i32 @pnfs_lgopen_prepare(%struct.nfs4_opendata* %81, %struct.nfs_open_context* %82)
  br label %84

84:                                               ; preds = %75, %63
  %85 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %85, %struct.rpc_task** %10, align 8
  %86 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %87 = call i64 @IS_ERR(%struct.rpc_task* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %91 = call i32 @PTR_ERR(%struct.rpc_task* %90)
  store i32 %91, i32* %3, align 4
  br label %109

92:                                               ; preds = %84
  %93 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %94 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %99 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = call i32 (...) @smp_wmb()
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %103 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %107 = call i32 @rpc_put_task(%struct.rpc_task* %106)
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %89
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @pnfs_lgopen_prepare(%struct.nfs4_opendata*, %struct.nfs_open_context*) #1

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

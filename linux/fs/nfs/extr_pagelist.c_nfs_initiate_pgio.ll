; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_initiate_pgio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_initiate_pgio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_pgio_header = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.nfs_pgio_header*, %struct.rpc_message*, %struct.nfs_rpc_ops*, %struct.rpc_task_setup*, i32)* }
%struct.rpc_message = type { %struct.cred*, i32*, %struct.TYPE_7__* }
%struct.rpc_task_setup = type { i32, i32, %struct.nfs_pgio_header*, %struct.rpc_call_ops*, %struct.rpc_message*, i32*, %struct.rpc_clnt* }
%struct.cred = type { i32 }
%struct.nfs_rpc_ops = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"NFS: initiated pgio call (req %s/%llu, %u bytes @ offset %llu)\0A\00", align 1
@FLUSH_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_initiate_pgio(%struct.rpc_clnt* %0, %struct.nfs_pgio_header* %1, %struct.cred* %2, %struct.nfs_rpc_ops* %3, %struct.rpc_call_ops* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.rpc_clnt*, align 8
  %9 = alloca %struct.nfs_pgio_header*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca %struct.nfs_rpc_ops*, align 8
  %12 = alloca %struct.rpc_call_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rpc_task*, align 8
  %16 = alloca %struct.rpc_message, align 8
  %17 = alloca %struct.rpc_task_setup, align 8
  %18 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %8, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %9, align 8
  store %struct.cred* %2, %struct.cred** %10, align 8
  store %struct.nfs_rpc_ops* %3, %struct.nfs_rpc_ops** %11, align 8
  store %struct.rpc_call_ops* %4, %struct.rpc_call_ops** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %16, i32 0, i32 0
  %20 = load %struct.cred*, %struct.cred** %10, align 8
  store %struct.cred* %20, %struct.cred** %19, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %16, i32 0, i32 1
  %22 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %22, i32 0, i32 4
  store i32* %23, i32** %21, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %16, i32 0, i32 2
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %26 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %25, i32 0, i32 0
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %24, align 8
  %27 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 0
  %28 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %29 = load i32, i32* %14, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 1
  %32 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 2
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  store %struct.nfs_pgio_header* %34, %struct.nfs_pgio_header** %33, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 3
  %36 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %12, align 8
  store %struct.rpc_call_ops* %36, %struct.rpc_call_ops** %35, align 8
  %37 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 4
  store %struct.rpc_message* %16, %struct.rpc_message** %37, align 8
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 5
  %39 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %39, i32 0, i32 3
  store i32* %40, i32** %38, align 8
  %41 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 6
  %42 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  store %struct.rpc_clnt* %42, %struct.rpc_clnt** %41, align 8
  store i32 0, i32* %18, align 4
  %43 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %44 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.nfs_pgio_header*, %struct.rpc_message*, %struct.nfs_rpc_ops*, %struct.rpc_task_setup*, i32)*, i32 (%struct.nfs_pgio_header*, %struct.rpc_message*, %struct.nfs_rpc_ops*, %struct.rpc_task_setup*, i32)** %46, align 8
  %48 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %49 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 %47(%struct.nfs_pgio_header* %48, %struct.rpc_message* %16, %struct.nfs_rpc_ops* %49, %struct.rpc_task_setup* %17, i32 %50)
  %52 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %53 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %60 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i64 @NFS_FILEID(%struct.TYPE_8__* %61)
  %63 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %64 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %9, align 8
  %68 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %62, i32 %66, i64 %70)
  %72 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %17)
  store %struct.rpc_task* %72, %struct.rpc_task** %15, align 8
  %73 = load %struct.rpc_task*, %struct.rpc_task** %15, align 8
  %74 = call i64 @IS_ERR(%struct.rpc_task* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %7
  %77 = load %struct.rpc_task*, %struct.rpc_task** %15, align 8
  %78 = call i32 @PTR_ERR(%struct.rpc_task* %77)
  store i32 %78, i32* %18, align 4
  br label %97

79:                                               ; preds = %7
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @FLUSH_SYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.rpc_task*, %struct.rpc_task** %15, align 8
  %86 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.rpc_task*, %struct.rpc_task** %15, align 8
  %91 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93, %79
  %95 = load %struct.rpc_task*, %struct.rpc_task** %15, align 8
  %96 = call i32 @rpc_put_task(%struct.rpc_task* %95)
  br label %97

97:                                               ; preds = %94, %76
  %98 = load i32, i32* %18, align 4
  ret i32 %98
}

declare dso_local i32 @dprintk(i8*, i32, i64, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.TYPE_8__*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

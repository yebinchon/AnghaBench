; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_initiate_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_initiate_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_commit_data = type { i32, i32, i32, i32 }
%struct.nfs_rpc_ops = type { i32 (%struct.nfs_commit_data*, %struct.rpc_message*, %struct.rpc_clnt**)* }
%struct.rpc_message = type { i32, i32*, i32* }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_task_setup = type { i32, i32, %struct.rpc_clnt*, i32, %struct.nfs_commit_data*, %struct.rpc_call_ops*, %struct.rpc_message*, i32* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NFS: initiated commit call\0A\00", align 1
@FLUSH_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_initiate_commit(%struct.rpc_clnt* %0, %struct.nfs_commit_data* %1, %struct.nfs_rpc_ops* %2, %struct.rpc_call_ops* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_clnt*, align 8
  %9 = alloca %struct.nfs_commit_data*, align 8
  %10 = alloca %struct.nfs_rpc_ops*, align 8
  %11 = alloca %struct.rpc_call_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rpc_task*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rpc_message, align 8
  %17 = alloca %struct.rpc_task_setup, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %8, align 8
  store %struct.nfs_commit_data* %1, %struct.nfs_commit_data** %9, align 8
  store %struct.nfs_rpc_ops* %2, %struct.nfs_rpc_ops** %10, align 8
  store %struct.rpc_call_ops* %3, %struct.rpc_call_ops** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @flush_task_priority(i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %16, i32 0, i32 0
  %21 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  %22 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %16, i32 0, i32 1
  %25 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  %26 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %25, i32 0, i32 2
  store i32* %26, i32** %24, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %16, i32 0, i32 2
  %28 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  %29 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %28, i32 0, i32 3
  store i32* %29, i32** %27, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 0
  %31 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 1
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 2
  %37 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  store %struct.rpc_clnt* %37, %struct.rpc_clnt** %36, align 8
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 3
  %39 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 4
  %41 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  store %struct.nfs_commit_data* %41, %struct.nfs_commit_data** %40, align 8
  %42 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 5
  %43 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %11, align 8
  store %struct.rpc_call_ops* %43, %struct.rpc_call_ops** %42, align 8
  %44 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 6
  store %struct.rpc_message* %16, %struct.rpc_message** %44, align 8
  %45 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 7
  %46 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  %47 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %46, i32 0, i32 0
  store i32* %47, i32** %45, align 8
  %48 = load %struct.nfs_rpc_ops*, %struct.nfs_rpc_ops** %10, align 8
  %49 = getelementptr inbounds %struct.nfs_rpc_ops, %struct.nfs_rpc_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.nfs_commit_data*, %struct.rpc_message*, %struct.rpc_clnt**)*, i32 (%struct.nfs_commit_data*, %struct.rpc_message*, %struct.rpc_clnt**)** %49, align 8
  %51 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  %52 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %17, i32 0, i32 2
  %53 = call i32 %50(%struct.nfs_commit_data* %51, %struct.rpc_message* %16, %struct.rpc_clnt** %52)
  %54 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %9, align 8
  %55 = call i32 @trace_nfs_initiate_commit(%struct.nfs_commit_data* %54)
  %56 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %57 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %17)
  store %struct.rpc_task* %57, %struct.rpc_task** %14, align 8
  %58 = load %struct.rpc_task*, %struct.rpc_task** %14, align 8
  %59 = call i64 @IS_ERR(%struct.rpc_task* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %6
  %62 = load %struct.rpc_task*, %struct.rpc_task** %14, align 8
  %63 = call i32 @PTR_ERR(%struct.rpc_task* %62)
  store i32 %63, i32* %7, align 4
  br label %75

64:                                               ; preds = %6
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @FLUSH_SYNC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.rpc_task*, %struct.rpc_task** %14, align 8
  %71 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.rpc_task*, %struct.rpc_task** %14, align 8
  %74 = call i32 @rpc_put_task(%struct.rpc_task* %73)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %61
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @flush_task_priority(i32) #1

declare dso_local i32 @trace_nfs_initiate_commit(%struct.nfs_commit_data*) #1

declare dso_local i32 @dprintk(i8*) #1

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

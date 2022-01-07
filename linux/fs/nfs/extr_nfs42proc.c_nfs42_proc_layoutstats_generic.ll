; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_layoutstats_generic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_layoutstats_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs42_layoutstat_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rpc_message = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.rpc_task_setup = type { i32, %struct.nfs42_layoutstat_data*, i32*, %struct.rpc_message*, i32 }
%struct.rpc_task = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LAYOUTSTATS = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfs42_layoutstat_ops = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs42_proc_layoutstats_generic(%struct.nfs_server* %0, %struct.nfs42_layoutstat_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs42_layoutstat_data*, align 8
  %6 = alloca %struct.rpc_message, align 8
  %7 = alloca %struct.rpc_task_setup, align 8
  %8 = alloca %struct.rpc_task*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs42_layoutstat_data* %1, %struct.nfs42_layoutstat_data** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  %10 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %11 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %10, i32 0, i32 0
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %9, align 8
  %12 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  %13 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %14 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %13, i32 0, i32 1
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %12, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 2
  %16 = load i32*, i32** @nfs4_procedures, align 8
  %17 = load i64, i64* @NFSPROC4_CLNT_LAYOUTSTATS, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %15, align 8
  %19 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 0
  %20 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 1
  %22 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  store %struct.nfs42_layoutstat_data* %22, %struct.nfs42_layoutstat_data** %21, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 2
  store i32* @nfs42_layoutstat_ops, i32** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 3
  store %struct.rpc_message* %6, %struct.rpc_message** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 4
  %26 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %30 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nfs_igrab_and_active(i32 %32)
  %34 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %35 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %37 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %2
  %41 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %42 = call i32 @nfs42_layoutstat_release(%struct.nfs42_layoutstat_data* %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %2
  %46 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %47 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %5, align 8
  %50 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @nfs4_init_sequence(i32* %48, i32* %51, i32 0, i32 0)
  %53 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %7)
  store %struct.rpc_task* %53, %struct.rpc_task** %8, align 8
  %54 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %55 = call i64 @IS_ERR(%struct.rpc_task* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %59 = call i32 @PTR_ERR(%struct.rpc_task* %58)
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %45
  %61 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %62 = call i32 @rpc_put_task(%struct.rpc_task* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %57, %40
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nfs_igrab_and_active(i32) #1

declare dso_local i32 @nfs42_layoutstat_release(%struct.nfs42_layoutstat_data*) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

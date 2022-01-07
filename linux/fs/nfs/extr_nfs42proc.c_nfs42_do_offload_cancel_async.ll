; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_do_offload_cancel_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_do_offload_cancel_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_server = type { i32, i32 }
%struct.nfs42_offloadcancel_data = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.nfs_server* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nfs_open_context = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32* }
%struct.rpc_task_setup = type { %struct.nfs42_offloadcancel_data*, i32, i32, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OFFLOAD_CANCEL = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs42_offload_cancel_ops = common dso_local global i32 0, align 4
@NFS_CAP_OFFLOAD_CANCEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @nfs42_do_offload_cancel_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs42_do_offload_cancel_async(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs42_offloadcancel_data*, align 8
  %8 = alloca %struct.nfs_open_context*, align 8
  %9 = alloca %struct.rpc_task*, align 8
  %10 = alloca %struct.rpc_message, align 8
  %11 = alloca %struct.rpc_task_setup, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call i32 @file_inode(%struct.file* %13)
  %15 = call %struct.nfs_server* @NFS_SERVER(i32 %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %6, align 8
  store %struct.nfs42_offloadcancel_data* null, %struct.nfs42_offloadcancel_data** %7, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %16)
  store %struct.nfs_open_context* %17, %struct.nfs_open_context** %8, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %21 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 3
  %25 = load i32*, i32** @nfs4_procedures, align 8
  %26 = load i64, i64* @NFSPROC4_CLNT_OFFLOAD_CANCEL, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %24, align 8
  %28 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 0
  store %struct.nfs42_offloadcancel_data* null, %struct.nfs42_offloadcancel_data** %28, align 8
  %29 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 1
  %30 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 2
  %32 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 3
  store i32* @nfs42_offload_cancel_ops, i32** %33, align 8
  %34 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 4
  store %struct.rpc_message* %10, %struct.rpc_message** %34, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 5
  %36 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NFS_CAP_OFFLOAD_CANCEL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %111

48:                                               ; preds = %2
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = call %struct.nfs42_offloadcancel_data* @kzalloc(i32 24, i32 %49)
  store %struct.nfs42_offloadcancel_data* %50, %struct.nfs42_offloadcancel_data** %7, align 8
  %51 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %52 = icmp eq %struct.nfs42_offloadcancel_data* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %111

56:                                               ; preds = %48
  %57 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %58 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %59 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %58, i32 0, i32 2
  store %struct.nfs_server* %57, %struct.nfs_server** %59, align 8
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = call i32 @file_inode(%struct.file* %60)
  %62 = call i32 @NFS_FH(i32 %61)
  %63 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %64 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %67 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @memcpy(i32* %68, i32* %69, i32 4)
  %71 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %72 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %73, align 8
  %74 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %75 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %78 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %11, i32 0, i32 0
  store %struct.nfs42_offloadcancel_data* %77, %struct.nfs42_offloadcancel_data** %78, align 8
  %79 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %80 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load %struct.nfs42_offloadcancel_data*, %struct.nfs42_offloadcancel_data** %7, align 8
  %83 = getelementptr inbounds %struct.nfs42_offloadcancel_data, %struct.nfs42_offloadcancel_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @nfs4_init_sequence(i32* %81, i32* %84, i32 1, i32 0)
  %86 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %11)
  store %struct.rpc_task* %86, %struct.rpc_task** %9, align 8
  %87 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %88 = call i64 @IS_ERR(%struct.rpc_task* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %56
  %91 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %92 = call i32 @PTR_ERR(%struct.rpc_task* %91)
  store i32 %92, i32* %3, align 4
  br label %111

93:                                               ; preds = %56
  %94 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %95 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32, i32* @NFS_CAP_OFFLOAD_CANCEL, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %104 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %109 = call i32 @rpc_put_task(%struct.rpc_task* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %90, %53, %45
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.nfs42_offloadcancel_data* @kzalloc(i32, i32) #1

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

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

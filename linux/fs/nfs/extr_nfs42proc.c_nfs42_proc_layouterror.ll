; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_layouterror.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_layouterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs42_layout_error = type { i32 }
%struct.nfs42_layouterror_data = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.nfs42_layout_error* }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32* }
%struct.rpc_task_setup = type { i32, %struct.nfs42_layouterror_data*, i32, i32*, %struct.rpc_message* }
%struct.TYPE_8__ = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LAYOUTERROR = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfs42_layouterror_ops = common dso_local global i32 0, align 4
@NFS_CAP_LAYOUTERROR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFS42_LAYOUTERROR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs42_proc_layouterror(%struct.pnfs_layout_segment* %0, %struct.nfs42_layout_error* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.nfs42_layout_error*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nfs42_layouterror_data*, align 8
  %10 = alloca %struct.rpc_task*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  %13 = alloca i32, align 4
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %5, align 8
  store %struct.nfs42_layout_error* %1, %struct.nfs42_layout_error** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %15 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %20, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %22 = load i32*, i32** @nfs4_procedures, align 8
  %23 = load i64, i64* @NFSPROC4_CLNT_LAYOUTERROR, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  store %struct.nfs42_layouterror_data* null, %struct.nfs42_layouterror_data** %26, align 8
  %27 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %28 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  store i32* @nfs42_layouterror_ops, i32** %29, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store %struct.rpc_message* %11, %struct.rpc_message** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load i32, i32* @NFS_CAP_LAYOUTERROR, align 4
  %33 = call i32 @nfs_server_capable(%struct.inode* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %118

38:                                               ; preds = %3
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @NFS42_LAYOUTERROR_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %118

45:                                               ; preds = %38
  %46 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %47 = load i32, i32* @GFP_NOFS, align 4
  %48 = call %struct.nfs42_layouterror_data* @nfs42_alloc_layouterror_data(%struct.pnfs_layout_segment* %46, i32 %47)
  store %struct.nfs42_layouterror_data* %48, %struct.nfs42_layouterror_data** %9, align 8
  %49 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %50 = icmp ne %struct.nfs42_layouterror_data* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %118

54:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %84, %54
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %62 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.nfs42_layout_error*, %struct.nfs42_layout_error** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nfs42_layout_error, %struct.nfs42_layout_error* %64, i64 %66
  %68 = load %struct.nfs42_layout_error*, %struct.nfs42_layout_error** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nfs42_layout_error, %struct.nfs42_layout_error* %68, i64 %70
  %72 = bitcast %struct.nfs42_layout_error* %67 to i8*
  %73 = bitcast %struct.nfs42_layout_error* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %75 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %80 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %60
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %55

87:                                               ; preds = %55
  %88 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %89 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %90, align 8
  %91 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %92 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %93, align 8
  %94 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %95 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  store %struct.nfs42_layouterror_data* %94, %struct.nfs42_layouterror_data** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = call %struct.TYPE_8__* @NFS_SERVER(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %102 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.nfs42_layouterror_data*, %struct.nfs42_layouterror_data** %9, align 8
  %105 = getelementptr inbounds %struct.nfs42_layouterror_data, %struct.nfs42_layouterror_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @nfs4_init_sequence(i32* %103, i32* %106, i32 0, i32 0)
  %108 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %108, %struct.rpc_task** %10, align 8
  %109 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %110 = call i64 @IS_ERR(%struct.rpc_task* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %87
  %113 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %114 = call i32 @PTR_ERR(%struct.rpc_task* %113)
  store i32 %114, i32* %4, align 4
  br label %118

115:                                              ; preds = %87
  %116 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %117 = call i32 @rpc_put_task(%struct.rpc_task* %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %112, %51, %42, %35
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local %struct.nfs42_layouterror_data* @nfs42_alloc_layouterror_data(%struct.pnfs_layout_segment*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_8__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs_renamedata = type { {}*, %struct.inode*, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i8*, i8*, %struct.inode*, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32*, i8*, i32*, i8* }
%struct.rpc_message = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.rpc_task_setup = type { %struct.nfs_renamedata*, i32, i32, i32, i32*, %struct.rpc_message* }
%struct.TYPE_6__ = type { i32 (%struct.rpc_message*, %struct.dentry*, %struct.dentry*)* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs_rename_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_task* @nfs_async_rename(%struct.inode* %0, %struct.inode* %1, %struct.dentry* %2, %struct.dentry* %3, void (%struct.rpc_task*, %struct.nfs_renamedata*)* %4) #0 {
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca void (%struct.rpc_task*, %struct.nfs_renamedata*)*, align 8
  %12 = alloca %struct.nfs_renamedata*, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.rpc_task_setup, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store void (%struct.rpc_task*, %struct.nfs_renamedata*)* %4, void (%struct.rpc_task*, %struct.nfs_renamedata*)** %11, align 8
  %15 = bitcast %struct.rpc_message* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  store %struct.nfs_renamedata* null, %struct.nfs_renamedata** %16, align 8
  %17 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 1
  %18 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 2
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i32 @NFS_CLIENT(%struct.inode* %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 3
  %23 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 4
  store i32* @nfs_rename_ops, i32** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 5
  store %struct.rpc_message* %13, %struct.rpc_message** %25, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nfs_renamedata* @kzalloc(i32 112, i32 %26)
  store %struct.nfs_renamedata* %27, %struct.nfs_renamedata** %12, align 8
  %28 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %29 = icmp eq %struct.nfs_renamedata* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.rpc_task* @ERR_PTR(i32 %32)
  store %struct.rpc_task* %33, %struct.rpc_task** %6, align 8
  br label %122

34:                                               ; preds = %5
  %35 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %36 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  store %struct.nfs_renamedata* %35, %struct.nfs_renamedata** %36, align 8
  %37 = call i32 (...) @get_current_cred()
  %38 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %39 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %41 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %44 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %45, align 8
  %46 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %47 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %52 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %51, i32 0, i32 1
  store %struct.inode* %50, %struct.inode** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = call i32 @ihold(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %57 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %56, i32 0, i32 8
  store %struct.inode* %55, %struct.inode** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call i32 @ihold(%struct.inode* %58)
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = call i8* @dget(%struct.dentry* %60)
  %62 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %63 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.dentry*, %struct.dentry** %10, align 8
  %65 = call i8* @dget(%struct.dentry* %64)
  %66 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %67 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %69 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %68, i32 0, i32 4
  %70 = call i32 @nfs_fattr_init(i32* %69)
  %71 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %72 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %71, i32 0, i32 2
  %73 = call i32 @nfs_fattr_init(i32* %72)
  %74 = load void (%struct.rpc_task*, %struct.nfs_renamedata*)*, void (%struct.rpc_task*, %struct.nfs_renamedata*)** %11, align 8
  %75 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %76 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to void (%struct.rpc_task*, %struct.nfs_renamedata*)**
  store void (%struct.rpc_task*, %struct.nfs_renamedata*)* %74, void (%struct.rpc_task*, %struct.nfs_renamedata*)** %77, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = call i8* @NFS_FH(%struct.inode* %78)
  %80 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %81 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load %struct.dentry*, %struct.dentry** %9, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 0
  %85 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %86 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32* %84, i32** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = call i8* @NFS_FH(%struct.inode* %88)
  %90 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %91 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load %struct.dentry*, %struct.dentry** %10, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %96 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32* %94, i32** %97, align 8
  %98 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %99 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %98, i32 0, i32 4
  %100 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %101 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32* %99, i32** %102, align 8
  %103 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %104 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %103, i32 0, i32 2
  %105 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %106 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32* %104, i32** %107, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nfs_sb_active(i32 %110)
  %112 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %12, align 8
  %113 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %112, i32 0, i32 1
  %114 = load %struct.inode*, %struct.inode** %113, align 8
  %115 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (%struct.rpc_message*, %struct.dentry*, %struct.dentry*)*, i32 (%struct.rpc_message*, %struct.dentry*, %struct.dentry*)** %116, align 8
  %118 = load %struct.dentry*, %struct.dentry** %9, align 8
  %119 = load %struct.dentry*, %struct.dentry** %10, align 8
  %120 = call i32 %117(%struct.rpc_message* %13, %struct.dentry* %118, %struct.dentry* %119)
  %121 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %14)
  store %struct.rpc_task* %121, %struct.rpc_task** %6, align 8
  br label %122

122:                                              ; preds = %34, %30
  %123 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  ret %struct.rpc_task* %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #2

declare dso_local %struct.nfs_renamedata* @kzalloc(i32, i32) #2

declare dso_local %struct.rpc_task* @ERR_PTR(i32) #2

declare dso_local i32 @get_current_cred(...) #2

declare dso_local i32 @ihold(%struct.inode*) #2

declare dso_local i8* @dget(%struct.dentry*) #2

declare dso_local i32 @nfs_fattr_init(i32*) #2

declare dso_local i8* @NFS_FH(%struct.inode*) #2

declare dso_local i32 @nfs_sb_active(i32) #2

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #2

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

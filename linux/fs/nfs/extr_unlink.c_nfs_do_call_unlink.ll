; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_do_call_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_do_call_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_unlinkdata = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rpc_message = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.rpc_task_setup = type { i32, i32, i32, %struct.nfs_unlinkdata*, i32*, %struct.rpc_message* }
%struct.rpc_task = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.rpc_message*, %struct.TYPE_7__*, %struct.inode*)* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs_unlink_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs_unlinkdata*)* @nfs_do_call_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_do_call_unlink(%struct.inode* %0, %struct.nfs_unlinkdata* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_unlinkdata*, align 8
  %5 = alloca %struct.rpc_message, align 8
  %6 = alloca %struct.rpc_task_setup, align 8
  %7 = alloca %struct.rpc_task*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_unlinkdata* %1, %struct.nfs_unlinkdata** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 0
  %10 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 1
  %14 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %14, i32 0, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 2
  %17 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %17, i32 0, i32 2
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %16, align 8
  %19 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 1
  %21 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 2
  %23 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 3
  %25 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  store %struct.nfs_unlinkdata* %25, %struct.nfs_unlinkdata** %24, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 4
  store i32* @nfs_unlink_ops, i32** %26, align 8
  %27 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 5
  store %struct.rpc_message* %5, %struct.rpc_message** %27, align 8
  %28 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.inode* @d_inode(i32 %32)
  store %struct.inode* %33, %struct.inode** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nfs_sb_active(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i32 @NFS_FH(%struct.inode* %38)
  %40 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %44 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nfs_fattr_init(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call %struct.TYPE_8__* @NFS_PROTO(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32 (%struct.rpc_message*, %struct.TYPE_7__*, %struct.inode*)*, i32 (%struct.rpc_message*, %struct.TYPE_7__*, %struct.inode*)** %50, align 8
  %52 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = call i32 %51(%struct.rpc_message* %5, %struct.TYPE_7__* %54, %struct.inode* %55)
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @NFS_CLIENT(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %6)
  store %struct.rpc_task* %60, %struct.rpc_task** %7, align 8
  %61 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %62 = call i32 @IS_ERR(%struct.rpc_task* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %2
  %65 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %66 = call i32 @rpc_put_task_async(%struct.rpc_task* %65)
  br label %67

67:                                               ; preds = %64, %2
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @nfs_sb_active(i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local %struct.TYPE_8__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i32 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task_async(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

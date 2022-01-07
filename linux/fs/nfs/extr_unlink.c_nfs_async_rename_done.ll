; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_rename_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_rename_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_renamedata = type { i32 (%struct.rpc_task*, %struct.nfs_renamedata*)*, i32, %struct.dentry*, %struct.inode*, %struct.inode* }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_task*, %struct.inode*, %struct.inode*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs_async_rename_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_rename_done(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_renamedata*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nfs_renamedata*
  store %struct.nfs_renamedata* %10, %struct.nfs_renamedata** %5, align 8
  %11 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %11, i32 0, i32 4
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %14, i32 0, i32 3
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %7, align 8
  %17 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %17, i32 0, i32 2
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %19, %struct.dentry** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @trace_nfs_sillyrename_rename(%struct.inode* %20, %struct.dentry* %21, %struct.inode* %22, i32 %25, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.rpc_task*, %struct.inode*, %struct.inode*)*, i32 (%struct.rpc_task*, %struct.inode*, %struct.inode*)** %32, align 8
  %34 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i32 %33(%struct.rpc_task* %34, %struct.inode* %35, %struct.inode* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %41 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %40)
  br label %54

42:                                               ; preds = %2
  %43 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %43, i32 0, i32 0
  %45 = load i32 (%struct.rpc_task*, %struct.nfs_renamedata*)*, i32 (%struct.rpc_task*, %struct.nfs_renamedata*)** %44, align 8
  %46 = icmp ne i32 (%struct.rpc_task*, %struct.nfs_renamedata*)* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %48, i32 0, i32 0
  %50 = load i32 (%struct.rpc_task*, %struct.nfs_renamedata*)*, i32 (%struct.rpc_task*, %struct.nfs_renamedata*)** %49, align 8
  %51 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %52 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %5, align 8
  %53 = call i32 %50(%struct.rpc_task* %51, %struct.nfs_renamedata* %52)
  br label %54

54:                                               ; preds = %39, %47, %42
  ret void
}

declare dso_local i32 @trace_nfs_sillyrename_rename(%struct.inode*, %struct.dentry*, %struct.inode*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

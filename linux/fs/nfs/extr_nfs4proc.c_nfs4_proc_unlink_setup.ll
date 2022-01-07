; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32*, %struct.nfs_removeres*, %struct.nfs_removeargs* }
%struct.nfs_removeres = type { i32, i32, i32 }
%struct.nfs_removeargs = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_REMOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_message*, %struct.dentry*, %struct.inode*)* @nfs4_proc_unlink_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_unlink_setup(%struct.rpc_message* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.rpc_message*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_removeargs*, align 8
  %8 = alloca %struct.nfs_removeres*, align 8
  store %struct.rpc_message* %0, %struct.rpc_message** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %9 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  %11 = load %struct.nfs_removeargs*, %struct.nfs_removeargs** %10, align 8
  store %struct.nfs_removeargs* %11, %struct.nfs_removeargs** %7, align 8
  %12 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 1
  %14 = load %struct.nfs_removeres*, %struct.nfs_removeres** %13, align 8
  store %struct.nfs_removeres* %14, %struct.nfs_removeres** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @NFS_SB(i32 %17)
  %19 = load %struct.nfs_removeres*, %struct.nfs_removeres** %8, align 8
  %20 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** @nfs4_procedures, align 8
  %22 = load i64, i64* @NFSPROC4_CLNT_REMOVE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.nfs_removeargs*, %struct.nfs_removeargs** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %26, i32 0, i32 0
  %28 = load %struct.nfs_removeres*, %struct.nfs_removeres** %8, align 8
  %29 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %28, i32 0, i32 1
  %30 = call i32 @nfs4_init_sequence(i32* %27, i32* %29, i32 1, i32 0)
  %31 = load %struct.nfs_removeres*, %struct.nfs_removeres** %8, align 8
  %32 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nfs_fattr_init(i32 %33)
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = icmp ne %struct.inode* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @nfs4_inode_return_delegation(%struct.inode* %38)
  br label %40

40:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @NFS_SB(i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_inode_return_delegation(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

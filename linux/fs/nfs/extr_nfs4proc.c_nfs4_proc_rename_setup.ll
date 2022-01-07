; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32*, %struct.nfs_renameres*, %struct.nfs_renameargs* }
%struct.nfs_renameres = type { i32, i32 }
%struct.nfs_renameargs = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_RENAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_message*, %struct.dentry*, %struct.dentry*)* @nfs4_proc_rename_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_rename_setup(%struct.rpc_message* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.rpc_message*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nfs_renameargs*, align 8
  %8 = alloca %struct.nfs_renameres*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.rpc_message* %0, %struct.rpc_message** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %11 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %13 = load %struct.nfs_renameargs*, %struct.nfs_renameargs** %12, align 8
  store %struct.nfs_renameargs* %13, %struct.nfs_renameargs** %7, align 8
  %14 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  %16 = load %struct.nfs_renameres*, %struct.nfs_renameres** %15, align 8
  store %struct.nfs_renameres* %16, %struct.nfs_renameres** %8, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call i32 @nfs4_inode_make_writeable(%struct.inode* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call i32 @nfs4_inode_return_delegation(%struct.inode* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** @nfs4_procedures, align 8
  %34 = load i64, i64* @NFSPROC4_CLNT_RENAME, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NFS_SB(i32 %40)
  %42 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %43 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nfs_renameargs*, %struct.nfs_renameargs** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %44, i32 0, i32 0
  %46 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %47 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %46, i32 0, i32 0
  %48 = call i32 @nfs4_init_sequence(i32* %45, i32* %47, i32 1, i32 0)
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @nfs4_inode_make_writeable(%struct.inode*) #1

declare dso_local i32 @nfs4_inode_return_delegation(%struct.inode*) #1

declare dso_local i32 @NFS_SB(i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

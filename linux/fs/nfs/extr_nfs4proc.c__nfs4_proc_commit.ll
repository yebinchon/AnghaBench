; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_commitargs = type { i32, i32 }
%struct.nfs_commitres = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.rpc_message = type { %struct.nfs_commitres*, %struct.nfs_commitargs*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.nfs_commitargs*, %struct.nfs_commitres*)* @_nfs4_proc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_commit(%struct.file* %0, %struct.nfs_commitargs* %1, %struct.nfs_commitres* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.nfs_commitargs*, align 8
  %6 = alloca %struct.nfs_commitres*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.rpc_message, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.nfs_commitargs* %1, %struct.nfs_commitargs** %5, align 8
  store %struct.nfs_commitres* %2, %struct.nfs_commitres** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %8, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  %15 = load %struct.nfs_commitres*, %struct.nfs_commitres** %6, align 8
  store %struct.nfs_commitres* %15, %struct.nfs_commitres** %14, align 8
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  %17 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %5, align 8
  store %struct.nfs_commitargs* %17, %struct.nfs_commitargs** %16, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  %19 = load i32*, i32** @nfs4_procedures, align 8
  %20 = load i64, i64* @NFSPROC4_CLNT_COMMIT, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %18, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @NFS_FH(%struct.inode* %22)
  %24 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %30 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %30, i32 0, i32 0
  %32 = load %struct.nfs_commitres*, %struct.nfs_commitres** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_commitres, %struct.nfs_commitres* %32, i32 0, i32 0
  %34 = call i32 @nfs4_call_sync(i32 %28, %struct.nfs_server* %29, %struct.rpc_message* %9, i32* %31, i32* %33, i32 1)
  ret i32 %34
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

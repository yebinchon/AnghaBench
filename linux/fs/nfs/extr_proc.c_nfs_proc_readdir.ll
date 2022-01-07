; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.cred = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_readdirargs = type { i32, %struct.page**, i64, i32 }
%struct.rpc_message = type { %struct.cred*, %struct.nfs_readdirargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_READDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"NFS call  readdir %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply readdir: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.cred*, i64, %struct.page**, i32, i32)* @nfs_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_readdir(%struct.dentry* %0, %struct.cred* %1, i64 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.nfs_readdirargs, align 8
  %15 = alloca %struct.rpc_message, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.cred* %1, %struct.cred** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  store %struct.inode* %18, %struct.inode** %13, align 8
  %19 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 0
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 1
  %22 = load %struct.page**, %struct.page*** %10, align 8
  store %struct.page** %22, %struct.page*** %21, align 8
  %23 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 2
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 3
  %26 = load %struct.inode*, %struct.inode** %13, align 8
  %27 = call i32 @NFS_FH(%struct.inode* %26)
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 0
  %29 = load %struct.cred*, %struct.cred** %8, align 8
  store %struct.cred* %29, %struct.cred** %28, align 8
  %30 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 1
  store %struct.nfs_readdirargs* %14, %struct.nfs_readdirargs** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 2
  %32 = load i32*, i32** @nfs_procedures, align 8
  %33 = load i64, i64* @NFSPROC_READDIR, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %31, align 8
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.inode*, %struct.inode** %13, align 8
  %39 = call i32 @NFS_CLIENT(%struct.inode* %38)
  %40 = call i32 @rpc_call_sync(i32 %39, %struct.rpc_message* %15, i32 0)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.inode*, %struct.inode** %13, align 8
  %42 = call i32 @nfs_invalidate_atime(%struct.inode* %41)
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %16, align 4
  ret i32 %45
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_invalidate_atime(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

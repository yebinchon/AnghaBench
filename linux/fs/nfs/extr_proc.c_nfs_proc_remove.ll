; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_proc.c_nfs_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs_removeargs = type { i32, i32 }
%struct.rpc_message = type { %struct.nfs_removeargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_REMOVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"NFS call  remove %pd2\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply remove: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @nfs_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_remove(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nfs_removeargs, align 4
  %6 = alloca %struct.rpc_message, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %5, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %5, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 @NFS_FH(%struct.inode* %13)
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  store %struct.nfs_removeargs* %5, %struct.nfs_removeargs** %15, align 8
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  %17 = load i32*, i32** @nfs_procedures, align 8
  %18 = load i64, i64* @NFSPROC_REMOVE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %16, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.dentry* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @NFS_CLIENT(%struct.inode* %22)
  %24 = call i32 @rpc_call_sync(i32 %23, %struct.rpc_message* %6, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @nfs_mark_for_revalidate(%struct.inode* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

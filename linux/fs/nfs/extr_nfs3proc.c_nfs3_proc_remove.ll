; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs_removeargs = type { i32, i32 }
%struct.nfs_removeres = type { i32* }
%struct.rpc_message = type { %struct.nfs_removeres*, %struct.nfs_removeargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_REMOVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NFS call  remove %pd2\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply remove: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @nfs3_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_remove(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nfs_removeargs, align 4
  %6 = alloca %struct.nfs_removeres, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %5, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %5, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @NFS_FH(%struct.inode* %14)
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.nfs_removeres* %6, %struct.nfs_removeres** %16, align 8
  %17 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  store %struct.nfs_removeargs* %5, %struct.nfs_removeargs** %17, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  %19 = load i32*, i32** @nfs3_procedures, align 8
  %20 = load i64, i64* @NFS3PROC_REMOVE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %18, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.dentry* %24)
  %26 = call i32* (...) @nfs_alloc_fattr()
  %27 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @NFS_CLIENT(%struct.inode* %33)
  %35 = call i32 @rpc_call_sync(i32 %34, %struct.rpc_message* %7, i32 0)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @nfs_post_op_update_inode(%struct.inode* %36, i32* %38)
  %40 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @nfs_free_fattr(i32* %41)
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

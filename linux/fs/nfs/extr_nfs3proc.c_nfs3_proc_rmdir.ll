; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs3_diropargs = type { i32, i32, i32 }
%struct.rpc_message = type { %struct.nfs_fattr*, %struct.nfs3_diropargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_RMDIR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NFS call  rmdir %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"NFS reply rmdir: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @nfs3_proc_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_rmdir(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.nfs3_diropargs, align 4
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %9 = getelementptr inbounds %struct.nfs3_diropargs, %struct.nfs3_diropargs* %6, i32 0, i32 0
  %10 = load %struct.qstr*, %struct.qstr** %4, align 8
  %11 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.nfs3_diropargs, %struct.nfs3_diropargs* %6, i32 0, i32 1
  %14 = load %struct.qstr*, %struct.qstr** %4, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.nfs3_diropargs, %struct.nfs3_diropargs* %6, i32 0, i32 2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call i32 @NFS_FH(%struct.inode* %18)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %20, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  store %struct.nfs3_diropargs* %6, %struct.nfs3_diropargs** %21, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  %23 = load i32*, i32** @nfs3_procedures, align 8
  %24 = load i64, i64* @NFS3PROC_RMDIR, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.qstr*, %struct.qstr** %4, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %32, %struct.nfs_fattr** %5, align 8
  %33 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %34 = icmp eq %struct.nfs_fattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %38 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.nfs_fattr* %37, %struct.nfs_fattr** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call i32 @NFS_CLIENT(%struct.inode* %39)
  %41 = call i32 @rpc_call_sync(i32 %40, %struct.rpc_message* %7, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %44 = call i32 @nfs_post_op_update_inode(%struct.inode* %42, %struct.nfs_fattr* %43)
  %45 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %46 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %45)
  br label %47

47:                                               ; preds = %36, %35
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

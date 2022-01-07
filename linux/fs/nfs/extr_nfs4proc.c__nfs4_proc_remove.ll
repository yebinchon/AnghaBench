; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.qstr = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_removeargs = type { i32, %struct.qstr, i32 }
%struct.nfs_removeres = type { i32, i32, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs_removeres*, %struct.nfs_removeargs*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_REMOVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@NF4DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, i64)* @_nfs4_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_remove(%struct.inode* %0, %struct.qstr* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs_removeargs, align 4
  %9 = alloca %struct.nfs_removeres, align 8
  %10 = alloca %struct.rpc_message, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %13)
  store %struct.nfs_server* %14, %struct.nfs_server** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %8, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %8, i32 0, i32 1
  %17 = load %struct.qstr*, %struct.qstr** %5, align 8
  %18 = bitcast %struct.qstr* %16 to i8*
  %19 = bitcast %struct.qstr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %8, i32 0, i32 2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @NFS_FH(%struct.inode* %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %9, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %9, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %9, i32 0, i32 2
  %26 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  store %struct.nfs_server* %26, %struct.nfs_server** %25, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.nfs_removeres* %9, %struct.nfs_removeres** %27, align 8
  %28 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.nfs_removeargs* %8, %struct.nfs_removeargs** %28, align 8
  %29 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %30 = load i32*, i32** @nfs4_procedures, align 8
  %31 = load i64, i64* @NFSPROC4_CLNT_REMOVE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %29, align 8
  %33 = load i64, i64* @jiffies, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %38 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %9, i32 0, i32 1
  %40 = call i32 @nfs4_call_sync(i32 %36, %struct.nfs_server* %37, %struct.rpc_message* %10, i32* %38, i32* %39, i32 1)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %3
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %9, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @update_changeattr_locked(%struct.inode* %47, i32* %48, i64 %49, i32 0)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @NF4DIR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %43
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call i32 @nfs4_dec_nlink_locked(%struct.inode* %60)
  br label %62

62:                                               ; preds = %59, %54, %43
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %3
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_changeattr_locked(%struct.inode*, i32*, i64, i32) #1

declare dso_local i32 @nfs4_dec_nlink_locked(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

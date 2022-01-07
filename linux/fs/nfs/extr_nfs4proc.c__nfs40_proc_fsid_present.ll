; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs40_proc_fsid_present.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs40_proc_fsid_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_fsid_present_res = type { i32, i32*, i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_server = type { %struct.rpc_clnt*, %struct.nfs_client* }
%struct.rpc_clnt = type { i32 }
%struct.nfs_client = type { i32 }
%struct.nfs4_fsid_present_arg = type { i32, i32, i32, i32 }
%struct.rpc_message = type { %struct.cred*, %struct.nfs4_fsid_present_res*, %struct.nfs4_fsid_present_arg*, i32* }

@__const._nfs40_proc_fsid_present.res = private unnamed_addr constant %struct.nfs4_fsid_present_res { i32 1, i32* null, i32 0 }, align 8
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_FSID_PRESENT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.cred*)* @_nfs40_proc_fsid_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs40_proc_fsid_present(%struct.inode* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.rpc_clnt*, align 8
  %9 = alloca %struct.nfs4_fsid_present_arg, align 4
  %10 = alloca %struct.nfs4_fsid_present_res, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 1
  %19 = load %struct.nfs_client*, %struct.nfs_client** %18, align 8
  store %struct.nfs_client* %19, %struct.nfs_client** %7, align 8
  %20 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %20, i32 0, i32 0
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %21, align 8
  store %struct.rpc_clnt* %22, %struct.rpc_clnt** %8, align 8
  %23 = getelementptr inbounds %struct.nfs4_fsid_present_arg, %struct.nfs4_fsid_present_arg* %9, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.nfs4_fsid_present_arg, %struct.nfs4_fsid_present_arg* %9, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nfs4_fsid_present_arg, %struct.nfs4_fsid_present_arg* %9, i32 0, i32 2
  %26 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.nfs4_fsid_present_arg, %struct.nfs4_fsid_present_arg* %9, i32 0, i32 3
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i32 @NFS_FH(%struct.inode* %30)
  store i32 %31, i32* %29, align 4
  %32 = bitcast %struct.nfs4_fsid_present_res* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.nfs4_fsid_present_res* @__const._nfs40_proc_fsid_present.res to i8*), i64 24, i1 false)
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  %34 = load %struct.cred*, %struct.cred** %5, align 8
  store %struct.cred* %34, %struct.cred** %33, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.nfs4_fsid_present_res* %10, %struct.nfs4_fsid_present_res** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  store %struct.nfs4_fsid_present_arg* %9, %struct.nfs4_fsid_present_arg** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 3
  %38 = load i32*, i32** @nfs4_procedures, align 8
  %39 = load i64, i64* @NFSPROC4_CLNT_FSID_PRESENT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %37, align 8
  %41 = load i64, i64* @jiffies, align 8
  store i64 %41, i64* %12, align 8
  %42 = call i32* (...) @nfs_alloc_fhandle()
  %43 = getelementptr inbounds %struct.nfs4_fsid_present_res, %struct.nfs4_fsid_present_res* %10, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.nfs4_fsid_present_res, %struct.nfs4_fsid_present_res* %10, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %70

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.nfs4_fsid_present_arg, %struct.nfs4_fsid_present_arg* %9, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nfs4_fsid_present_res, %struct.nfs4_fsid_present_res* %10, i32 0, i32 2
  %53 = call i32 @nfs4_init_sequence(i32* %51, i32* %52, i32 0, i32 1)
  %54 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %55 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %56 = getelementptr inbounds %struct.nfs4_fsid_present_arg, %struct.nfs4_fsid_present_arg* %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nfs4_fsid_present_res, %struct.nfs4_fsid_present_res* %10, i32 0, i32 2
  %58 = call i32 @nfs4_call_sync_sequence(%struct.rpc_clnt* %54, %struct.nfs_server* %55, %struct.rpc_message* %11, i32* %56, i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = getelementptr inbounds %struct.nfs4_fsid_present_res, %struct.nfs4_fsid_present_res* %10, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @nfs_free_fhandle(i32* %60)
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %50
  %67 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @do_renew_lease(%struct.nfs_client* %67, i64 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %47
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @nfs_alloc_fhandle(...) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_call_sync_sequence(%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*) #1

declare dso_local i32 @nfs_free_fhandle(i32*) #1

declare dso_local i32 @do_renew_lease(%struct.nfs_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_lookupp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_lookupp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.rpc_clnt = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_lookupp_arg = type { i32, i32, i32 }
%struct.nfs4_lookupp_res = type { i32, %struct.nfs_fh*, %struct.nfs4_label*, %struct.nfs_fattr*, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs4_lookupp_res*, %struct.nfs4_lookupp_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOOKUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"NFS call  lookupp ino=0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply lookupp: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* @_nfs4_proc_lookupp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_lookupp(%struct.inode* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.nfs4_label*, align 8
  %9 = alloca %struct.rpc_clnt*, align 8
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs4_lookupp_arg, align 4
  %13 = alloca %struct.nfs4_lookupp_res, align 8
  %14 = alloca %struct.rpc_message, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %15)
  store %struct.rpc_clnt* %16, %struct.rpc_clnt** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %17)
  store %struct.nfs_server* %18, %struct.nfs_server** %10, align 8
  %19 = getelementptr inbounds %struct.nfs4_lookupp_arg, %struct.nfs4_lookupp_arg* %12, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.nfs4_lookupp_arg, %struct.nfs4_lookupp_arg* %12, i32 0, i32 1
  %21 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.nfs4_lookupp_arg, %struct.nfs4_lookupp_arg* %12, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @NFS_FH(%struct.inode* %25)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.nfs4_lookupp_res, %struct.nfs4_lookupp_res* %13, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.nfs4_lookupp_res, %struct.nfs4_lookupp_res* %13, i32 0, i32 1
  %29 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fh* %29, %struct.nfs_fh** %28, align 8
  %30 = getelementptr inbounds %struct.nfs4_lookupp_res, %struct.nfs4_lookupp_res* %13, i32 0, i32 2
  %31 = load %struct.nfs4_label*, %struct.nfs4_label** %8, align 8
  store %struct.nfs4_label* %31, %struct.nfs4_label** %30, align 8
  %32 = getelementptr inbounds %struct.nfs4_lookupp_res, %struct.nfs4_lookupp_res* %13, i32 0, i32 3
  %33 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  store %struct.nfs_fattr* %33, %struct.nfs_fattr** %32, align 8
  %34 = getelementptr inbounds %struct.nfs4_lookupp_res, %struct.nfs4_lookupp_res* %13, i32 0, i32 4
  %35 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  store %struct.nfs_server* %35, %struct.nfs_server** %34, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.nfs4_lookupp_res* %13, %struct.nfs4_lookupp_res** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  store %struct.nfs4_lookupp_arg* %12, %struct.nfs4_lookupp_arg** %37, align 8
  %38 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  %39 = load i32*, i32** @nfs4_procedures, align 8
  %40 = load i64, i64* @NFSPROC4_CLNT_LOOKUPP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %38, align 8
  %42 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %43 = load %struct.nfs4_label*, %struct.nfs4_label** %8, align 8
  %44 = call i32 @nfs4_bitmask(%struct.nfs_server* %42, %struct.nfs4_label* %43)
  %45 = getelementptr inbounds %struct.nfs4_lookupp_arg, %struct.nfs4_lookupp_arg* %12, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %47 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %46)
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  %53 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %54 = getelementptr inbounds %struct.nfs4_lookupp_arg, %struct.nfs4_lookupp_arg* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.nfs4_lookupp_res, %struct.nfs4_lookupp_res* %13, i32 0, i32 0
  %56 = call i32 @nfs4_call_sync(%struct.rpc_clnt* %52, %struct.nfs_server* %53, %struct.rpc_message* %14, i32* %54, i32* %55, i32 0)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local %struct.rpc_clnt* @NFS_CLIENT(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_bitmask(%struct.nfs_server*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @nfs4_call_sync(%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

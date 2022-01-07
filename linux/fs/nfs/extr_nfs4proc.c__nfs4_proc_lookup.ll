; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_lookup_arg = type { i32, i32, %struct.qstr*, i32 }
%struct.nfs4_lookup_res = type { i32, %struct.nfs_fh*, %struct.nfs4_label*, %struct.nfs_fattr*, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs4_lookup_res*, %struct.nfs4_lookup_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOOKUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"NFS call  lookup %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply lookup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* @_nfs4_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_lookup(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2, %struct.nfs_fh* %3, %struct.nfs_fattr* %4, %struct.nfs4_label* %5) #0 {
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.nfs_fh*, align 8
  %11 = alloca %struct.nfs_fattr*, align 8
  %12 = alloca %struct.nfs4_label*, align 8
  %13 = alloca %struct.nfs_server*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfs4_lookup_arg, align 8
  %16 = alloca %struct.nfs4_lookup_res, align 8
  %17 = alloca %struct.rpc_message, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.nfs_fh* %3, %struct.nfs_fh** %10, align 8
  store %struct.nfs_fattr* %4, %struct.nfs_fattr** %11, align 8
  store %struct.nfs4_label* %5, %struct.nfs4_label** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %13, align 8
  %20 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %15, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %15, i32 0, i32 1
  %22 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %15, i32 0, i32 2
  %26 = load %struct.qstr*, %struct.qstr** %9, align 8
  store %struct.qstr* %26, %struct.qstr** %25, align 8
  %27 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %15, i32 0, i32 3
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @NFS_FH(%struct.inode* %28)
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %16, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %16, i32 0, i32 1
  %32 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  store %struct.nfs_fh* %32, %struct.nfs_fh** %31, align 8
  %33 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %16, i32 0, i32 2
  %34 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  store %struct.nfs4_label* %34, %struct.nfs4_label** %33, align 8
  %35 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %16, i32 0, i32 3
  %36 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  store %struct.nfs_fattr* %36, %struct.nfs_fattr** %35, align 8
  %37 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %16, i32 0, i32 4
  %38 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  store %struct.nfs_server* %38, %struct.nfs_server** %37, align 8
  %39 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 0
  store %struct.nfs4_lookup_res* %16, %struct.nfs4_lookup_res** %39, align 8
  %40 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 1
  store %struct.nfs4_lookup_arg* %15, %struct.nfs4_lookup_arg** %40, align 8
  %41 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 2
  %42 = load i32*, i32** @nfs4_procedures, align 8
  %43 = load i64, i64* @NFSPROC4_CLNT_LOOKUP, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %41, align 8
  %45 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %46 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  %47 = call i32 @nfs4_bitmask(%struct.nfs_server* %45, %struct.nfs4_label* %46)
  %48 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %15, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %50 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %49)
  %51 = load %struct.qstr*, %struct.qstr** %9, align 8
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %56 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %57 = getelementptr inbounds %struct.nfs4_lookup_arg, %struct.nfs4_lookup_arg* %15, i32 0, i32 0
  %58 = getelementptr inbounds %struct.nfs4_lookup_res, %struct.nfs4_lookup_res* %16, i32 0, i32 0
  %59 = call i32 @nfs4_call_sync(%struct.rpc_clnt* %55, %struct.nfs_server* %56, %struct.rpc_message* %17, i32* %57, i32* %58, i32 0)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %14, align 4
  ret i32 %62
}

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

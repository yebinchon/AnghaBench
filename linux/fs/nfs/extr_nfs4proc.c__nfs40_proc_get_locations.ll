; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs40_proc_get_locations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs40_proc_get_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs4_fs_locations = type { i64, %struct.nfs_server*, i32 }
%struct.nfs_server = type { %struct.TYPE_2__*, %struct.rpc_clnt* }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_clnt = type { i32 }
%struct.page = type { i32 }
%struct.cred = type { i32 }
%struct.nfs4_fs_locations_arg = type { i32*, i32, i32, i32, %struct.page*, i32, i32 }
%struct.nfs4_fs_locations_res = type { i32, i32, i32, %struct.nfs4_fs_locations* }
%struct.rpc_message = type { %struct.cred*, %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_arg*, i32* }

@FATTR4_WORD0_FSID = common dso_local global i32 0, align 4
@FATTR4_WORD0_FS_LOCATIONS = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_FS_LOCATIONS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs4_fs_locations*, %struct.page*, %struct.cred*)* @_nfs40_proc_get_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs40_proc_get_locations(%struct.inode* %0, %struct.nfs4_fs_locations* %1, %struct.page* %2, %struct.cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs4_fs_locations*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.rpc_clnt*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.nfs4_fs_locations_arg, align 8
  %14 = alloca %struct.nfs4_fs_locations_res, align 8
  %15 = alloca %struct.rpc_message, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.nfs4_fs_locations* %1, %struct.nfs4_fs_locations** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.cred* %3, %struct.cred** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %10, align 8
  %20 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %21 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %20, i32 0, i32 1
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %21, align 8
  store %struct.rpc_clnt* %22, %struct.rpc_clnt** %11, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %24 = load i32, i32* @FATTR4_WORD0_FSID, align 4
  %25 = load i32, i32* @FATTR4_WORD0_FS_LOCATIONS, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds i32, i32* %23, i64 1
  %28 = getelementptr inbounds i32, i32* %23, i64 2
  br label %29

29:                                               ; preds = %29, %4
  %30 = phi i32* [ %27, %4 ], [ %31, %29 ]
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = icmp eq i32* %31, %28
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 0
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %35, i32** %34, align 8
  %36 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 3
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 4
  %40 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %40, %struct.page** %39, align 8
  %41 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 5
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @NFS_FH(%struct.inode* %42)
  store i32 %43, i32* %41, align 8
  %44 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 6
  %45 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %44, align 4
  %50 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %14, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %14, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %14, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %14, i32 0, i32 3
  %54 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %7, align 8
  store %struct.nfs4_fs_locations* %54, %struct.nfs4_fs_locations** %53, align 8
  %55 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 0
  %56 = load %struct.cred*, %struct.cred** %9, align 8
  store %struct.cred* %56, %struct.cred** %55, align 8
  %57 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 1
  store %struct.nfs4_fs_locations_res* %14, %struct.nfs4_fs_locations_res** %57, align 8
  %58 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 2
  store %struct.nfs4_fs_locations_arg* %13, %struct.nfs4_fs_locations_arg** %58, align 8
  %59 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 3
  %60 = load i32*, i32** @nfs4_procedures, align 8
  %61 = load i64, i64* @NFSPROC4_CLNT_FS_LOCATIONS, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %59, align 8
  %63 = load i64, i64* @jiffies, align 8
  store i64 %63, i64* %16, align 8
  %64 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %7, align 8
  %65 = getelementptr inbounds %struct.nfs4_fs_locations, %struct.nfs4_fs_locations* %64, i32 0, i32 2
  %66 = call i32 @nfs_fattr_init(i32* %65)
  %67 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %68 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %7, align 8
  %69 = getelementptr inbounds %struct.nfs4_fs_locations, %struct.nfs4_fs_locations* %68, i32 0, i32 1
  store %struct.nfs_server* %67, %struct.nfs_server** %69, align 8
  %70 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %7, align 8
  %71 = getelementptr inbounds %struct.nfs4_fs_locations, %struct.nfs4_fs_locations* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 3
  %73 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %14, i32 0, i32 2
  %74 = call i32 @nfs4_init_sequence(i32* %72, i32* %73, i32 0, i32 1)
  %75 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %76 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %77 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %13, i32 0, i32 3
  %78 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %14, i32 0, i32 2
  %79 = call i32 @nfs4_call_sync_sequence(%struct.rpc_clnt* %75, %struct.nfs_server* %76, %struct.rpc_message* %15, i32* %77, i32* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %33
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %5, align 4
  br label %88

84:                                               ; preds = %33
  %85 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i32 @renew_lease(%struct.nfs_server* %85, i64 %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %82
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_call_sync_sequence(%struct.rpc_clnt*, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*) #1

declare dso_local i32 @renew_lease(%struct.nfs_server*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

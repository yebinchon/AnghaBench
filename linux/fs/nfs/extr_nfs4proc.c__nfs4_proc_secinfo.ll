; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_secinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs4_secinfo_flavors = type { i32 }
%struct.rpc_clnt = type { i32 }
%struct.nfs_client = type { %struct.rpc_clnt*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_secinfo_arg = type { i32, %struct.qstr*, i32 }
%struct.nfs4_secinfo_res = type { i32, %struct.nfs4_secinfo_flavors* }
%struct.rpc_message = type { %struct.cred*, %struct.nfs4_secinfo_res*, %struct.nfs4_secinfo_arg*, i32* }
%struct.cred = type { i32 }
%struct.nfs4_call_sync_data = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nfs_client*, %struct.rpc_clnt* }
%struct.rpc_task_setup = type { %struct.rpc_clnt*, i32, %struct.nfs4_call_sync_data*, i32, %struct.rpc_message* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SECINFO = common dso_local global i64 0, align 8
@RPC_TASK_NO_ROUND_ROBIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NFS call  secinfo %s\0A\00", align 1
@NFS_SP4_MACH_CRED_SECINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"NFS reply  secinfo: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.nfs4_secinfo_flavors*, i32)* @_nfs4_proc_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_secinfo(%struct.inode* %0, %struct.qstr* %1, %struct.nfs4_secinfo_flavors* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.nfs4_secinfo_flavors*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_clnt*, align 8
  %11 = alloca %struct.nfs_client*, align 8
  %12 = alloca %struct.nfs4_secinfo_arg, align 8
  %13 = alloca %struct.nfs4_secinfo_res, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca %struct.nfs4_call_sync_data, align 8
  %16 = alloca %struct.rpc_task_setup, align 8
  %17 = alloca %struct.cred*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.nfs4_secinfo_flavors* %2, %struct.nfs4_secinfo_flavors** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_4__* @NFS_SERVER(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %20, align 8
  store %struct.rpc_clnt* %21, %struct.rpc_clnt** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_4__* @NFS_SERVER(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.nfs_client*, %struct.nfs_client** %24, align 8
  store %struct.nfs_client* %25, %struct.nfs_client** %11, align 8
  %26 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %12, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %12, i32 0, i32 1
  %28 = load %struct.qstr*, %struct.qstr** %6, align 8
  store %struct.qstr* %28, %struct.qstr** %27, align 8
  %29 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %12, i32 0, i32 2
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @NFS_FH(%struct.inode* %30)
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %13, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %13, i32 0, i32 1
  %34 = load %struct.nfs4_secinfo_flavors*, %struct.nfs4_secinfo_flavors** %7, align 8
  store %struct.nfs4_secinfo_flavors* %34, %struct.nfs4_secinfo_flavors** %33, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.cred* null, %struct.cred** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  store %struct.nfs4_secinfo_res* %13, %struct.nfs4_secinfo_res** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  store %struct.nfs4_secinfo_arg* %12, %struct.nfs4_secinfo_arg** %37, align 8
  %38 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 3
  %39 = load i32*, i32** @nfs4_procedures, align 8
  %40 = load i64, i64* @NFSPROC4_CLNT_SECINFO, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %38, align 8
  %42 = getelementptr inbounds %struct.nfs4_call_sync_data, %struct.nfs4_call_sync_data* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %13, i32 0, i32 0
  store i32* %43, i32** %42, align 8
  %44 = getelementptr inbounds %struct.nfs4_call_sync_data, %struct.nfs4_call_sync_data* %15, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %12, i32 0, i32 0
  store i32* %45, i32** %44, align 8
  %46 = getelementptr inbounds %struct.nfs4_call_sync_data, %struct.nfs4_call_sync_data* %15, i32 0, i32 2
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call %struct.TYPE_4__* @NFS_SERVER(%struct.inode* %47)
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %46, align 8
  %49 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 0
  %50 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  store %struct.rpc_clnt* %50, %struct.rpc_clnt** %49, align 8
  %51 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 1
  %52 = load i32, i32* @RPC_TASK_NO_ROUND_ROBIN, align 4
  store i32 %52, i32* %51, align 8
  %53 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 2
  store %struct.nfs4_call_sync_data* %15, %struct.nfs4_call_sync_data** %53, align 8
  %54 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 3
  %55 = load %struct.nfs_client*, %struct.nfs_client** %11, align 8
  %56 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %54, align 8
  %60 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 4
  store %struct.rpc_message* %14, %struct.rpc_message** %60, align 8
  store %struct.cred* null, %struct.cred** %17, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %4
  %64 = load %struct.nfs_client*, %struct.nfs_client** %11, align 8
  %65 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %64, i32 0, i32 0
  %66 = load %struct.rpc_clnt*, %struct.rpc_clnt** %65, align 8
  store %struct.rpc_clnt* %66, %struct.rpc_clnt** %10, align 8
  %67 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  %68 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 0
  store %struct.rpc_clnt* %67, %struct.rpc_clnt** %68, align 8
  %69 = load %struct.nfs_client*, %struct.nfs_client** %11, align 8
  %70 = call %struct.cred* @nfs4_get_clid_cred(%struct.nfs_client* %69)
  store %struct.cred* %70, %struct.cred** %17, align 8
  %71 = load %struct.cred*, %struct.cred** %17, align 8
  %72 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.cred* %71, %struct.cred** %72, align 8
  br label %73

73:                                               ; preds = %63, %4
  %74 = load %struct.qstr*, %struct.qstr** %6, align 8
  %75 = getelementptr inbounds %struct.qstr, %struct.qstr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.nfs_client*, %struct.nfs_client** %11, align 8
  %79 = load i32, i32* @NFS_SP4_MACH_CRED_SECINFO, align 4
  %80 = call i32 @nfs4_state_protect(%struct.nfs_client* %78, i32 %79, %struct.rpc_clnt** %10, %struct.rpc_message* %14)
  %81 = getelementptr inbounds %struct.nfs4_secinfo_arg, %struct.nfs4_secinfo_arg* %12, i32 0, i32 0
  %82 = getelementptr inbounds %struct.nfs4_secinfo_res, %struct.nfs4_secinfo_res* %13, i32 0, i32 0
  %83 = call i32 @nfs4_init_sequence(i32* %81, i32* %82, i32 0, i32 0)
  %84 = call i32 @nfs4_call_sync_custom(%struct.rpc_task_setup* %16)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.cred*, %struct.cred** %17, align 8
  %88 = call i32 @put_cred(%struct.cred* %87)
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_4__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local %struct.cred* @nfs4_get_clid_cred(%struct.nfs_client*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @nfs4_state_protect(%struct.nfs_client*, i32, %struct.rpc_clnt**, %struct.rpc_message*) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_call_sync_custom(%struct.rpc_task_setup*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

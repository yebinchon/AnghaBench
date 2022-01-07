; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_commit_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_commit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_message = type { i32* }
%struct.rpc_clnt = type { i32 }

@nfs4_commit_done_cb = common dso_local global i32* null, align 8
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_COMMIT = common dso_local global i64 0, align 8
@NFS_SP4_MACH_CRED_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_data*, %struct.rpc_message*, %struct.rpc_clnt**)* @nfs4_proc_commit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_commit_setup(%struct.nfs_commit_data* %0, %struct.rpc_message* %1, %struct.rpc_clnt** %2) #0 {
  %4 = alloca %struct.nfs_commit_data*, align 8
  %5 = alloca %struct.rpc_message*, align 8
  %6 = alloca %struct.rpc_clnt**, align 8
  %7 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %4, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %5, align 8
  store %struct.rpc_clnt** %2, %struct.rpc_clnt*** %6, align 8
  %8 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nfs_server* @NFS_SERVER(i32 %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %7, align 8
  %12 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** @nfs4_commit_done_cb, align 8
  %18 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %22 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store %struct.nfs_server* %21, %struct.nfs_server** %24, align 8
  %25 = load i32*, i32** @nfs4_procedures, align 8
  %26 = load i64, i64* @NFSPROC4_CLNT_COMMIT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.rpc_message*, %struct.rpc_message** %5, align 8
  %29 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @nfs4_init_sequence(i32* %32, i32* %35, i32 1, i32 0)
  %37 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NFS_SP4_MACH_CRED_COMMIT, align 4
  %41 = load %struct.rpc_clnt**, %struct.rpc_clnt*** %6, align 8
  %42 = load %struct.rpc_message*, %struct.rpc_message** %5, align 8
  %43 = call i32 @nfs4_state_protect(i32 %39, i32 %40, %struct.rpc_clnt** %41, %struct.rpc_message* %42)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_state_protect(i32, i32, %struct.rpc_clnt**, %struct.rpc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_renew.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.cred = type { i32 }
%struct.rpc_message = type { %struct.cred*, %struct.nfs_client*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_RENEW = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.cred*)* @nfs4_proc_renew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_renew(%struct.nfs_client* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.rpc_message, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  %10 = load %struct.cred*, %struct.cred** %5, align 8
  store %struct.cred* %10, %struct.cred** %9, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  %12 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  store %struct.nfs_client* %12, %struct.nfs_client** %11, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 2
  %14 = load i32*, i32** @nfs4_procedures, align 8
  %15 = load i64, i64* @NFSPROC4_CLNT_RENEW, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %13, align 8
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %22 = call i32 @rpc_call_sync(i32 %20, %struct.rpc_message* %6, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @do_renew_lease(%struct.nfs_client* %28, i64 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @do_renew_lease(%struct.nfs_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

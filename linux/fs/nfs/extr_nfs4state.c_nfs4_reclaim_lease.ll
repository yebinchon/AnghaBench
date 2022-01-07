; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_reclaim_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_reclaim_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }

@NFS4CLNT_SERVER_SCOPE_MISMATCH = common dso_local global i32 0, align 4
@NFS4CLNT_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@NFS4CLNT_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@NFS4CLNT_CHECK_LEASE = common dso_local global i32 0, align 4
@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_reclaim_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_reclaim_lease(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %5 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %6 = call i32 @nfs4_establish_lease(%struct.nfs_client* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @nfs4_handle_reclaim_lease_error(%struct.nfs_client* %10, i32 %11)
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @NFS4CLNT_SERVER_SCOPE_MISMATCH, align 4
  %15 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %15, i32 0, i32 0
  %17 = call i64 @test_and_clear_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %21 = call i32 @nfs4_state_start_reclaim_nograce(%struct.nfs_client* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* @NFS4CLNT_RECLAIM_NOGRACE, align 4
  %24 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %30 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %35 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %39 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %40 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @nfs4_establish_lease(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_handle_reclaim_lease_error(%struct.nfs_client*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_state_start_reclaim_nograce(%struct.nfs_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_client_recover_expired_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_client_recover_expired_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }

@NFS4_MAX_LOOP_ON_RECOVER = common dso_local global i32 0, align 4
@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@NFS4CLNT_CHECK_LEASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_client_recover_expired_lease(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %5 = load i32, i32* @NFS4_MAX_LOOP_ON_RECOVER, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %11 = call i32 @nfs4_wait_clnt_recover(%struct.nfs_client* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %36

15:                                               ; preds = %9
  %16 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %17 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %23 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %36

28:                                               ; preds = %21, %15
  %29 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %30 = call i32 @nfs4_schedule_state_manager(%struct.nfs_client* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %27, %14, %6
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @nfs4_wait_clnt_recover(%struct.nfs_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_schedule_state_manager(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

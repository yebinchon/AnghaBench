; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_check_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_check_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs4_state_maintenance_ops* }
%struct.nfs4_state_maintenance_ops = type { i32 (%struct.nfs_client*, %struct.cred*)*, %struct.cred.0* (%struct.nfs_client*)* }
%struct.cred = type opaque
%struct.cred.0 = type { i32 }

@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NFS4CLNT_CHECK_LEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_check_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_check_lease(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.cred.0*, align 8
  %5 = alloca %struct.nfs4_state_maintenance_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %7 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfs4_state_maintenance_ops*, %struct.nfs4_state_maintenance_ops** %10, align 8
  store %struct.nfs4_state_maintenance_ops* %11, %struct.nfs4_state_maintenance_ops** %5, align 8
  %12 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %13 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.nfs4_state_maintenance_ops*, %struct.nfs4_state_maintenance_ops** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, %struct.nfs4_state_maintenance_ops* %19, i32 0, i32 1
  %21 = load %struct.cred.0* (%struct.nfs_client*)*, %struct.cred.0* (%struct.nfs_client*)** %20, align 8
  %22 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %23 = call %struct.cred.0* %21(%struct.nfs_client* %22)
  store %struct.cred.0* %23, %struct.cred.0** %4, align 8
  %24 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %25 = icmp eq %struct.cred.0* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %28 = call %struct.cred.0* @nfs4_get_clid_cred(%struct.nfs_client* %27)
  store %struct.cred.0* %28, %struct.cred.0** %4, align 8
  %29 = load i32, i32* @ENOKEY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %32 = icmp eq %struct.cred.0* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %55

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.nfs4_state_maintenance_ops*, %struct.nfs4_state_maintenance_ops** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, %struct.nfs4_state_maintenance_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.nfs_client*, %struct.cred*)*, i32 (%struct.nfs_client*, %struct.cred*)** %37, align 8
  %39 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %40 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %41 = bitcast %struct.cred.0* %40 to %struct.cred*
  %42 = call i32 %38(%struct.nfs_client* %39, %struct.cred* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %44 = call i32 @put_cred(%struct.cred.0* %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %51 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %52 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  store i32 0, i32* %2, align 4
  br label %59

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @nfs4_recovery_handle_error(%struct.nfs_client* %56, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %49, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.cred.0* @nfs4_get_clid_cred(%struct.nfs_client*) #1

declare dso_local i32 @put_cred(%struct.cred.0*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs4_recovery_handle_error(%struct.nfs_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

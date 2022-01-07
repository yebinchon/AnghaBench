; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_mark_test_expired_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_mark_test_expired_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_delegation = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NFS4_INVALID_STATEID_TYPE = common dso_local global i64 0, align 8
@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4
@NFS_DELEGATION_TEST_EXPIRED = common dso_local global i32 0, align 4
@NFS4CLNT_DELEGATION_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, %struct.nfs_delegation*)* @nfs_mark_test_expired_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_mark_test_expired_delegation(%struct.nfs_server* %0, %struct.nfs_delegation* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_delegation*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs_delegation* %1, %struct.nfs_delegation** %4, align 8
  %5 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NFS4_INVALID_STATEID_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %14 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @NFS_DELEGATION_TEST_EXPIRED, align 4
  %18 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @NFS4CLNT_DELEGATION_EXPIRED, align 4
  %22 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %21, i32* %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

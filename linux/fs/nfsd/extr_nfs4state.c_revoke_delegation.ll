; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_revoke_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_revoke_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.nfs4_client* }
%struct.nfs4_client = type { i32, i32, i64 }

@NFS4_REVOKED_DELEG_STID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_delegation*)* @revoke_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revoke_delegation(%struct.nfs4_delegation* %0) #0 {
  %2 = alloca %struct.nfs4_delegation*, align 8
  %3 = alloca %struct.nfs4_client*, align 8
  store %struct.nfs4_delegation* %0, %struct.nfs4_delegation** %2, align 8
  %4 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  store %struct.nfs4_client* %7, %struct.nfs4_client** %3, align 8
  %8 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %8, i32 0, i32 0
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @NFS4_REVOKED_DELEG_STID, align 4
  %21 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %22 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @refcount_inc(i32* %26)
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %29 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %32 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %31, i32 0, i32 0
  %33 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %34 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %33, i32 0, i32 1
  %35 = call i32 @list_add(i32* %32, i32* %34)
  %36 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %37 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %19, %1
  %40 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %2, align 8
  %41 = call i32 @destroy_unhashed_deleg(%struct.nfs4_delegation* %40)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @destroy_unhashed_deleg(%struct.nfs4_delegation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

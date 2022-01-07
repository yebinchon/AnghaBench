; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_hash_delegation_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_hash_delegation_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }
%struct.nfs4_file = type { i32, i32 }

@state_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NFS4_DELEG_STID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_delegation*, %struct.nfs4_file*)* @hash_delegation_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_delegation_locked(%struct.nfs4_delegation* %0, %struct.nfs4_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_delegation*, align 8
  %5 = alloca %struct.nfs4_file*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  store %struct.nfs4_delegation* %0, %struct.nfs4_delegation** %4, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %5, align 8
  %7 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  store %struct.nfs4_client* %10, %struct.nfs4_client** %6, align 8
  %11 = call i32 @lockdep_assert_held(i32* @state_lock)
  %12 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %16 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %17 = call i64 @nfs4_delegation_exists(%struct.nfs4_client* %15, %struct.nfs4_file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @refcount_inc(i32* %25)
  %27 = load i32, i32* @NFS4_DELEG_STID, align 4
  %28 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %32 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %31, i32 0, i32 1
  %33 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %34 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %33, i32 0, i32 0
  %35 = call i32 @list_add(i32* %32, i32* %34)
  %36 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %37 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %36, i32 0, i32 0
  %38 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %39 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %38, i32 0, i32 0
  %40 = call i32 @list_add(i32* %37, i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %22, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @nfs4_delegation_exists(%struct.nfs4_client*, %struct.nfs4_file*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

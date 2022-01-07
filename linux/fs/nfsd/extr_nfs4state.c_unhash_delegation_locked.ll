; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_unhash_delegation_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_unhash_delegation_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nfs4_file* }
%struct.nfs4_file = type { i32 }

@state_lock = common dso_local global i32 0, align 4
@NFS4_CLOSED_DELEG_STID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_delegation*)* @unhash_delegation_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unhash_delegation_locked(%struct.nfs4_delegation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_delegation*, align 8
  %4 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_delegation* %0, %struct.nfs4_delegation** %3, align 8
  %5 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  store %struct.nfs4_file* %8, %struct.nfs4_file** %4, align 8
  %9 = call i32 @lockdep_assert_held(i32* @state_lock)
  %10 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load i32, i32* @NFS4_CLOSED_DELEG_STID, align 4
  %17 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %18 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %21 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %25 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %28 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %27, i32 0, i32 2
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %31 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %30, i32 0, i32 1
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %3, align 8
  %34 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %33, i32 0, i32 0
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %37 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %15, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

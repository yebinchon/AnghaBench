; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_alloc_init_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_alloc_init_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file_lock = type { i32, i32, i64, i32, i32, i32, i32* }
%struct.nfs4_delegation = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@nfsd_lease_mng_ops = common dso_local global i32 0, align 4
@FL_DELEG = common dso_local global i32 0, align 4
@NFS4_OPEN_DELEGATE_READ = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_lock* (%struct.nfs4_delegation*, i32)* @nfs4_alloc_init_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_lock* @nfs4_alloc_init_lease(%struct.nfs4_delegation* %0, i32 %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.nfs4_delegation*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  store %struct.nfs4_delegation* %0, %struct.nfs4_delegation** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.file_lock* (...) @locks_alloc_lock()
  store %struct.file_lock* %7, %struct.file_lock** %6, align 8
  %8 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %9 = icmp ne %struct.file_lock* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.file_lock* null, %struct.file_lock** %3, align 8
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 6
  store i32* @nfsd_lease_mng_ops, i32** %13, align 8
  %14 = load i32, i32* @FL_DELEG, align 4
  %15 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NFS4_OPEN_DELEGATE_READ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @F_RDLCK, align 4
  br label %24

22:                                               ; preds = %11
  %23 = load i32, i32* @F_WRLCK, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @OFFSET_MAX, align 4
  %29 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %32 = ptrtoint %struct.nfs4_delegation* %31 to i64
  %33 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %41 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %49 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  store %struct.file_lock* %50, %struct.file_lock** %3, align 8
  br label %51

51:                                               ; preds = %24, %10
  %52 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  ret %struct.file_lock* %52
}

declare dso_local %struct.file_lock* @locks_alloc_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

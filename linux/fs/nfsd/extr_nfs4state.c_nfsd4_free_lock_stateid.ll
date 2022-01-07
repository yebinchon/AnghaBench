; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_free_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_free_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stid = type { i32 }
%struct.nfs4_ol_stateid = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nfserr_locks_held = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.nfs4_stid*)* @nfsd4_free_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_free_lock_stateid(i32* %0, %struct.nfs4_stid* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfs4_stid*, align 8
  %5 = alloca %struct.nfs4_ol_stateid*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.nfs4_stid* %1, %struct.nfs4_stid** %4, align 8
  %7 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %8 = call %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid* %7)
  store %struct.nfs4_ol_stateid* %8, %struct.nfs4_ol_stateid** %5, align 8
  %9 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %10 = call i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %43

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %16, i32 0, i32 0
  %18 = call i64 @check_stateid_generation(i32* %15, i32* %17, i32 1)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %39

22:                                               ; preds = %14
  %23 = load i64, i64* @nfserr_locks_held, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %25 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lockowner(i32 %30)
  %32 = call i64 @check_for_locks(i32 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %39

35:                                               ; preds = %22
  %36 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %37 = call i32 @release_lock_stateid(%struct.nfs4_ol_stateid* %36)
  %38 = load i64, i64* @nfs_ok, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %35, %34, %21
  %40 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %41 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %13
  %44 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %45 = call i32 @nfs4_put_stid(%struct.nfs4_stid* %44)
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid*) #1

declare dso_local i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i64 @check_stateid_generation(i32*, i32*, i32) #1

declare dso_local i64 @check_for_locks(i32, i32) #1

declare dso_local i32 @lockowner(i32) #1

declare dso_local i32 @release_lock_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfs4_put_stid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

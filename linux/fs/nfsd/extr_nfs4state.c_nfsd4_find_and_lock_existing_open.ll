; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_find_and_lock_existing_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_find_and_lock_existing_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { i32 }
%struct.nfs4_file = type { i32 }
%struct.nfsd4_open = type { i32 }

@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_ol_stateid* (%struct.nfs4_file*, %struct.nfsd4_open*)* @nfsd4_find_and_lock_existing_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_ol_stateid* @nfsd4_find_and_lock_existing_open(%struct.nfs4_file* %0, %struct.nfsd4_open* %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca %struct.nfsd4_open*, align 8
  %5 = alloca %struct.nfs4_ol_stateid*, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %4, align 8
  br label %6

6:                                                ; preds = %24, %2
  %7 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %11 = load %struct.nfsd4_open*, %struct.nfsd4_open** %4, align 8
  %12 = call %struct.nfs4_ol_stateid* @nfsd4_find_existing_open(%struct.nfs4_file* %10, %struct.nfsd4_open* %11)
  store %struct.nfs4_ol_stateid* %12, %struct.nfs4_ol_stateid** %5, align 8
  %13 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %14 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %17 = icmp ne %struct.nfs4_ol_stateid* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %20 = call i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid* %19)
  %21 = load i64, i64* @nfs_ok, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %6
  br label %28

24:                                               ; preds = %18
  %25 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  %26 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %25, i32 0, i32 0
  %27 = call i32 @nfs4_put_stid(i32* %26)
  br label %6

28:                                               ; preds = %23
  %29 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %5, align 8
  ret %struct.nfs4_ol_stateid* %29
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_ol_stateid* @nfsd4_find_existing_open(%struct.nfs4_file*, %struct.nfsd4_open*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i32 @nfs4_put_stid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

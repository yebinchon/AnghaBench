; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_free_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stid = type { i32 }
%struct.nfs4_ol_stateid = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_lockowner = type { i32 }
%struct.nfsd_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stid*)* @nfs4_free_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_free_lock_stateid(%struct.nfs4_stid* %0) #0 {
  %2 = alloca %struct.nfs4_stid*, align 8
  %3 = alloca %struct.nfs4_ol_stateid*, align 8
  %4 = alloca %struct.nfs4_lockowner*, align 8
  %5 = alloca %struct.nfsd_file*, align 8
  store %struct.nfs4_stid* %0, %struct.nfs4_stid** %2, align 8
  %6 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %7 = call %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid* %6)
  store %struct.nfs4_ol_stateid* %7, %struct.nfs4_ol_stateid** %3, align 8
  %8 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nfs4_lockowner* @lockowner(i32 %10)
  store %struct.nfs4_lockowner* %11, %struct.nfs4_lockowner** %4, align 8
  %12 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %3, align 8
  %13 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nfsd_file* @find_any_file(i32 %15)
  store %struct.nfsd_file* %16, %struct.nfsd_file** %5, align 8
  %17 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %18 = icmp ne %struct.nfsd_file* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_file(i32 %22)
  %24 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %4, align 8
  %28 = ptrtoint %struct.nfs4_lockowner* %27 to i32
  %29 = call i32 @filp_close(i32 %26, i32 %28)
  %30 = load %struct.nfsd_file*, %struct.nfsd_file** %5, align 8
  %31 = call i32 @nfsd_file_put(%struct.nfsd_file* %30)
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.nfs4_stid*, %struct.nfs4_stid** %2, align 8
  %34 = call i32 @nfs4_free_ol_stateid(%struct.nfs4_stid* %33)
  ret void
}

declare dso_local %struct.nfs4_ol_stateid* @openlockstateid(%struct.nfs4_stid*) #1

declare dso_local %struct.nfs4_lockowner* @lockowner(i32) #1

declare dso_local %struct.nfsd_file* @find_any_file(i32) #1

declare dso_local i32 @get_file(i32) #1

declare dso_local i32 @filp_close(i32, i32) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local i32 @nfs4_free_ol_stateid(%struct.nfs4_stid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

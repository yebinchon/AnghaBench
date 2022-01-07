; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_close_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_close_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ol_stateid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32, i32, i64 }

@reaplist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ol_stateid*)* @nfsd4_close_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_close_open_stateid(%struct.nfs4_ol_stateid* %0) #0 {
  %2 = alloca %struct.nfs4_ol_stateid*, align 8
  %3 = alloca %struct.nfs4_client*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_ol_stateid* %0, %struct.nfs4_ol_stateid** %2, align 8
  %5 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  store %struct.nfs4_client* %8, %struct.nfs4_client** %3, align 8
  %9 = load i32, i32* @reaplist, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %12 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %15 = call i32 @unhash_open_stateid(%struct.nfs4_ol_stateid* %14, i32* @reaplist)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %25 = call i32 @put_ol_stateid_locked(%struct.nfs4_ol_stateid* %24, i32* @reaplist)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %28 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 @free_ol_stateid_reaplist(i32* @reaplist)
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %33 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = call i32 @free_ol_stateid_reaplist(i32* @reaplist)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %2, align 8
  %40 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %41 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @move_to_close_lru(%struct.nfs4_ol_stateid* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44, %26
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @unhash_open_stateid(%struct.nfs4_ol_stateid*, i32*) #1

declare dso_local i32 @put_ol_stateid_locked(%struct.nfs4_ol_stateid*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_ol_stateid_reaplist(i32*) #1

declare dso_local i32 @move_to_close_lru(%struct.nfs4_ol_stateid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_end_drain_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_end_drain_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32*, %struct.nfs4_session* }
%struct.nfs4_session = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*)* @nfs4_end_drain_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_end_drain_session(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.nfs4_session*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %4, i32 0, i32 1
  %6 = load %struct.nfs4_session*, %struct.nfs4_session** %5, align 8
  store %struct.nfs4_session* %6, %struct.nfs4_session** %3, align 8
  %7 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @nfs4_end_drain_slot_table(i32* %14)
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.nfs4_session*, %struct.nfs4_session** %3, align 8
  %18 = icmp ne %struct.nfs4_session* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.nfs4_session*, %struct.nfs4_session** %3, align 8
  %21 = getelementptr inbounds %struct.nfs4_session, %struct.nfs4_session* %20, i32 0, i32 1
  %22 = call i32 @nfs4_end_drain_slot_table(i32* %21)
  %23 = load %struct.nfs4_session*, %struct.nfs4_session** %3, align 8
  %24 = getelementptr inbounds %struct.nfs4_session, %struct.nfs4_session* %23, i32 0, i32 0
  %25 = call i32 @nfs4_end_drain_slot_table(i32* %24)
  br label %26

26:                                               ; preds = %11, %19, %16
  ret void
}

declare dso_local i32 @nfs4_end_drain_slot_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

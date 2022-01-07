; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_state_mark_reclaim_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_state_mark_reclaim_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.nfs4_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_STATE_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@NFS_STATE_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@NFS_OWNER_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@NFS4CLNT_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.nfs4_state*)* @nfs4_state_mark_reclaim_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_state_mark_reclaim_reboot(%struct.nfs_client* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  %6 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %7 = call i32 @nfs4_valid_open_stateid(%struct.nfs4_state* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load i32, i32* @NFS_STATE_RECLAIM_REBOOT, align 4
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %12, i32 0, i32 1
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load i32, i32* @NFS_STATE_RECLAIM_NOGRACE, align 4
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %17 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load i32, i32* @NFS_STATE_RECLAIM_REBOOT, align 4
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %22, i32 0, i32 1
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  store i32 0, i32* %3, align 4
  br label %36

25:                                               ; preds = %10
  %26 = load i32, i32* @NFS_OWNER_RECLAIM_REBOOT, align 4
  %27 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %28 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %26, i32* %30)
  %32 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %33 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %25, %20, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @nfs4_valid_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

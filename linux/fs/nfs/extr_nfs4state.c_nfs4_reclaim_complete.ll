; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_reclaim_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_reclaim_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.nfs4_state_recovery_ops = type { i32 (%struct.nfs_client*, %struct.cred*)* }
%struct.cred = type opaque
%struct.cred.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.nfs4_state_recovery_ops*, %struct.cred.0*)* @nfs4_reclaim_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_reclaim_complete(%struct.nfs_client* %0, %struct.nfs4_state_recovery_ops* %1, %struct.cred.0* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca %struct.nfs4_state_recovery_ops*, align 8
  %7 = alloca %struct.cred.0*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %5, align 8
  store %struct.nfs4_state_recovery_ops* %1, %struct.nfs4_state_recovery_ops** %6, align 8
  store %struct.cred.0* %2, %struct.cred.0** %7, align 8
  %8 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %6, align 8
  %9 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %8, i32 0, i32 0
  %10 = load i32 (%struct.nfs_client*, %struct.cred*)*, i32 (%struct.nfs_client*, %struct.cred*)** %9, align 8
  %11 = icmp ne i32 (%struct.nfs_client*, %struct.cred*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %6, align 8
  %14 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.nfs_client*, %struct.cred*)*, i32 (%struct.nfs_client*, %struct.cred*)** %14, align 8
  %16 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %17 = load %struct.cred.0*, %struct.cred.0** %7, align 8
  %18 = bitcast %struct.cred.0* %17 to %struct.cred*
  %19 = call i32 %15(%struct.nfs_client* %16, %struct.cred* %18)
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

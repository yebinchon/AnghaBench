; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_establish_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_establish_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs4_state_recovery_ops* }
%struct.nfs4_state_recovery_ops = type { i32 (%struct.nfs_client*, %struct.cred*)* }
%struct.cred = type opaque
%struct.cred.0 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_establish_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_establish_lease(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.cred.0*, align 8
  %5 = alloca %struct.nfs4_state_recovery_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %7 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %10, align 8
  store %struct.nfs4_state_recovery_ops* %11, %struct.nfs4_state_recovery_ops** %5, align 8
  %12 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %13 = call i32 @nfs4_begin_drain_session(%struct.nfs_client* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %20 = call %struct.cred.0* @nfs4_get_clid_cred(%struct.nfs_client* %19)
  store %struct.cred.0* %20, %struct.cred.0** %4, align 8
  %21 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %22 = icmp eq %struct.cred.0* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %5, align 8
  %28 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.nfs_client*, %struct.cred*)*, i32 (%struct.nfs_client*, %struct.cred*)** %28, align 8
  %30 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %31 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %32 = bitcast %struct.cred.0* %31 to %struct.cred*
  %33 = call i32 %29(%struct.nfs_client* %30, %struct.cred* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.cred.0*, %struct.cred.0** %4, align 8
  %35 = call i32 @put_cred(%struct.cred.0* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %42 = call i32 @pnfs_destroy_all_layouts(%struct.nfs_client* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %23, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @nfs4_begin_drain_session(%struct.nfs_client*) #1

declare dso_local %struct.cred.0* @nfs4_get_clid_cred(%struct.nfs_client*) #1

declare dso_local i32 @put_cred(%struct.cred.0*) #1

declare dso_local i32 @pnfs_destroy_all_layouts(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

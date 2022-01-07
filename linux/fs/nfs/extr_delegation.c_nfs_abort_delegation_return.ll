; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_abort_delegation_return.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_abort_delegation_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32, i32 }
%struct.nfs_client = type { i32 }

@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4
@NFS_DELEGATION_RETURN = common dso_local global i32 0, align 4
@NFS4CLNT_DELEGRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_delegation*, %struct.nfs_client*)* @nfs_abort_delegation_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_abort_delegation_return(%struct.nfs_delegation* %0, %struct.nfs_client* %1) #0 {
  %3 = alloca %struct.nfs_delegation*, align 8
  %4 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_delegation* %0, %struct.nfs_delegation** %3, align 8
  store %struct.nfs_client* %1, %struct.nfs_client** %4, align 8
  %5 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %9 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @NFS_DELEGATION_RETURN, align 4
  %13 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %13, i32 0, i32 1
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* @NFS4CLNT_DELEGRETURN, align 4
  %20 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

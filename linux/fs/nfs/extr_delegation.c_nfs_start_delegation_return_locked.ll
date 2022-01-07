; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_start_delegation_return_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_start_delegation_return_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32, i32 }
%struct.nfs_inode = type { i32 }

@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_delegation* (%struct.nfs_inode*)* @nfs_start_delegation_return_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_delegation* @nfs_start_delegation_return_locked(%struct.nfs_inode* %0) #0 {
  %2 = alloca %struct.nfs_inode*, align 8
  %3 = alloca %struct.nfs_delegation*, align 8
  %4 = alloca %struct.nfs_delegation*, align 8
  store %struct.nfs_inode* %0, %struct.nfs_inode** %2, align 8
  store %struct.nfs_delegation* null, %struct.nfs_delegation** %3, align 8
  %5 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nfs_delegation* @rcu_dereference(i32 %7)
  store %struct.nfs_delegation* %8, %struct.nfs_delegation** %4, align 8
  %9 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %10 = icmp eq %struct.nfs_delegation* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %17 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %17, i32 0, i32 1
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  store %struct.nfs_delegation* %22, %struct.nfs_delegation** %3, align 8
  br label %23

23:                                               ; preds = %21, %12
  %24 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  br label %27

27:                                               ; preds = %23, %11
  %28 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  ret %struct.nfs_delegation* %28
}

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_inode_mark_test_expired_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_inode_mark_test_expired_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, %struct.inode*)* @nfs_inode_mark_test_expired_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_inode_mark_test_expired_delegation(%struct.nfs_server* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_delegation*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nfs_delegation* @rcu_dereference(i32 %10)
  store %struct.nfs_delegation* %11, %struct.nfs_delegation** %5, align 8
  %12 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %13 = icmp ne %struct.nfs_delegation* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %16 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %17 = call i32 @nfs_mark_test_expired_delegation(%struct.nfs_server* %15, %struct.nfs_delegation* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_mark_test_expired_delegation(%struct.nfs_server*, %struct.nfs_delegation*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

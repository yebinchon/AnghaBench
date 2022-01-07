; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs4_refresh_delegation_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs4_refresh_delegation_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_delegation = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_refresh_delegation_stateid(%struct.TYPE_6__* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_delegation*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %34

10:                                               ; preds = %2
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_8__* @NFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nfs_delegation* @rcu_dereference(i32 %15)
  store %struct.nfs_delegation* %16, %struct.nfs_delegation** %5, align 8
  %17 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %18 = icmp ne %struct.nfs_delegation* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %21, i32 0, i32 0
  %23 = call i64 @nfs4_stateid_match_other(%struct.TYPE_6__* %20, %struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %19, %10
  %33 = call i32 (...) @rcu_read_unlock()
  br label %34

34:                                               ; preds = %32, %9
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_8__* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs4_stateid_match_other(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_inode_reclaim_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_inode_reclaim_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_delegation = type { i64, i32, i32, %struct.cred*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_inode_reclaim_delegation(%struct.inode* %0, %struct.cred* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfs_delegation*, align 8
  %12 = alloca %struct.cred*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.cred* %1, %struct.cred** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.cred* null, %struct.cred** %12, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nfs_delegation* @rcu_dereference(i32 %17)
  store %struct.nfs_delegation* %18, %struct.nfs_delegation** %11, align 8
  %19 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %20 = icmp ne %struct.nfs_delegation* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %5
  %22 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %23 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %26 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %21
  %30 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %31 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %30, i32 0, i32 5
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @nfs4_stateid_copy(i32* %31, i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %36 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %39 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %41 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %40, i32 0, i32 3
  %42 = load %struct.cred*, %struct.cred** %41, align 8
  store %struct.cred* %42, %struct.cred** %12, align 8
  %43 = load %struct.cred*, %struct.cred** %7, align 8
  %44 = call %struct.cred* @get_cred(%struct.cred* %43)
  %45 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %46 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %45, i32 0, i32 3
  store %struct.cred* %44, %struct.cred** %46, align 8
  %47 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %48 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %49 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %48, i32 0, i32 2
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %52 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.cred*, %struct.cred** %12, align 8
  %56 = call i32 @put_cred(%struct.cred* %55)
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @trace_nfs4_reclaim_delegation(%struct.inode* %57, i32 %58)
  br label %72

60:                                               ; preds = %21
  %61 = load %struct.nfs_delegation*, %struct.nfs_delegation** %11, align 8
  %62 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %5
  %65 = call i32 (...) @rcu_read_unlock()
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load %struct.cred*, %struct.cred** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @nfs_inode_set_delegation(%struct.inode* %66, %struct.cred* %67, i32 %68, i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %64, %29
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local %struct.cred* @get_cred(%struct.cred*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @trace_nfs4_reclaim_delegation(%struct.inode*, i32) #1

declare dso_local i32 @nfs_inode_set_delegation(%struct.inode*, %struct.cred*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

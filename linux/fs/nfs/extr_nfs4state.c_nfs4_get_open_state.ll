; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_get_open_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_get_open_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, %struct.inode*, i32, %struct.nfs4_state_owner* }
%struct.inode = type { i32 }
%struct.nfs4_state_owner = type { i32, i32, i32 }
%struct.nfs_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_state* @nfs4_get_open_state(%struct.inode* %0, %struct.nfs4_state_owner* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs4_state_owner*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs4_state_owner* %1, %struct.nfs4_state_owner** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %7, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %13 = call %struct.nfs4_state* @__nfs4_find_state_byowner(%struct.inode* %11, %struct.nfs4_state_owner* %12)
  store %struct.nfs4_state* %13, %struct.nfs4_state** %5, align 8
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %16 = icmp ne %struct.nfs4_state* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %77

18:                                               ; preds = %2
  %19 = call %struct.nfs4_state* (...) @nfs4_alloc_open_state()
  store %struct.nfs4_state* %19, %struct.nfs4_state** %6, align 8
  %20 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %28 = call %struct.nfs4_state* @__nfs4_find_state_byowner(%struct.inode* %26, %struct.nfs4_state_owner* %27)
  store %struct.nfs4_state* %28, %struct.nfs4_state** %5, align 8
  %29 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %30 = icmp eq %struct.nfs4_state* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %18
  %32 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %33 = icmp ne %struct.nfs4_state* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  store %struct.nfs4_state* %35, %struct.nfs4_state** %5, align 8
  %36 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %37 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %38 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %37, i32 0, i32 3
  store %struct.nfs4_state_owner* %36, %struct.nfs4_state_owner** %38, align 8
  %39 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %40 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %39, i32 0, i32 2
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %43 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %42, i32 0, i32 2
  %44 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %44, i32 0, i32 0
  %46 = call i32 @list_add_rcu(i32* %43, i32* %45)
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call i32 @ihold(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %51 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %50, i32 0, i32 1
  store %struct.inode* %49, %struct.inode** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %56 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %55, i32 0, i32 0
  %57 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %58 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %61 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  br label %76

63:                                               ; preds = %31, %18
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %68 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %71 = icmp ne %struct.nfs4_state* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %74 = call i32 @nfs4_free_open_state(%struct.nfs4_state* %73)
  br label %75

75:                                               ; preds = %72, %63
  br label %76

76:                                               ; preds = %75, %34
  br label %77

77:                                               ; preds = %76, %17
  %78 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  ret %struct.nfs4_state* %78
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs4_state* @__nfs4_find_state_byowner(%struct.inode*, %struct.nfs4_state_owner*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nfs4_state* @nfs4_alloc_open_state(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nfs4_free_open_state(%struct.nfs4_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

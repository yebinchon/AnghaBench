; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_put_lock_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_put_lock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_lock_context = type { i32, i32, %struct.nfs_open_context* }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }

@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_put_lock_context(%struct.nfs_lock_context* %0) #0 {
  %2 = alloca %struct.nfs_lock_context*, align 8
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.nfs_lock_context* %0, %struct.nfs_lock_context** %2, align 8
  %5 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %5, i32 0, i32 2
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  store %struct.nfs_open_context* %7, %struct.nfs_open_context** %3, align 8
  %8 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @d_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = call i32 @refcount_dec_and_lock(i32* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %20, i32 0, i32 0
  %22 = call i32 @list_del_rcu(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %27 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %26)
  %28 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  %29 = load i32, i32* @rcu_head, align 4
  %30 = call i32 @kfree_rcu(%struct.nfs_lock_context* %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @kfree_rcu(%struct.nfs_lock_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

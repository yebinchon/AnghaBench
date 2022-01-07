; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_get_lock_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_get_lock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_lock_context = type { i32, i64 }
%struct.nfs_open_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context* %0) #0 {
  %2 = alloca %struct.nfs_lock_context*, align 8
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.nfs_lock_context*, align 8
  %5 = alloca %struct.nfs_lock_context*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %5, align 8
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.inode* @d_inode(i32 %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %13 = call %struct.nfs_lock_context* @__nfs_find_lock_context(%struct.nfs_open_context* %12)
  store %struct.nfs_lock_context* %13, %struct.nfs_lock_context** %4, align 8
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %16 = icmp eq %struct.nfs_lock_context* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nfs_lock_context* @kmalloc(i32 16, i32 %18)
  store %struct.nfs_lock_context* %19, %struct.nfs_lock_context** %5, align 8
  %20 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %21 = icmp eq %struct.nfs_lock_context* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.nfs_lock_context* @ERR_PTR(i32 %24)
  store %struct.nfs_lock_context* %25, %struct.nfs_lock_context** %2, align 8
  br label %66

26:                                               ; preds = %17
  %27 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %28 = call i32 @nfs_init_lock_context(%struct.nfs_lock_context* %27)
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %33 = call %struct.nfs_lock_context* @__nfs_find_lock_context(%struct.nfs_open_context* %32)
  store %struct.nfs_lock_context* %33, %struct.nfs_lock_context** %4, align 8
  %34 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %35 = icmp eq %struct.nfs_lock_context* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %38 = call i64 @get_nfs_open_context(%struct.nfs_open_context* %37)
  %39 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %47 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %46, i32 0, i32 0
  %48 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %49 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail_rcu(i32* %47, i32* %50)
  %52 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  store %struct.nfs_lock_context* %52, %struct.nfs_lock_context** %4, align 8
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %5, align 8
  br label %57

53:                                               ; preds = %36
  %54 = load i32, i32* @EBADF, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.nfs_lock_context* @ERR_PTR(i32 %55)
  store %struct.nfs_lock_context* %56, %struct.nfs_lock_context** %4, align 8
  br label %57

57:                                               ; preds = %53, %45
  br label %58

58:                                               ; preds = %57, %26
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %5, align 8
  %63 = call i32 @kfree(%struct.nfs_lock_context* %62)
  br label %64

64:                                               ; preds = %58, %1
  %65 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  store %struct.nfs_lock_context* %65, %struct.nfs_lock_context** %2, align 8
  br label %66

66:                                               ; preds = %64, %22
  %67 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %2, align 8
  ret %struct.nfs_lock_context* %67
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_lock_context* @__nfs_find_lock_context(%struct.nfs_open_context*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nfs_lock_context* @kmalloc(i32, i32) #1

declare dso_local %struct.nfs_lock_context* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_init_lock_context(%struct.nfs_lock_context*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @get_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

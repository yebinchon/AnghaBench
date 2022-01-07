; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_reclaim_work_queue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_reclaim_work_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, i32 }

@XFS_ICI_RECLAIM_TAG = common dso_local global i32 0, align 4
@xfs_syncd_centisecs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*)* @xfs_reclaim_work_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_reclaim_work_queue(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %3 = call i32 (...) @rcu_read_lock()
  %4 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %4, i32 0, i32 2
  %6 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %7 = call i64 @radix_tree_tagged(i32* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 0
  %15 = load i32, i32* @xfs_syncd_centisecs, align 4
  %16 = sdiv i32 %15, 6
  %17 = mul nsw i32 %16, 10
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i32 @queue_delayed_work(i32 %12, i32* %14, i32 %18)
  br label %20

20:                                               ; preds = %9, %1
  %21 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @radix_tree_tagged(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_free_buftarg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_free_buftarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buftarg = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_free_buftarg(%struct.xfs_buftarg* %0) #0 {
  %2 = alloca %struct.xfs_buftarg*, align 8
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %2, align 8
  %3 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %3, i32 0, i32 2
  %5 = call i32 @unregister_shrinker(i32* %4)
  %6 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %6, i32 0, i32 1
  %8 = call i64 @percpu_counter_sum(i32* %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %12, i32 0, i32 1
  %14 = call i32 @percpu_counter_destroy(i32* %13)
  %15 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %15, i32 0, i32 0
  %17 = call i32 @list_lru_destroy(i32* %16)
  %18 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %2, align 8
  %19 = call i32 @xfs_blkdev_issue_flush(%struct.xfs_buftarg* %18)
  %20 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %2, align 8
  %21 = call i32 @kmem_free(%struct.xfs_buftarg* %20)
  ret void
}

declare dso_local i32 @unregister_shrinker(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @list_lru_destroy(i32*) #1

declare dso_local i32 @xfs_blkdev_issue_flush(%struct.xfs_buftarg*) #1

declare dso_local i32 @kmem_free(%struct.xfs_buftarg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

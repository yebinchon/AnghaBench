; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_perag_clear_reclaim_tag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_perag_clear_reclaim_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i32, i64, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32, i32 }

@XFS_ICI_RECLAIM_TAG = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_perag*)* @xfs_perag_clear_reclaim_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_perag_clear_reclaim_tag(%struct.xfs_perag* %0) #0 {
  %2 = alloca %struct.xfs_perag*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_perag* %0, %struct.xfs_perag** %2, align 8
  %4 = load %struct.xfs_perag*, %struct.xfs_perag** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %4, i32 0, i32 3
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  store %struct.xfs_mount* %6, %struct.xfs_mount** %3, align 8
  %7 = load %struct.xfs_perag*, %struct.xfs_perag** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.xfs_perag*, %struct.xfs_perag** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 1
  %22 = load %struct.xfs_perag*, %struct.xfs_perag** %2, align 8
  %23 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %26 = call i32 @radix_tree_tag_clear(i32* %21, i32 %24, i32 %25)
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %31 = load %struct.xfs_perag*, %struct.xfs_perag** %2, align 8
  %32 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @_RET_IP_, align 4
  %35 = call i32 @trace_xfs_perag_clear_reclaim(%struct.xfs_mount* %30, i32 %33, i32 -1, i32 %34)
  br label %36

36:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_xfs_perag_clear_reclaim(%struct.xfs_mount*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

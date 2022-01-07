; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_destroy_percpu_counters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_destroy_percpu_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*)* @xfs_destroy_percpu_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_destroy_percpu_counters(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %3 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %3, i32 0, i32 3
  %5 = call i32 @percpu_counter_destroy(i32* %4)
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %6, i32 0, i32 2
  %8 = call i32 @percpu_counter_destroy(i32* %7)
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %9, i32 0, i32 1
  %11 = call i32 @percpu_counter_destroy(i32* %10)
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %13 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = call i64 @percpu_counter_sum(i32* %17)
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ true, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %25 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %24, i32 0, i32 0
  %26 = call i32 @percpu_counter_destroy(i32* %25)
  ret void
}

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

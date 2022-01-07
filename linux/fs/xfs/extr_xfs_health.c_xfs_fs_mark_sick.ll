; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_fs_mark_sick.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_fs_mark_sick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, i32 }

@XFS_SICK_FS_PRIMARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_fs_mark_sick(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_SICK_FS_PRIMARY, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @trace_xfs_fs_mark_sick(%struct.xfs_mount* %13, i32 %14)
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @trace_xfs_fs_mark_sick(%struct.xfs_mount*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

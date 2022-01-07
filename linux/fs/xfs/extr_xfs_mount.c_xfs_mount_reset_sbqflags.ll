; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mount_reset_sbqflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mount_reset_sbqflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@SB_FREEZE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mount_reset_sbqflags(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %4 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %5 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %23 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %24 = call i32 @xfs_fs_writable(%struct.xfs_mount* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %30

27:                                               ; preds = %12
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %29 = call i32 @xfs_sync_sb(%struct.xfs_mount* %28, i32 0)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %26, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_fs_writable(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_sync_sb(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

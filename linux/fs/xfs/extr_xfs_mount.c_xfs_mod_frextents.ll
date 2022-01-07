; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mod_frextents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mod_frextents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mod_frextents(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

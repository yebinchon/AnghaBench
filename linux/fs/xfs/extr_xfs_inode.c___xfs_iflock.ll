; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c___xfs_iflock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c___xfs_iflock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.xfs_inode = type { i32 }

@__XFS_IFLOCK_BIT = common dso_local global i32 0, align 4
@wait = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xfs_iflock(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca i32*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %4 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %4, i32 0, i32 0
  %6 = load i32, i32* @__XFS_IFLOCK_BIT, align 4
  %7 = call i32* @bit_waitqueue(i32* %5, i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 0
  %10 = load i32, i32* @__XFS_IFLOCK_BIT, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0), align 4
  %12 = call i32 @DEFINE_WAIT_BIT(i32 %11, i32* %9, i32 %10)
  br label %13

13:                                               ; preds = %23, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %16 = call i32 @prepare_to_wait_exclusive(i32* %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0), i32 %15)
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %18 = call i64 @xfs_isiflocked(%struct.xfs_inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @io_schedule()
  br label %22

22:                                               ; preds = %20, %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %25 = call i32 @xfs_iflock_nowait(%struct.xfs_inode* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %13, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @finish_wait(i32* %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0))
  ret void
}

declare dso_local i32* @bit_waitqueue(i32*, i32) #1

declare dso_local i32 @DEFINE_WAIT_BIT(i32, i32*, i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

declare dso_local i64 @xfs_isiflocked(%struct.xfs_inode*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @xfs_iflock_nowait(%struct.xfs_inode*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

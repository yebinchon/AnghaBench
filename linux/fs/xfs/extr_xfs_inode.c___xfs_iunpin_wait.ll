; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c___xfs_iunpin_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c___xfs_iunpin_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.xfs_inode = type { i32 }

@__XFS_IPINNED_BIT = common dso_local global i32 0, align 4
@wait = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*)* @__xfs_iunpin_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_iunpin_wait(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca i32*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %4 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %4, i32 0, i32 0
  %6 = load i32, i32* @__XFS_IPINNED_BIT, align 4
  %7 = call i32* @bit_waitqueue(i32* %5, i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 0
  %10 = load i32, i32* @__XFS_IPINNED_BIT, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0), align 4
  %12 = call i32 @DEFINE_WAIT_BIT(i32 %11, i32* %9, i32 %10)
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %14 = call i32 @xfs_iunpin(%struct.xfs_inode* %13)
  br label %15

15:                                               ; preds = %25, %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait(i32* %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0), i32 %17)
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %20 = call i64 @xfs_ipincount(%struct.xfs_inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @io_schedule()
  br label %24

24:                                               ; preds = %22, %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %27 = call i64 @xfs_ipincount(%struct.xfs_inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %15, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @finish_wait(i32* %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0))
  ret void
}

declare dso_local i32* @bit_waitqueue(i32*, i32) #1

declare dso_local i32 @DEFINE_WAIT_BIT(i32, i32*, i32) #1

declare dso_local i32 @xfs_iunpin(%struct.xfs_inode*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @xfs_ipincount(%struct.xfs_inode*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_setup_rt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_setup_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_inode = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_RTBITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_rt(%struct.xfs_scrub* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %9 = call i32 @xchk_setup_fs(%struct.xfs_scrub* %7, %struct.xfs_inode* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %16 = load i32, i32* @XFS_ILOCK_RTBITMAP, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @xfs_ilock(i32 %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %14, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @xchk_setup_fs(%struct.xfs_scrub*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

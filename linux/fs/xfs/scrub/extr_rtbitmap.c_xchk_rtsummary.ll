; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_rtsummary.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_rtbitmap.c_xchk_rtsummary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.xfs_inode*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.xfs_inode = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.xfs_inode* }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_RTSUM = common dso_local global i32 0, align 4
@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_rtsummary(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %10, align 8
  store %struct.xfs_inode* %11, %struct.xfs_inode** %3, align 8
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %12, i32 0, i32 1
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  store %struct.xfs_inode* %14, %struct.xfs_inode** %4, align 8
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 1
  store %struct.xfs_inode* %18, %struct.xfs_inode** %20, align 8
  %21 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %22 = load i32, i32* @XFS_ILOCK_RTSUM, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %25 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %27 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %26, i32 0, i32 1
  %28 = load %struct.xfs_inode*, %struct.xfs_inode** %27, align 8
  %29 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %30 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @xfs_ilock(%struct.xfs_inode* %28, i32 %31)
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %34 = call i32 @xchk_metadata_inode_forks(%struct.xfs_scrub* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %39 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37, %1
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %49 = call i32 @xchk_set_incomplete(%struct.xfs_scrub* %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %52 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %51, i32 0, i32 1
  %53 = load %struct.xfs_inode*, %struct.xfs_inode** %52, align 8
  %54 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %55 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @xfs_iunlock(%struct.xfs_inode* %53, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %60 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %62 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %63 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %62, i32 0, i32 1
  store %struct.xfs_inode* %61, %struct.xfs_inode** %63, align 8
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xchk_metadata_inode_forks(%struct.xfs_scrub*) #1

declare dso_local i32 @xchk_set_incomplete(%struct.xfs_scrub*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

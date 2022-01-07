; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_fsmap_owner_from_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_fsmap_owner_from_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_fsmap = type { i32, i32 }
%struct.xfs_rmap_irec = type { i32 }

@FMR_OF_SPECIAL_OWNER = common dso_local global i32 0, align 4
@XFS_FMR_OWN_FS = common dso_local global i32 0, align 4
@XFS_FMR_OWN_LOG = common dso_local global i32 0, align 4
@XFS_FMR_OWN_AG = common dso_local global i32 0, align 4
@XFS_FMR_OWN_INOBT = common dso_local global i32 0, align 4
@XFS_FMR_OWN_INODES = common dso_local global i32 0, align 4
@XFS_FMR_OWN_REFC = common dso_local global i32 0, align 4
@XFS_FMR_OWN_COW = common dso_local global i32 0, align 4
@XFS_FMR_OWN_FREE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_fsmap*, %struct.xfs_rmap_irec*)* @xfs_fsmap_owner_from_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_fsmap_owner_from_rmap(%struct.xfs_fsmap* %0, %struct.xfs_rmap_irec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_fsmap*, align 8
  %5 = alloca %struct.xfs_rmap_irec*, align 8
  store %struct.xfs_fsmap* %0, %struct.xfs_fsmap** %4, align 8
  store %struct.xfs_rmap_irec* %1, %struct.xfs_rmap_irec** %5, align 8
  %6 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %6, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @XFS_RMAP_NON_INODE_OWNER(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* @FMR_OF_SPECIAL_OWNER, align 4
  %21 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %60 [
    i32 133, label %28
    i32 130, label %32
    i32 135, label %36
    i32 132, label %40
    i32 131, label %44
    i32 128, label %48
    i32 134, label %52
    i32 129, label %56
  ]

28:                                               ; preds = %19
  %29 = load i32, i32* @XFS_FMR_OWN_FS, align 4
  %30 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %63

32:                                               ; preds = %19
  %33 = load i32, i32* @XFS_FMR_OWN_LOG, align 4
  %34 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %63

36:                                               ; preds = %19
  %37 = load i32, i32* @XFS_FMR_OWN_AG, align 4
  %38 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %63

40:                                               ; preds = %19
  %41 = load i32, i32* @XFS_FMR_OWN_INOBT, align 4
  %42 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %63

44:                                               ; preds = %19
  %45 = load i32, i32* @XFS_FMR_OWN_INODES, align 4
  %46 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %63

48:                                               ; preds = %19
  %49 = load i32, i32* @XFS_FMR_OWN_REFC, align 4
  %50 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %51 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %63

52:                                               ; preds = %19
  %53 = load i32, i32* @XFS_FMR_OWN_COW, align 4
  %54 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %55 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %63

56:                                               ; preds = %19
  %57 = load i32, i32* @XFS_FMR_OWN_FREE, align 4
  %58 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %63

60:                                               ; preds = %19
  %61 = load i32, i32* @EFSCORRUPTED, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %56, %52, %48, %44, %40, %36, %32, %28
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @XFS_RMAP_NON_INODE_OWNER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

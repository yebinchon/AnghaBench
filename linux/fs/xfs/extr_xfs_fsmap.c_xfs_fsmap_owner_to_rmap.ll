; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_fsmap_owner_to_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_fsmap_owner_to_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rmap_irec = type { i32 }
%struct.xfs_fsmap = type { i32, i32 }

@FMR_OF_SPECIAL_OWNER = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_NULL = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_UNKNOWN = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_FS = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_LOG = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_AG = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_INOBT = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_INODES = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_REFC = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_COW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_rmap_irec*, %struct.xfs_fsmap*)* @xfs_fsmap_owner_to_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_fsmap_owner_to_rmap(%struct.xfs_rmap_irec* %0, %struct.xfs_fsmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_rmap_irec*, align 8
  %5 = alloca %struct.xfs_fsmap*, align 8
  store %struct.xfs_rmap_irec* %0, %struct.xfs_rmap_irec** %4, align 8
  store %struct.xfs_fsmap* %1, %struct.xfs_fsmap** %5, align 8
  %6 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %5, align 8
  %7 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FMR_OF_SPECIAL_OWNER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %62 [
    i32 0, label %22
    i32 -1, label %22
    i32 134, label %25
    i32 128, label %29
    i32 133, label %33
    i32 130, label %37
    i32 137, label %41
    i32 132, label %45
    i32 131, label %49
    i32 129, label %53
    i32 136, label %57
    i32 135, label %61
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %65

25:                                               ; preds = %18
  %26 = load i32, i32* @XFS_RMAP_OWN_NULL, align 4
  %27 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %65

29:                                               ; preds = %18
  %30 = load i32, i32* @XFS_RMAP_OWN_UNKNOWN, align 4
  %31 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %65

33:                                               ; preds = %18
  %34 = load i32, i32* @XFS_RMAP_OWN_FS, align 4
  %35 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %65

37:                                               ; preds = %18
  %38 = load i32, i32* @XFS_RMAP_OWN_LOG, align 4
  %39 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %65

41:                                               ; preds = %18
  %42 = load i32, i32* @XFS_RMAP_OWN_AG, align 4
  %43 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %65

45:                                               ; preds = %18
  %46 = load i32, i32* @XFS_RMAP_OWN_INOBT, align 4
  %47 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %48 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %65

49:                                               ; preds = %18
  %50 = load i32, i32* @XFS_RMAP_OWN_INODES, align 4
  %51 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %65

53:                                               ; preds = %18
  %54 = load i32, i32* @XFS_RMAP_OWN_REFC, align 4
  %55 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %56 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %65

57:                                               ; preds = %18
  %58 = load i32, i32* @XFS_RMAP_OWN_COW, align 4
  %59 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %18
  br label %62

62:                                               ; preds = %18, %61
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29, %25, %22
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

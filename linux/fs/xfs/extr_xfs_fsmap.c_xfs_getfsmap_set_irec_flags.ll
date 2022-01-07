; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_getfsmap_set_irec_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_getfsmap_set_irec_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_rmap_irec = type { i32 }
%struct.xfs_fsmap = type { i32 }

@FMR_OF_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@FMR_OF_EXTENT_MAP = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@FMR_OF_PREALLOC = common dso_local global i32 0, align 4
@XFS_RMAP_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_rmap_irec*, %struct.xfs_fsmap*)* @xfs_getfsmap_set_irec_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_getfsmap_set_irec_flags(%struct.xfs_rmap_irec* %0, %struct.xfs_fsmap* %1) #0 {
  %3 = alloca %struct.xfs_rmap_irec*, align 8
  %4 = alloca %struct.xfs_fsmap*, align 8
  store %struct.xfs_rmap_irec* %0, %struct.xfs_rmap_irec** %3, align 8
  store %struct.xfs_fsmap* %1, %struct.xfs_fsmap** %4, align 8
  %5 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FMR_OF_ATTR_FORK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %15 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FMR_OF_EXTENT_MAP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %28 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FMR_OF_PREALLOC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %41 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %3, align 8
  %42 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

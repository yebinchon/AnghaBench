; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_alloc_cow_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_alloc_cow_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_REFCOUNT_ALLOC_COW = common dso_local global i32 0, align 4
@XFS_RMAP_OWN_COW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_refcount_alloc_cow_extent(%struct.xfs_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %8, i32 0, i32 0
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %7, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = call i32 @xfs_sb_version_hasreflink(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %18 = load i32, i32* @XFS_REFCOUNT_ALLOC_COW, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @__xfs_refcount_add(%struct.xfs_trans* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %23, i32 %24)
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @XFS_RMAP_OWN_COW, align 4
  %31 = call i32 @xfs_rmap_alloc_extent(%struct.xfs_trans* %22, i32 %25, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i32 @__xfs_refcount_add(%struct.xfs_trans*, i32, i32, i32) #1

declare dso_local i32 @xfs_rmap_alloc_extent(%struct.xfs_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

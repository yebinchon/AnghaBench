; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_free_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_free_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_bmbt_irec = type { i32, i64, i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i32 0, align 4
@XFS_RMAP_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_rmap_free_extent(%struct.xfs_trans* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_bmbt_irec, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFS_DATA_FORK, align 4
  %16 = call i32 @xfs_rmap_update_is_needed(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %37

19:                                               ; preds = %5
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %21 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @XFS_AGB_TO_FSB(i32 %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @XFS_EXT_NORM, align 4
  %31 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %33 = load i32, i32* @XFS_RMAP_FREE, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @XFS_DATA_FORK, align 4
  %36 = call i32 @__xfs_rmap_add(%struct.xfs_trans* %32, i32 %33, i32 %34, i32 %35, %struct.xfs_bmbt_irec* %11)
  br label %37

37:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @xfs_rmap_update_is_needed(i32, i32) #1

declare dso_local i32 @XFS_AGB_TO_FSB(i32, i32, i32) #1

declare dso_local i32 @__xfs_rmap_add(%struct.xfs_trans*, i32, i32, i32, %struct.xfs_bmbt_irec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

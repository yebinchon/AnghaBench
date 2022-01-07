; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_types.c_xfs_agino_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_types.c_xfs_agino_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_agino_range(%struct.xfs_mount* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @xfs_ag_block_count(%struct.xfs_mount* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %15 = call i64 @XFS_AGFL_BLOCK(%struct.xfs_mount* %14)
  %16 = add nsw i64 %15, 1
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %18 = call %struct.TYPE_2__* @M_IGEO(%struct.xfs_mount* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @round_up(i64 %16, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @XFS_AGB_TO_AGINO(%struct.xfs_mount* %22, i32 %23)
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %28 = call %struct.TYPE_2__* @M_IGEO(%struct.xfs_mount* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @round_down(i32 %26, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @XFS_AGB_TO_AGINO(%struct.xfs_mount* %32, i32 %33)
  %35 = sub nsw i64 %34, 1
  %36 = load i64*, i64** %8, align 8
  store i64 %35, i64* %36, align 8
  ret void
}

declare dso_local i32 @xfs_ag_block_count(%struct.xfs_mount*, i32) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local i64 @XFS_AGFL_BLOCK(%struct.xfs_mount*) #1

declare dso_local %struct.TYPE_2__* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_AGB_TO_AGINO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

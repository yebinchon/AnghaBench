; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_finobt_calc_reserves.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_finobt_calc_reserves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }

@XFS_BTNUM_FINO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_finobt_calc_reserves(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = call i32 @xfs_sb_version_hasfinobt(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %40

19:                                               ; preds = %5
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %21 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @XFS_BTNUM_FINO, align 4
  %24 = call i32 @xfs_inobt_count_blocks(%struct.xfs_mount* %20, %struct.xfs_trans* %21, i32 %22, i32 %23, i64* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @xfs_inobt_max_size(%struct.xfs_mount* %30, i32 %31)
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %36
  store i64 %39, i64* %37, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %27, %18
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @xfs_sb_version_hasfinobt(i32*) #1

declare dso_local i32 @xfs_inobt_count_blocks(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i64*) #1

declare dso_local i64 @xfs_inobt_max_size(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

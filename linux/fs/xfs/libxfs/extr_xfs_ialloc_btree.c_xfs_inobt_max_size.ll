; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64*, i32 }

@XFS_INODES_PER_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i64)* @xfs_inobt_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_inobt_max_size(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @xfs_ag_block_count(%struct.xfs_mount* %7, i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %11 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %25, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %33, %24, %18
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %42 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %48 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %46, %50
  %52 = load i32, i32* @XFS_INODES_PER_CHUNK, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i32 @xfs_btree_calc_size(i32 %44, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @xfs_ag_block_count(%struct.xfs_mount*, i64) #1

declare dso_local %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_btree_calc_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

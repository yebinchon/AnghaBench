; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_trans_set_rmap_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rmap_item.c_xfs_trans_set_rmap_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_map_extent = type { i32 }

@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@XFS_RMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_MAP = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_MAP_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_UNMAP = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_UNMAP_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_CONVERT = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_CONVERT_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_ALLOC = common dso_local global i32 0, align 4
@XFS_RMAP_EXTENT_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_map_extent*, i32, i32, i64)* @xfs_trans_set_rmap_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_trans_set_rmap_flags(%struct.xfs_map_extent* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.xfs_map_extent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.xfs_map_extent* %0, %struct.xfs_map_extent** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* @XFS_RMAP_EXTENT_UNWRITTEN, align 4
  %16 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @XFS_ATTR_FORK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @XFS_RMAP_EXTENT_ATTR_FORK, align 4
  %26 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %80 [
    i32 131, label %32
    i32 130, label %38
    i32 129, label %44
    i32 128, label %50
    i32 134, label %56
    i32 133, label %62
    i32 135, label %68
    i32 132, label %74
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @XFS_RMAP_EXTENT_MAP, align 4
  %34 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %82

38:                                               ; preds = %30
  %39 = load i32, i32* @XFS_RMAP_EXTENT_MAP_SHARED, align 4
  %40 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %82

44:                                               ; preds = %30
  %45 = load i32, i32* @XFS_RMAP_EXTENT_UNMAP, align 4
  %46 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %47 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %82

50:                                               ; preds = %30
  %51 = load i32, i32* @XFS_RMAP_EXTENT_UNMAP_SHARED, align 4
  %52 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %82

56:                                               ; preds = %30
  %57 = load i32, i32* @XFS_RMAP_EXTENT_CONVERT, align 4
  %58 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %82

62:                                               ; preds = %30
  %63 = load i32, i32* @XFS_RMAP_EXTENT_CONVERT_SHARED, align 4
  %64 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %82

68:                                               ; preds = %30
  %69 = load i32, i32* @XFS_RMAP_EXTENT_ALLOC, align 4
  %70 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %71 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %82

74:                                               ; preds = %30
  %75 = load i32, i32* @XFS_RMAP_EXTENT_FREE, align 4
  %76 = load %struct.xfs_map_extent*, %struct.xfs_map_extent** %5, align 8
  %77 = getelementptr inbounds %struct.xfs_map_extent, %struct.xfs_map_extent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %82

80:                                               ; preds = %30
  %81 = call i32 @ASSERT(i32 0)
  br label %82

82:                                               ; preds = %80, %74, %68, %62, %56, %50, %44, %38, %32
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

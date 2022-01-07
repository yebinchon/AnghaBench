; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.h_xfs_dir2_leaf_tail_p.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.h_xfs_dir2_leaf_tail_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_leaf_tail = type { i32 }
%struct.xfs_da_geometry = type { i32 }
%struct.xfs_dir2_leaf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_dir2_leaf_tail* (%struct.xfs_da_geometry*, %struct.xfs_dir2_leaf*)* @xfs_dir2_leaf_tail_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_dir2_leaf_tail* @xfs_dir2_leaf_tail_p(%struct.xfs_da_geometry* %0, %struct.xfs_dir2_leaf* %1) #0 {
  %3 = alloca %struct.xfs_da_geometry*, align 8
  %4 = alloca %struct.xfs_dir2_leaf*, align 8
  store %struct.xfs_da_geometry* %0, %struct.xfs_da_geometry** %3, align 8
  store %struct.xfs_dir2_leaf* %1, %struct.xfs_dir2_leaf** %4, align 8
  %5 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %4, align 8
  %6 = bitcast %struct.xfs_dir2_leaf* %5 to i8*
  %7 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = getelementptr inbounds i8, i8* %11, i64 -4
  %13 = bitcast i8* %12 to %struct.xfs_dir2_leaf_tail*
  ret %struct.xfs_dir2_leaf_tail* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

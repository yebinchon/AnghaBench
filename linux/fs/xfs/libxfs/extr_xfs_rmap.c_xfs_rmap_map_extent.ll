; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_map_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_map_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i32 }

@XFS_RMAP_MAP_SHARED = common dso_local global i32 0, align 4
@XFS_RMAP_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_rmap_map_extent(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, %struct.xfs_bmbt_irec* %3) #0 {
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_bmbt_irec*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.xfs_bmbt_irec* %3, %struct.xfs_bmbt_irec** %8, align 8
  %9 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @xfs_rmap_update_is_needed(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %33

16:                                               ; preds = %4
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %19 = call i64 @xfs_is_reflink_inode(%struct.xfs_inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @XFS_RMAP_MAP_SHARED, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @XFS_RMAP_MAP, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %32 = call i32 @__xfs_rmap_add(%struct.xfs_trans* %17, i32 %26, i32 %29, i32 %30, %struct.xfs_bmbt_irec* %31)
  br label %33

33:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @xfs_rmap_update_is_needed(i32, i32) #1

declare dso_local i32 @__xfs_rmap_add(%struct.xfs_trans*, i32, i32, i32, %struct.xfs_bmbt_irec*) #1

declare dso_local i64 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_item.c_xfs_bui_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_item.c_xfs_bui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bui_log_item = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.xfs_mount = type { i32 }

@xfs_bui_zone = common dso_local global i32 0, align 4
@XFS_LI_BUI = common dso_local global i32 0, align 4
@xfs_bui_item_ops = common dso_local global i32 0, align 4
@XFS_BUI_MAX_FAST_EXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_bui_log_item* @xfs_bui_init(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.xfs_bui_log_item*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %4 = load i32, i32* @xfs_bui_zone, align 4
  %5 = call %struct.xfs_bui_log_item* @kmem_zone_zalloc(i32 %4, i32 0)
  store %struct.xfs_bui_log_item* %5, %struct.xfs_bui_log_item** %3, align 8
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %7 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %7, i32 0, i32 3
  %9 = load i32, i32* @XFS_LI_BUI, align 4
  %10 = call i32 @xfs_log_item_init(%struct.xfs_mount* %6, i32* %8, i32 %9, i32* @xfs_bui_item_ops)
  %11 = load i32, i32* @XFS_BUI_MAX_FAST_EXTENTS, align 4
  %12 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  %16 = bitcast %struct.xfs_bui_log_item* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %21, i32 0, i32 1
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_bui_log_item, %struct.xfs_bui_log_item* %24, i32 0, i32 0
  %26 = call i32 @atomic_set(i32* %25, i32 2)
  %27 = load %struct.xfs_bui_log_item*, %struct.xfs_bui_log_item** %3, align 8
  ret %struct.xfs_bui_log_item* %27
}

declare dso_local %struct.xfs_bui_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, i32*, i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

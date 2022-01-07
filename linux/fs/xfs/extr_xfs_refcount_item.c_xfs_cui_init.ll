; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_refcount_item.c_xfs_cui_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_refcount_item.c_xfs_cui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_cui_log_item = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.xfs_mount = type { i32 }

@XFS_CUI_MAX_FAST_EXTENTS = common dso_local global i64 0, align 8
@xfs_cui_zone = common dso_local global i32 0, align 4
@XFS_LI_CUI = common dso_local global i32 0, align 4
@xfs_cui_item_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_cui_log_item* @xfs_cui_init(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xfs_cui_log_item*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @XFS_CUI_MAX_FAST_EXTENTS, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @xfs_cui_log_item_sizeof(i64 %14)
  %16 = call %struct.xfs_cui_log_item* @kmem_zalloc(i32 %15, i32 0)
  store %struct.xfs_cui_log_item* %16, %struct.xfs_cui_log_item** %5, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @xfs_cui_zone, align 4
  %19 = call %struct.xfs_cui_log_item* @kmem_zone_zalloc(i32 %18, i32 0)
  store %struct.xfs_cui_log_item* %19, %struct.xfs_cui_log_item** %5, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %22 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %22, i32 0, i32 3
  %24 = load i32, i32* @XFS_LI_CUI, align 4
  %25 = call i32 @xfs_log_item_init(%struct.xfs_mount* %21, i32* %23, i32 %24, i32* @xfs_cui_item_ops)
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 %26, i64* %29, align 8
  %30 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %31 = bitcast %struct.xfs_cui_log_item* %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %36, i32 0, i32 1
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_cui_log_item, %struct.xfs_cui_log_item* %39, i32 0, i32 0
  %41 = call i32 @atomic_set(i32* %40, i32 2)
  %42 = load %struct.xfs_cui_log_item*, %struct.xfs_cui_log_item** %5, align 8
  ret %struct.xfs_cui_log_item* %42
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_cui_log_item* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_cui_log_item_sizeof(i64) #1

declare dso_local %struct.xfs_cui_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, i32*, i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

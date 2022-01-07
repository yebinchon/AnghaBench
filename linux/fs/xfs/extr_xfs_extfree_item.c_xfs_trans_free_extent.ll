; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_trans_free_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_trans_free_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_efd_log_item = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.xfs_extent* }
%struct.xfs_extent = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_owner_info = type { i32 }

@XFS_AG_RESV_NONE = common dso_local global i32 0, align 4
@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_LI_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, %struct.xfs_efd_log_item*, i32, i32, %struct.xfs_owner_info*, i32)* @xfs_trans_free_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_trans_free_extent(%struct.xfs_trans* %0, %struct.xfs_efd_log_item* %1, i32 %2, i32 %3, %struct.xfs_owner_info* %4, i32 %5) #0 {
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_efd_log_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_owner_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_mount*, align 8
  %14 = alloca %struct.xfs_extent*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_efd_log_item* %1, %struct.xfs_efd_log_item** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_owner_info* %4, %struct.xfs_owner_info** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %20 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %19, i32 0, i32 1
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  store %struct.xfs_mount* %21, %struct.xfs_mount** %13, align 8
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %22, i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %29 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %28, i32 0, i32 1
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %29, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @trace_xfs_bmap_free_deferred(%struct.xfs_mount* %30, i32 %31, i32 0, i32 %32, i32 %33)
  %35 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %11, align 8
  %39 = load i32, i32* @XFS_AG_RESV_NONE, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @__xfs_free_extent(%struct.xfs_trans* %35, i32 %36, i32 %37, %struct.xfs_owner_info* %38, i32 %39, i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %43 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %44 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @XFS_LI_DIRTY, align 4
  %48 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %8, align 8
  %49 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @set_bit(i32 %47, i32* %50)
  %52 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %8, align 8
  %53 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %8, align 8
  %57 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %8, align 8
  %64 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.xfs_extent*, %struct.xfs_extent** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds %struct.xfs_extent, %struct.xfs_extent* %66, i64 %67
  store %struct.xfs_extent* %68, %struct.xfs_extent** %14, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.xfs_extent*, %struct.xfs_extent** %14, align 8
  %71 = getelementptr inbounds %struct.xfs_extent, %struct.xfs_extent* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.xfs_extent*, %struct.xfs_extent** %14, align 8
  %74 = getelementptr inbounds %struct.xfs_extent, %struct.xfs_extent* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.xfs_efd_log_item*, %struct.xfs_efd_log_item** %8, align 8
  %76 = getelementptr inbounds %struct.xfs_efd_log_item, %struct.xfs_efd_log_item* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %18, align 4
  ret i32 %79
}

declare dso_local i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @trace_xfs_bmap_free_deferred(%struct.xfs_mount*, i32, i32, i32, i32) #1

declare dso_local i32 @__xfs_free_extent(%struct.xfs_trans*, i32, i32, %struct.xfs_owner_info*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

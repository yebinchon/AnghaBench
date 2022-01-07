; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader_repair.c_xrep_check_btree_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader_repair.c_xrep_check_btree_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__*, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xrep_find_ag_btree = type { i64, i32 }

@XFS_BTREE_MAXLEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_scrub*, %struct.xrep_find_ag_btree*)* @xrep_check_btree_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrep_check_btree_root(%struct.xfs_scrub* %0, %struct.xrep_find_ag_btree* %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xrep_find_ag_btree*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store %struct.xrep_find_ag_btree* %1, %struct.xrep_find_ag_btree** %4, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 1
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %5, align 8
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %4, align 8
  %18 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @xfs_verify_agbno(%struct.xfs_mount* %15, i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %4, align 8
  %24 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XFS_BTREE_MAXLEVELS, align 8
  %27 = icmp sle i64 %25, %26
  br label %28

28:                                               ; preds = %22, %2
  %29 = phi i1 [ false, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @xfs_verify_agbno(%struct.xfs_mount*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

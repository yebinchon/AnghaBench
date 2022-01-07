; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_find_ag_btree_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_repair.c_xrep_find_ag_btree_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_2__, i32, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xrep_find_ag_btree = type { i64, i64, i32, i64 }
%struct.xfs_buf = type { i32 }
%struct.xrep_findroot = type { %struct.xfs_buf*, i32, %struct.xrep_find_ag_btree*, %struct.xfs_scrub* }
%struct.xfs_btree_cur = type { i32 }

@XFS_RMAP_OWN_AG = common dso_local global i64 0, align 8
@NULLAGBLOCK = common dso_local global i32 0, align 4
@xrep_findroot_rmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrep_find_ag_btree_roots(%struct.xfs_scrub* %0, %struct.xfs_buf* %1, %struct.xrep_find_ag_btree* %2, %struct.xfs_buf* %3) #0 {
  %5 = alloca %struct.xfs_scrub*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xrep_find_ag_btree*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca %struct.xrep_findroot, align 8
  %11 = alloca %struct.xrep_find_ag_btree*, align 8
  %12 = alloca %struct.xfs_btree_cur*, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store %struct.xrep_find_ag_btree* %2, %struct.xrep_find_ag_btree** %7, align 8
  store %struct.xfs_buf* %3, %struct.xfs_buf** %8, align 8
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %14, i32 0, i32 2
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  store %struct.xfs_mount* %16, %struct.xfs_mount** %9, align 8
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %18 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %21 = icmp eq %struct.xfs_buf* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %24 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %23)
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %4
  %27 = phi i1 [ true, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %31 = getelementptr inbounds %struct.xrep_findroot, %struct.xrep_findroot* %10, i32 0, i32 3
  store %struct.xfs_scrub* %30, %struct.xfs_scrub** %31, align 8
  %32 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %7, align 8
  %33 = getelementptr inbounds %struct.xrep_findroot, %struct.xrep_findroot* %10, i32 0, i32 2
  store %struct.xrep_find_ag_btree* %32, %struct.xrep_find_ag_btree** %33, align 8
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %35 = call i32 @XFS_BUF_TO_AGF(%struct.xfs_buf* %34)
  %36 = getelementptr inbounds %struct.xrep_findroot, %struct.xrep_findroot* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %38 = getelementptr inbounds %struct.xrep_findroot, %struct.xrep_findroot* %10, i32 0, i32 0
  store %struct.xfs_buf* %37, %struct.xfs_buf** %38, align 8
  %39 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %7, align 8
  store %struct.xrep_find_ag_btree* %39, %struct.xrep_find_ag_btree** %11, align 8
  br label %40

40:                                               ; preds = %68, %26
  %41 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %11, align 8
  %42 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %47 = icmp ne %struct.xfs_buf* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %11, align 8
  %50 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XFS_RMAP_OWN_AG, align 8
  %53 = icmp ne i64 %51, %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i1 [ true, %45 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %11, align 8
  %59 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @XFS_RMAP_NON_INODE_OWNER(i64 %60)
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load i32, i32* @NULLAGBLOCK, align 4
  %64 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %11, align 8
  %65 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %11, align 8
  %67 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load %struct.xrep_find_ag_btree*, %struct.xrep_find_ag_btree** %11, align 8
  %70 = getelementptr inbounds %struct.xrep_find_ag_btree, %struct.xrep_find_ag_btree* %69, i32 1
  store %struct.xrep_find_ag_btree* %70, %struct.xrep_find_ag_btree** %11, align 8
  br label %40

71:                                               ; preds = %40
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %73 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %74 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %77 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %78 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.xfs_btree_cur* @xfs_rmapbt_init_cursor(%struct.xfs_mount* %72, i32 %75, %struct.xfs_buf* %76, i32 %80)
  store %struct.xfs_btree_cur* %81, %struct.xfs_btree_cur** %12, align 8
  %82 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %83 = load i32, i32* @xrep_findroot_rmap, align 4
  %84 = call i32 @xfs_rmap_query_all(%struct.xfs_btree_cur* %82, i32 %83, %struct.xrep_findroot* %10)
  store i32 %84, i32* %13, align 4
  %85 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %85, i32 %86)
  %88 = load i32, i32* %13, align 4
  ret i32 %88
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i32 @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @XFS_RMAP_NON_INODE_OWNER(i64) #1

declare dso_local %struct.xfs_btree_cur* @xfs_rmapbt_init_cursor(%struct.xfs_mount*, i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_rmap_query_all(%struct.xfs_btree_cur*, i32, %struct.xrep_findroot*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_lookup_le_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_lookup_le_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.xfs_rmap_irec = type { i32, i32, i32, i32, i32 }
%struct.xfs_find_left_neighbor_info = type { i32*, %struct.TYPE_7__, %struct.xfs_rmap_irec* }
%struct.TYPE_7__ = type { i32, i64, i8*, i8*, i32 }

@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@xfs_rmap_lookup_le_range_helper = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_lookup_le_range(%struct.xfs_btree_cur* %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.xfs_rmap_irec* %5, i32* %6) #0 {
  %8 = alloca %struct.xfs_btree_cur*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_rmap_irec*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.xfs_find_left_neighbor_info, align 8
  %16 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.xfs_rmap_irec* %5, %struct.xfs_rmap_irec** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @XFS_RMAP_NON_INODE_OWNER(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %38

35:                                               ; preds = %26, %7
  %36 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %14, align 8
  store i32 0, i32* %44, align 4
  %45 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %13, align 8
  %46 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 2
  store %struct.xfs_rmap_irec* %45, %struct.xfs_rmap_irec** %46, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 0
  store i32* %47, i32** %48, align 8
  %49 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %8, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %8, align 8
  %53 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @trace_xfs_rmap_lookup_le_range(i32 %51, i32 %56, i32 %57, i32 0, i8* %58, i8* %59, i32 %60)
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %8, align 8
  %63 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %64 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %15, i32 0, i32 1
  %65 = load i32, i32* @xfs_rmap_lookup_le_range_helper, align 4
  %66 = call i32 @xfs_rmap_query_range(%struct.xfs_btree_cur* %62, %struct.TYPE_7__* %63, %struct.TYPE_7__* %64, i32 %65, %struct.xfs_find_left_neighbor_info* %15)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @ECANCELED, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %38
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %8, align 8
  %78 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %8, align 8
  %81 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %13, align 8
  %86 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %13, align 8
  %89 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %13, align 8
  %92 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %13, align 8
  %95 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %13, align 8
  %98 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @trace_xfs_rmap_lookup_le_range_result(i32 %79, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %76, %72
  %102 = load i32, i32* %16, align 4
  ret i32 %102
}

declare dso_local i32 @XFS_RMAP_NON_INODE_OWNER(i8*) #1

declare dso_local i32 @trace_xfs_rmap_lookup_le_range(i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xfs_rmap_query_range(%struct.xfs_btree_cur*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, %struct.xfs_find_left_neighbor_info*) #1

declare dso_local i32 @trace_xfs_rmap_lookup_le_range_result(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

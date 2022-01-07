; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_find_left_neighbor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_find_left_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.xfs_rmap_irec = type { i32, i32, i32, i32, i32 }
%struct.xfs_find_left_neighbor_info = type { i32*, %struct.TYPE_7__, %struct.xfs_rmap_irec* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64 }

@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@xfs_rmap_find_left_neighbor_helper = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_find_left_neighbor(%struct.xfs_btree_cur* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.xfs_rmap_irec* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_btree_cur*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_rmap_irec*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.xfs_find_left_neighbor_info, align 8
  %17 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.xfs_rmap_irec* %5, %struct.xfs_rmap_irec** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %114

22:                                               ; preds = %7
  %23 = load i64, i64* %10, align 8
  %24 = sub nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @XFS_RMAP_NON_INODE_OWNER(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %114

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %43, 1
  %45 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %50

47:                                               ; preds = %33, %22
  %48 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %14, align 8
  %57 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 2
  store %struct.xfs_rmap_irec* %56, %struct.xfs_rmap_irec** %57, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 0
  store i32* %58, i32** %59, align 8
  %60 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %61 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %64 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @trace_xfs_rmap_find_left_neighbor_query(i32 %62, i32 %67, i64 %68, i32 0, i64 %69, i64 %70, i32 %71)
  %73 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %74 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %75 = getelementptr inbounds %struct.xfs_find_left_neighbor_info, %struct.xfs_find_left_neighbor_info* %16, i32 0, i32 1
  %76 = load i32, i32* @xfs_rmap_find_left_neighbor_helper, align 4
  %77 = call i32 @xfs_rmap_query_range(%struct.xfs_btree_cur* %73, %struct.TYPE_7__* %74, %struct.TYPE_7__* %75, i32 %76, %struct.xfs_find_left_neighbor_info* %16)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @ECANCELED, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %89 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %92 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %14, align 8
  %97 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %14, align 8
  %100 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %14, align 8
  %103 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %14, align 8
  %106 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %14, align 8
  %109 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @trace_xfs_rmap_find_left_neighbor_result(i32 %90, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %87, %83
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %41, %21
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @XFS_RMAP_NON_INODE_OWNER(i64) #1

declare dso_local i32 @trace_xfs_rmap_find_left_neighbor_query(i32, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @xfs_rmap_query_range(%struct.xfs_btree_cur*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, %struct.xfs_find_left_neighbor_info*) #1

declare dso_local i32 @trace_xfs_rmap_find_left_neighbor_result(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

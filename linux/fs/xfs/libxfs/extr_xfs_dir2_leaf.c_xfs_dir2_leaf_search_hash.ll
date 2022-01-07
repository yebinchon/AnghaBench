; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_search_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_search_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)* }
%struct.xfs_dir3_icleaf_hdr = type { i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_buf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_search_hash(%struct.TYPE_7__* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %13 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %22, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call %struct.xfs_dir2_leaf_entry* %23(i32* %24)
  store %struct.xfs_dir2_leaf_entry* %25, %struct.xfs_dir2_leaf_entry** %12, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %31, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 %32(%struct.xfs_dir3_icleaf_hdr* %13, i32* %33)
  %35 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  store %struct.xfs_dir2_leaf_entry* %35, %struct.xfs_dir2_leaf_entry** %10, align 8
  store i32 0, i32* %8, align 4
  %36 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %71, %2
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be32_to_cpu(i32 %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %72

61:                                               ; preds = %46
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %42

72:                                               ; preds = %60, %42
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %93, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %81, i64 %84
  %86 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be32_to_cpu(i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %80, %77
  %92 = phi i1 [ false, %77 ], [ %90, %80 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %11, align 4
  br label %77

96:                                               ; preds = %91
  br label %105

97:                                               ; preds = %72
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*)*, %struct.xfs_dir2_leaf_entry* (i32*)* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_buf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_lookup(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = call i32 @trace_xfs_dir2_leaf_lookup(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = call i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_14__* %16, %struct.xfs_buf** %9, i32* %8, %struct.xfs_buf** %4)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %6, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %30 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_12__* %28, %struct.xfs_buf* %29)
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %32 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %10, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %37, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call %struct.xfs_dir2_leaf_entry* %38(i32* %39)
  store %struct.xfs_dir2_leaf_entry* %40, %struct.xfs_dir2_leaf_entry** %13, align 8
  %41 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %41, i64 %43
  store %struct.xfs_dir2_leaf_entry* %44, %struct.xfs_dir2_leaf_entry** %11, align 8
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %53 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = call i32 @xfs_dir2_dataptr_to_off(i32 %51, i32 %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %48, i64 %57
  %59 = bitcast i8* %58 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %5, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be64_to_cpu(i32 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = call i32 %70(%struct.TYPE_13__* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xfs_dir_cilookup_result(%struct.TYPE_14__* %75, i32 %78, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %85 = call i32 @xfs_trans_brelse(i32* %83, %struct.xfs_buf* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %88 = call i32 @xfs_trans_brelse(i32* %86, %struct.xfs_buf* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %21, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @trace_xfs_dir2_leaf_lookup(%struct.TYPE_14__*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_14__*, %struct.xfs_buf**, i32*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_12__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_dir_cilookup_result(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

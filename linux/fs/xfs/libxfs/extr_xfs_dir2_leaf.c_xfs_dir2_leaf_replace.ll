; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i32)*, %struct.xfs_dir2_leaf_entry* (i32*)* }
%struct.TYPE_14__ = type { i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_buf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_replace(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = call i32 @trace_xfs_dir2_leaf_replace(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_15__* %16, %struct.xfs_buf** %9, i32* %8, %struct.xfs_buf** %4)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %93

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %6, align 8
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call %struct.xfs_dir2_leaf_entry* %32(i32* %33)
  store %struct.xfs_dir2_leaf_entry* %34, %struct.xfs_dir2_leaf_entry** %13, align 8
  %35 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %35, i64 %37
  store %struct.xfs_dir2_leaf_entry* %38, %struct.xfs_dir2_leaf_entry** %11, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %47 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = call i32 @xfs_dir2_dataptr_to_off(i32 %45, i32 %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %42, i64 %51
  %53 = bitcast i8* %52 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %5, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be64_to_cpu(i32 %59)
  %61 = icmp ne i64 %56, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cpu_to_be64(i64 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %74(%struct.TYPE_14__* %75, i32 %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %12, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = call i32 @xfs_dir2_data_log_entry(%struct.TYPE_15__* %83, %struct.xfs_buf* %84, %struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %89 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_13__* %87, %struct.xfs_buf* %88)
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %92 = call i32 @xfs_trans_brelse(i32* %90, %struct.xfs_buf* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %21, %19
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @trace_xfs_dir2_leaf_replace(%struct.TYPE_15__*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_15__*, %struct.xfs_buf**, i32*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dir2_data_log_entry(%struct.TYPE_15__*, %struct.xfs_buf*, %struct.TYPE_14__*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_13__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

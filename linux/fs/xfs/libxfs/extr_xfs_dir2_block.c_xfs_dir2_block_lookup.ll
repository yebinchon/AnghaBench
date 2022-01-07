; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.xfs_buf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_lookup(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = call i32 @trace_xfs_dir2_block_lookup(%struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = call i32 @xfs_dir2_block_lookup_int(%struct.TYPE_17__* %14, %struct.xfs_buf** %6, i32* %10)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %9, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %28 = call i32 @xfs_dir3_data_check(%struct.TYPE_14__* %26, %struct.xfs_buf* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @xfs_dir2_block_tail_p(i32 %31, i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.TYPE_15__* @xfs_dir2_block_leaf_p(i32* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = call i32 @xfs_dir2_dataptr_to_off(i32 %40, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %37, i64 %49
  %51 = bitcast i8* %50 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %8, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be64_to_cpu(i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = call i32 %62(%struct.TYPE_16__* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @xfs_dir_cilookup_result(%struct.TYPE_17__* %67, i32 %70, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %79 = call i32 @xfs_trans_brelse(i32 %77, %struct.xfs_buf* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %19, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @trace_xfs_dir2_block_lookup(%struct.TYPE_17__*) #1

declare dso_local i32 @xfs_dir2_block_lookup_int(%struct.TYPE_17__*, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_14__*, %struct.xfs_buf*) #1

declare dso_local i32* @xfs_dir2_block_tail_p(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_dir_cilookup_result(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

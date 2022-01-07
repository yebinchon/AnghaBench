; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.xfs_buf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_replace(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = call i32 @trace_xfs_dir2_block_replace(%struct.TYPE_18__* %12)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = call i32 @xfs_dir2_block_lookup_int(%struct.TYPE_18__* %14, %struct.xfs_buf** %6, i32* %10)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %9, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @xfs_dir2_block_tail_p(i32 %28, i32* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_16__* @xfs_dir2_block_leaf_p(i32* %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = call i32 @xfs_dir2_dataptr_to_off(i32 %37, i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %34, i64 %46
  %48 = bitcast i8* %47 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %8, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @be64_to_cpu(i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cpu_to_be64(i64 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(%struct.TYPE_17__* %70, i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = call i32 @xfs_dir2_data_log_entry(%struct.TYPE_18__* %75, %struct.xfs_buf* %76, %struct.TYPE_17__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %81 = call i32 @xfs_dir3_data_check(%struct.TYPE_15__* %79, %struct.xfs_buf* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %19, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @trace_xfs_dir2_block_replace(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_block_lookup_int(%struct.TYPE_18__*, %struct.xfs_buf**, i32*) #1

declare dso_local i32* @xfs_dir2_block_tail_p(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dir2_data_log_entry(%struct.TYPE_18__*, %struct.xfs_buf*, %struct.TYPE_17__*) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_15__*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

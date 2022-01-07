; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_removename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32)* }
%struct.TYPE_22__ = type { i32 }
%struct.xfs_buf = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_removename(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = call i32 @trace_xfs_dir2_block_removename(%struct.TYPE_25__* %17)
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = call i32 @xfs_dir2_block_lookup_int(%struct.TYPE_25__* %19, %struct.xfs_buf** %6, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %2, align 4
  br label %125

24:                                               ; preds = %1
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %9, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %16, align 8
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %32 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call %struct.TYPE_24__* @xfs_dir2_block_tail_p(i32 %36, i32* %37)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %7, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %40 = call %struct.TYPE_22__* @xfs_dir2_block_leaf_p(%struct.TYPE_24__* %39)
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = call i32 @xfs_dir2_dataptr_to_off(i32 %45, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %42, i64 %54
  %56 = bitcast i8* %55 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %60 = bitcast %struct.TYPE_23__* %59 to i8*
  %61 = load i32*, i32** %4, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = ptrtoint i8* %60 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32 (i32)*, i32 (i32)** %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %71(i32 %74)
  %76 = call i32 @xfs_dir2_data_make_free(%struct.TYPE_25__* %57, %struct.xfs_buf* %58, i32 %66, i32 %75, i32* %12, i32* %13)
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = call i32 @be32_add_cpu(i32* %78, i32 1)
  %80 = load i32*, i32** %16, align 8
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %82 = call i32 @xfs_dir2_block_log_tail(i32* %80, %struct.xfs_buf* %81)
  %83 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %84 = call i32 @cpu_to_be32(i32 %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @xfs_dir2_block_log_leaf(i32* %90, %struct.xfs_buf* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %24
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_21__* %98, i32* %99, i32* %12)
  br label %101

101:                                              ; preds = %97, %24
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %106 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %107 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_25__* %105, %struct.xfs_buf* %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %110 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %111 = call i32 @xfs_dir3_data_check(%struct.TYPE_21__* %109, %struct.xfs_buf* %110)
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @xfs_dir2_block_sfsize(%struct.TYPE_21__* %112, i32* %113, i32* %14)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_21__* %116)
  %118 = icmp sgt i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %125

120:                                              ; preds = %108
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %122 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @xfs_dir2_block_to_sf(%struct.TYPE_25__* %121, %struct.xfs_buf* %122, i32 %123, i32* %14)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %119, %22
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @trace_xfs_dir2_block_removename(%struct.TYPE_25__*) #1

declare dso_local i32 @xfs_dir2_block_lookup_int(%struct.TYPE_25__*, %struct.xfs_buf**, i32*) #1

declare dso_local %struct.TYPE_24__* @xfs_dir2_block_tail_p(i32, i32*) #1

declare dso_local %struct.TYPE_22__* @xfs_dir2_block_leaf_p(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(%struct.TYPE_25__*, %struct.xfs_buf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_dir2_block_log_tail(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_block_log_leaf(i32*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_25__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_21__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_block_sfsize(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_21__*) #1

declare dso_local i32 @xfs_dir2_block_to_sf(%struct.TYPE_25__*, %struct.xfs_buf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

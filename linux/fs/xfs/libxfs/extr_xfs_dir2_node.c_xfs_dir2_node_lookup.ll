; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i64, %struct.TYPE_17__, i32, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_lookup(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %9 = call i32 @trace_xfs_dir2_node_lookup(%struct.TYPE_21__* %8)
  %10 = call %struct.TYPE_20__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %13, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = call i32 @xfs_da3_node_lookup_int(%struct.TYPE_20__* %21, i32* %5)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %5, align 4
  br label %62

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XFS_CMP_CASE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  %52 = bitcast i8* %51 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %7, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @xfs_dir_cilookup_result(%struct.TYPE_21__* %53, i32 %56, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %38, %32, %27
  br label %62

62:                                               ; preds = %61, %25
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %92, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = call i32 @xfs_trans_brelse(i32 %73, %struct.TYPE_22__* %82)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %91, align 8
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %63

95:                                               ; preds = %63
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = icmp ne %struct.TYPE_22__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = call i32 @xfs_trans_brelse(i32 %109, %struct.TYPE_22__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %117, align 8
  br label %118

118:                                              ; preds = %106, %100, %95
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = call i32 @xfs_da_state_free(%struct.TYPE_20__* %119)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @trace_xfs_dir2_node_lookup(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da3_node_lookup_int(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @xfs_dir_cilookup_result(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

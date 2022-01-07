; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_addname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i64, i32, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__* }

@ENOENT = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_addname(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = call i32 @trace_xfs_dir2_node_addname(%struct.TYPE_19__* %7)
  %9 = call %struct.TYPE_17__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %6, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %12, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = call i32 @xfs_da3_node_lookup_int(%struct.TYPE_17__* %20, i32* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %106

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32* [ %40, %38 ], [ null, %41 ]
  %44 = call i32 @xfs_dir2_node_addname_int(%struct.TYPE_19__* %33, i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %106

48:                                               ; preds = %42
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %58
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %3, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @xfs_dir2_leafn_add(i32 %69, %struct.TYPE_19__* %70, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %48
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = call i32 @xfs_da3_fixhashpath(%struct.TYPE_17__* %85, %struct.TYPE_15__* %87)
  br label %89

89:                                               ; preds = %84, %77
  br label %105

90:                                               ; preds = %48
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  br label %106

102:                                              ; preds = %90
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = call i32 @xfs_da3_split(%struct.TYPE_17__* %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %89
  br label %106

106:                                              ; preds = %105, %95, %47, %31
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = call i32 @xfs_da_state_free(%struct.TYPE_17__* %107)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @trace_xfs_dir2_node_addname(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da3_node_lookup_int(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_node_addname_int(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_leafn_add(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @xfs_da3_fixhashpath(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i32 @xfs_da3_split(%struct.TYPE_17__*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

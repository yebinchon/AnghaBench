; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_get_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_get_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@NULLAGBLOCK = common dso_local global i64 0, align 8
@XFS_AGF_FLFIRST = common dso_local global i32 0, align 4
@XFS_AGF_FLCOUNT = common dso_local global i32 0, align 4
@XFS_AGF_BTREEBLKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_get_freelist(%struct.TYPE_12__* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_14__* @XFS_BUF_TO_AGF(i32* %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* @NULLAGBLOCK, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %118

30:                                               ; preds = %4
  %31 = load i32*, i32** %16, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @be32_to_cpu(i64 %35)
  %37 = call i32 @xfs_alloc_read_agfl(i32* %31, %struct.TYPE_12__* %32, i64 %36, i32** %11)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %5, align 4
  br label %118

42:                                               ; preds = %30
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i64* @XFS_BUF_TO_AGFL_BNO(i32* %43, i32* %44)
  store i64* %45, i64** %13, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @be32_to_cpu(i64 %49)
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @be32_to_cpu(i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = call i32 @be32_add_cpu(i64* %55, i32 1)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @xfs_trans_brelse(%struct.TYPE_12__* %57, i32* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @be32_to_cpu(i64 %62)
  %64 = load i32*, i32** %16, align 8
  %65 = call i64 @xfs_agfl_size(i32* %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %42
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %42
  %71 = load i32*, i32** %16, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @be32_to_cpu(i64 %74)
  %76 = call %struct.TYPE_13__* @xfs_perag_get(i32* %71, i64 %75)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %17, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = call i32 @be32_add_cpu(i64* %85, i32 -1)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = call i32 @xfs_trans_agflist_delta(%struct.TYPE_12__* %87, i32 -1)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @XFS_AGF_FLFIRST, align 4
  %94 = load i32, i32* @XFS_AGF_FLCOUNT, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %70
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = call i32 @be32_add_cpu(i64* %100, i32 1)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @XFS_AGF_BTREEBLKS, align 4
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %98, %70
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %111 = call i32 @xfs_perag_put(%struct.TYPE_13__* %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @xfs_alloc_log_agf(%struct.TYPE_12__* %112, i32* %113, i32 %114)
  %116 = load i64, i64* %12, align 8
  %117 = load i64*, i64** %8, align 8
  store i64 %116, i64* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %109, %40, %27
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_14__* @XFS_BUF_TO_AGF(i32*) #1

declare dso_local i32 @xfs_alloc_read_agfl(i32*, %struct.TYPE_12__*, i64, i32**) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i64* @XFS_BUF_TO_AGFL_BNO(i32*, i32*) #1

declare dso_local i32 @be32_add_cpu(i64*, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @xfs_agfl_size(i32*) #1

declare dso_local %struct.TYPE_13__* @xfs_perag_get(i32*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_agflist_delta(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_alloc_log_agf(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

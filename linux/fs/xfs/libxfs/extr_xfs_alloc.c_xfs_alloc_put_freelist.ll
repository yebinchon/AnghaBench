; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_put_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_put_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i32, i32, i32 }

@XFS_AGF_FLLAST = common dso_local global i32 0, align 4
@XFS_AGF_FLCOUNT = common dso_local global i32 0, align 4
@XFS_AGF_BTREEBLKS = common dso_local global i32 0, align 4
@XFS_BLFT_AGFL_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_put_freelist(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %21 = call %struct.TYPE_25__* @XFS_BUF_TO_AGF(%struct.TYPE_24__* %20)
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %12, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %26 = icmp ne %struct.TYPE_24__* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %5
  %28 = load i32*, i32** %16, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @be32_to_cpu(i64 %32)
  %34 = call i32 @xfs_alloc_read_agfl(i32* %28, %struct.TYPE_22__* %29, i64 %33, %struct.TYPE_24__** %9)
  store i32 %34, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %146

38:                                               ; preds = %27, %5
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = call i32 @be32_add_cpu(i64* %40, i32 1)
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @be32_to_cpu(i64 %44)
  %46 = load i32*, i32** %16, align 8
  %47 = call i64 @xfs_agfl_size(i32* %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32*, i32** %16, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @be32_to_cpu(i64 %56)
  %58 = call %struct.TYPE_23__* @xfs_perag_get(i32* %53, i64 %57)
  store %struct.TYPE_23__* %58, %struct.TYPE_23__** %17, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  %68 = call i32 @be32_add_cpu(i64* %67, i32 1)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %70 = call i32 @xfs_trans_agflist_delta(%struct.TYPE_22__* %69, i32 1)
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @XFS_AGF_FLLAST, align 4
  %76 = load i32, i32* @XFS_AGF_FLCOUNT, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %52
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  %83 = call i32 @be32_add_cpu(i64* %82, i32 -1)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @XFS_AGF_BTREEBLKS, align 4
  %89 = load i32, i32* %15, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %80, %52
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %93 = call i32 @xfs_perag_put(%struct.TYPE_23__* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @xfs_alloc_log_agf(%struct.TYPE_22__* %94, %struct.TYPE_24__* %95, i32 %96)
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @be32_to_cpu(i64 %100)
  %102 = load i32*, i32** %16, align 8
  %103 = call i64 @xfs_agfl_size(i32* %102)
  %104 = icmp ule i64 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load i32*, i32** %16, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = call i32* @XFS_BUF_TO_AGFL_BNO(i32* %107, %struct.TYPE_24__* %108)
  store i32* %109, i32** %18, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @be32_to_cpu(i64 %113)
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32* %115, i32** %13, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @cpu_to_be32(i32 %116)
  %118 = load i32*, i32** %13, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = ptrtoint i8* %120 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %19, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @xfs_alloc_log_agf(%struct.TYPE_22__* %129, %struct.TYPE_24__* %130, i32 %131)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %135 = load i32, i32* @XFS_BLFT_AGFL_BUF, align 4
  %136 = call i32 @xfs_trans_buf_set_type(%struct.TYPE_22__* %133, %struct.TYPE_24__* %134, i32 %135)
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, 4
  %143 = sub i64 %142, 1
  %144 = trunc i64 %143 to i32
  %145 = call i32 @xfs_trans_log_buf(%struct.TYPE_22__* %137, %struct.TYPE_24__* %138, i32 %139, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %91, %36
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.TYPE_25__* @XFS_BUF_TO_AGF(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_alloc_read_agfl(i32*, %struct.TYPE_22__*, i64, %struct.TYPE_24__**) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @be32_add_cpu(i64*, i32) #1

declare dso_local i64 @xfs_agfl_size(i32*) #1

declare dso_local %struct.TYPE_23__* @xfs_perag_get(i32*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_agflist_delta(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_alloc_log_agf(%struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32* @XFS_BUF_TO_AGFL_BNO(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @xfs_trans_log_buf(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_read_agf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_read_agf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agf = type { i32*, i32, i32, i32, i32, i32 }
%struct.xfs_perag = type { i32, i64, i64, i64, i64, i64*, i32, i64 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@XFS_ALLOC_FLAG_TRYLOCK = common dso_local global i32 0, align 4
@XBF_TRYLOCK = common dso_local global i32 0, align 4
@XFS_BTNUM_BNOi = common dso_local global i64 0, align 8
@XFS_BTNUM_CNTi = common dso_local global i64 0, align 8
@XFS_BTNUM_RMAPi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i64 %2, i32 %3, %struct.xfs_buf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf**, align 8
  %12 = alloca %struct.xfs_agf*, align 8
  %13 = alloca %struct.xfs_perag*, align 8
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %11, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @trace_xfs_alloc_read_agf(%struct.xfs_mount* %15, i64 %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NULLAGNUMBER, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %24 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @XFS_ALLOC_FLAG_TRYLOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @XBF_TRYLOCK, align 4
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %36 = call i32 @xfs_read_agf(%struct.xfs_mount* %23, %struct.xfs_trans* %24, i64 %25, i32 %34, %struct.xfs_buf** %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %142

41:                                               ; preds = %33
  %42 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %42, align 8
  %44 = icmp ne %struct.xfs_buf* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %142

46:                                               ; preds = %41
  %47 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %47, align 8
  %49 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %55, align 8
  %57 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %56)
  store %struct.xfs_agf* %57, %struct.xfs_agf** %12, align 8
  %58 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %58, i64 %59)
  store %struct.xfs_perag* %60, %struct.xfs_perag** %13, align 8
  %61 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %62 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %139, label %65

65:                                               ; preds = %46
  %66 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %67 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @be32_to_cpu(i32 %68)
  %70 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %71 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %73 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @be32_to_cpu(i32 %74)
  %76 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %77 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %79 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @be32_to_cpu(i32 %80)
  %82 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %83 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %85 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @be32_to_cpu(i32 %86)
  %88 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %89 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %91 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @XFS_BTNUM_BNOi, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @be32_to_cpu(i32 %95)
  %97 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %98 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @XFS_BTNUM_BNOi, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 %96, i64* %101, align 8
  %102 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %103 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @XFS_BTNUM_CNTi, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @be32_to_cpu(i32 %107)
  %109 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %110 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %109, i32 0, i32 5
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* @XFS_BTNUM_CNTi, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 %108, i64* %113, align 8
  %114 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %115 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @XFS_BTNUM_RMAPi, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @be32_to_cpu(i32 %119)
  %121 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %122 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %121, i32 0, i32 5
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @XFS_BTNUM_RMAPi, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %120, i64* %125, align 8
  %126 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %127 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @be32_to_cpu(i32 %128)
  %130 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %131 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %130, i32 0, i32 7
  store i64 %129, i64* %131, align 8
  %132 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %133 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %135 = load %struct.xfs_agf*, %struct.xfs_agf** %12, align 8
  %136 = call i32 @xfs_agfl_needs_reset(%struct.xfs_mount* %134, %struct.xfs_agf* %135)
  %137 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %138 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %65, %46
  %140 = load %struct.xfs_perag*, %struct.xfs_perag** %13, align 8
  %141 = call i32 @xfs_perag_put(%struct.xfs_perag* %140)
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %139, %45, %39
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @trace_xfs_alloc_read_agf(%struct.xfs_mount*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_read_agf(%struct.xfs_mount*, %struct.xfs_trans*, i64, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_agfl_needs_reset(%struct.xfs_mount*, %struct.xfs_agf*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

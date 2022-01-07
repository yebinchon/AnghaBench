; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_bmap.c_xchk_bmap_get_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_bmap.c_xchk_bmap_get_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xchk_bmap_info = type { i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_bmbt_irec = type { i64 }
%struct.xfs_rmap_irec = type { i32 }

@XFS_ATTR_FORK = common dso_local global i64 0, align 8
@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_COW_FORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xchk_bmap_info*, %struct.xfs_bmbt_irec*, i32, i32, %struct.xfs_rmap_irec*)* @xchk_bmap_get_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xchk_bmap_get_rmap(%struct.xchk_bmap_info* %0, %struct.xfs_bmbt_irec* %1, i32 %2, i32 %3, %struct.xfs_rmap_irec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xchk_bmap_info*, align 8
  %8 = alloca %struct.xfs_bmbt_irec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_rmap_irec*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xchk_bmap_info* %0, %struct.xchk_bmap_info** %7, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_rmap_irec* %4, %struct.xfs_rmap_irec** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %17 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFS_ATTR_FORK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %27 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XFS_COW_FORK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %34 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %32, %31
  %37 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %38 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %43 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %53 = call i32 @xfs_rmap_lookup_le_range(i32 %47, i32 %48, i32 %49, i64 %50, i32 %51, %struct.xfs_rmap_irec* %52, i32* %14)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %55 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %58 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @xchk_should_check_xref(%struct.TYPE_5__* %56, i32* %15, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %130

65:                                               ; preds = %41
  br label %114

66:                                               ; preds = %36
  %67 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %68 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @xfs_rmap_lookup_le(i32 %72, i32 %73, i32 0, i32 %74, i64 %75, i32 %76, i32* %14)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %79 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %82 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @xchk_should_check_xref(%struct.TYPE_5__* %80, i32* %15, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %130

89:                                               ; preds = %66
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %114

93:                                               ; preds = %89
  %94 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %95 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %101 = call i32 @xfs_rmap_get_rec(i32 %99, %struct.xfs_rmap_irec* %100, i32* %14)
  store i32 %101, i32* %15, align 4
  %102 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %103 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %106 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @xchk_should_check_xref(%struct.TYPE_5__* %104, i32* %15, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %130

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %92, %65
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %119 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load %struct.xchk_bmap_info*, %struct.xchk_bmap_info** %7, align 8
  %122 = getelementptr inbounds %struct.xchk_bmap_info, %struct.xchk_bmap_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %125 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @xchk_fblock_xref_set_corrupt(%struct.TYPE_5__* %120, i64 %123, i64 %126)
  br label %128

128:                                              ; preds = %117, %114
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %112, %88, %64
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @xfs_rmap_lookup_le_range(i32, i32, i32, i64, i32, %struct.xfs_rmap_irec*, i32*) #1

declare dso_local i32 @xchk_should_check_xref(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @xfs_rmap_lookup_le(i32, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @xfs_rmap_get_rec(i32, %struct.xfs_rmap_irec*, i32*) #1

declare dso_local i32 @xchk_fblock_xref_set_corrupt(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

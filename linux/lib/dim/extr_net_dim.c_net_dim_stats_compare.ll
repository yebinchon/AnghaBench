; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_stats_compare.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_stats_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_stats = type { i64, i64, i64 }

@DIM_STATS_BETTER = common dso_local global i32 0, align 4
@DIM_STATS_SAME = common dso_local global i32 0, align 4
@DIM_STATS_WORSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_stats*, %struct.dim_stats*)* @net_dim_stats_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dim_stats_compare(%struct.dim_stats* %0, %struct.dim_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dim_stats*, align 8
  %5 = alloca %struct.dim_stats*, align 8
  store %struct.dim_stats* %0, %struct.dim_stats** %4, align 8
  store %struct.dim_stats* %1, %struct.dim_stats** %5, align 8
  %6 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %7 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %12 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @DIM_STATS_SAME, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %23 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %26 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @IS_SIGNIFICANT_DIFF(i64 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %21
  %31 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %32 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %35 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @DIM_STATS_WORSE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %115

44:                                               ; preds = %21
  %45 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %46 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %51 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @DIM_STATS_SAME, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %3, align 4
  br label %115

60:                                               ; preds = %44
  %61 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %62 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %65 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @IS_SIGNIFICANT_DIFF(i64 %63, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %60
  %70 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %71 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %74 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @DIM_STATS_WORSE, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %3, align 4
  br label %115

83:                                               ; preds = %60
  %84 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %85 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @DIM_STATS_SAME, align 4
  store i32 %89, i32* %3, align 4
  br label %115

90:                                               ; preds = %83
  %91 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %92 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %95 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @IS_SIGNIFICANT_DIFF(i64 %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %101 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %104 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @DIM_STATS_WORSE, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %90
  %114 = load i32, i32* @DIM_STATS_SAME, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %111, %88, %81, %58, %42, %19
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @IS_SIGNIFICANT_DIFF(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

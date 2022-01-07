; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim_stats_compare.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim_stats_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_stats = type { i64, i64 }

@DIM_STATS_SAME = common dso_local global i32 0, align 4
@DIM_STATS_BETTER = common dso_local global i32 0, align 4
@DIM_STATS_WORSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_stats*, %struct.dim_stats*)* @rdma_dim_stats_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_dim_stats_compare(%struct.dim_stats* %0, %struct.dim_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dim_stats*, align 8
  %5 = alloca %struct.dim_stats*, align 8
  store %struct.dim_stats* %0, %struct.dim_stats** %4, align 8
  store %struct.dim_stats* %1, %struct.dim_stats** %5, align 8
  %6 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %7 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @DIM_STATS_SAME, align 4
  store i32 %11, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %14 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %17 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @IS_SIGNIFICANT_DIFF(i64 %15, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %23 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %26 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @DIM_STATS_WORSE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %3, align 4
  br label %60

35:                                               ; preds = %12
  %36 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %37 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %40 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @IS_SIGNIFICANT_DIFF(i64 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load %struct.dim_stats*, %struct.dim_stats** %4, align 8
  %46 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dim_stats*, %struct.dim_stats** %5, align 8
  %49 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @DIM_STATS_BETTER, align 4
  br label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @DIM_STATS_WORSE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %35
  %59 = load i32, i32* @DIM_STATS_SAME, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %56, %33, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @IS_SIGNIFICANT_DIFF(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

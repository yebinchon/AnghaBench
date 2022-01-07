; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim = type { i32, %struct.dim_sample, i32, %struct.dim_sample }
%struct.dim_sample = type { i64, i64 }
%struct.dim_stats = type { i32 }

@DIM_NEVENTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_dim(%struct.dim* %0, i64 %1) #0 {
  %3 = alloca %struct.dim*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dim_sample*, align 8
  %6 = alloca %struct.dim_stats, align 4
  %7 = alloca i64, align 8
  store %struct.dim* %0, %struct.dim** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.dim*, %struct.dim** %3, align 8
  %9 = getelementptr inbounds %struct.dim, %struct.dim* %8, i32 0, i32 3
  store %struct.dim_sample* %9, %struct.dim_sample** %5, align 8
  %10 = load %struct.dim_sample*, %struct.dim_sample** %5, align 8
  %11 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = load %struct.dim_sample*, %struct.dim_sample** %5, align 8
  %15 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.dim*, %struct.dim** %3, align 8
  %20 = getelementptr inbounds %struct.dim, %struct.dim* %19, i32 0, i32 3
  %21 = call i32 @dim_update_sample_with_comps(i64 %13, i32 0, i32 0, i64 %18, %struct.dim_sample* %20)
  %22 = load %struct.dim*, %struct.dim** %3, align 8
  %23 = getelementptr inbounds %struct.dim, %struct.dim* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %66 [
    i32 129, label %25
    i32 128, label %53
    i32 130, label %65
  ]

25:                                               ; preds = %2
  %26 = load %struct.dim_sample*, %struct.dim_sample** %5, align 8
  %27 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dim*, %struct.dim** %3, align 8
  %30 = getelementptr inbounds %struct.dim, %struct.dim* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @DIM_NEVENTS, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %66

38:                                               ; preds = %25
  %39 = load %struct.dim*, %struct.dim** %3, align 8
  %40 = getelementptr inbounds %struct.dim, %struct.dim* %39, i32 0, i32 1
  %41 = load %struct.dim_sample*, %struct.dim_sample** %5, align 8
  %42 = call i32 @dim_calc_stats(%struct.dim_sample* %40, %struct.dim_sample* %41, %struct.dim_stats* %6)
  %43 = load %struct.dim*, %struct.dim** %3, align 8
  %44 = call i32 @rdma_dim_decision(%struct.dim_stats* %6, %struct.dim* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.dim*, %struct.dim** %3, align 8
  %48 = getelementptr inbounds %struct.dim, %struct.dim* %47, i32 0, i32 0
  store i32 130, i32* %48, align 8
  %49 = load %struct.dim*, %struct.dim** %3, align 8
  %50 = getelementptr inbounds %struct.dim, %struct.dim* %49, i32 0, i32 2
  %51 = call i32 @schedule_work(i32* %50)
  br label %66

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %2, %52
  %54 = load %struct.dim*, %struct.dim** %3, align 8
  %55 = getelementptr inbounds %struct.dim, %struct.dim* %54, i32 0, i32 0
  store i32 129, i32* %55, align 8
  %56 = load %struct.dim_sample*, %struct.dim_sample** %5, align 8
  %57 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dim_sample*, %struct.dim_sample** %5, align 8
  %60 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dim*, %struct.dim** %3, align 8
  %63 = getelementptr inbounds %struct.dim, %struct.dim* %62, i32 0, i32 1
  %64 = call i32 @dim_update_sample_with_comps(i64 %58, i32 0, i32 0, i64 %61, %struct.dim_sample* %63)
  br label %66

65:                                               ; preds = %2
  br label %66

66:                                               ; preds = %2, %65, %53, %46, %37
  ret void
}

declare dso_local i32 @dim_update_sample_with_comps(i64, i32, i32, i64, %struct.dim_sample*) #1

declare dso_local i32 @dim_calc_stats(%struct.dim_sample*, %struct.dim_sample*, %struct.dim_stats*) #1

declare dso_local i32 @rdma_dim_decision(%struct.dim_stats*, %struct.dim*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

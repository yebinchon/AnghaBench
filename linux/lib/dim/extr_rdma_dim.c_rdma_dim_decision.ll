; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim_decision.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_stats = type { i32 }
%struct.dim = type { i32, i64, %struct.dim_stats }

@DIM_PARKING_ON_TOP = common dso_local global i64 0, align 8
@DIM_PARKING_TIRED = common dso_local global i64 0, align 8
@DIM_ON_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_stats*, %struct.dim*)* @rdma_dim_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_dim_decision(%struct.dim_stats* %0, %struct.dim* %1) #0 {
  %3 = alloca %struct.dim_stats*, align 8
  %4 = alloca %struct.dim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dim_stats* %0, %struct.dim_stats** %3, align 8
  store %struct.dim* %1, %struct.dim** %4, align 8
  %9 = load %struct.dim*, %struct.dim** %4, align 8
  %10 = getelementptr inbounds %struct.dim, %struct.dim* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dim*, %struct.dim** %4, align 8
  %13 = getelementptr inbounds %struct.dim, %struct.dim* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @DIM_PARKING_ON_TOP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @DIM_PARKING_TIRED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.dim_stats*, %struct.dim_stats** %3, align 8
  %24 = load %struct.dim*, %struct.dim** %4, align 8
  %25 = getelementptr inbounds %struct.dim, %struct.dim* %24, i32 0, i32 2
  %26 = call i32 @rdma_dim_stats_compare(%struct.dim_stats* %23, %struct.dim_stats* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %52 [
    i32 129, label %28
    i32 128, label %39
    i32 130, label %42
  ]

28:                                               ; preds = %22
  %29 = load %struct.dim_stats*, %struct.dim_stats** %3, align 8
  %30 = getelementptr inbounds %struct.dim_stats, %struct.dim_stats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 50, %32
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.dim*, %struct.dim** %4, align 8
  %37 = getelementptr inbounds %struct.dim, %struct.dim* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %28
  br label %52

39:                                               ; preds = %22
  %40 = load %struct.dim*, %struct.dim** %4, align 8
  %41 = call i32 @dim_turn(%struct.dim* %40)
  br label %42

42:                                               ; preds = %22, %39
  %43 = load %struct.dim*, %struct.dim** %4, align 8
  %44 = call i32 @rdma_dim_step(%struct.dim* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @DIM_ON_EDGE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.dim*, %struct.dim** %4, align 8
  %50 = call i32 @dim_turn(%struct.dim* %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %22, %51, %38
  br label %53

53:                                               ; preds = %52, %18, %2
  %54 = load %struct.dim*, %struct.dim** %4, align 8
  %55 = getelementptr inbounds %struct.dim, %struct.dim* %54, i32 0, i32 2
  %56 = load %struct.dim_stats*, %struct.dim_stats** %3, align 8
  %57 = bitcast %struct.dim_stats* %55 to i8*
  %58 = bitcast %struct.dim_stats* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.dim*, %struct.dim** %4, align 8
  %60 = getelementptr inbounds %struct.dim, %struct.dim* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %61, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i32 @rdma_dim_stats_compare(%struct.dim_stats*, %struct.dim_stats*) #1

declare dso_local i32 @dim_turn(%struct.dim*) #1

declare dso_local i32 @rdma_dim_step(%struct.dim*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim_step.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_rdma_dim.c_rdma_dim_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim = type { i64, i32, i32, i32 }

@DIM_GOING_RIGHT = common dso_local global i64 0, align 8
@RDMA_DIM_PARAMS_NUM_PROFILES = common dso_local global i32 0, align 4
@DIM_ON_EDGE = common dso_local global i32 0, align 4
@DIM_GOING_LEFT = common dso_local global i64 0, align 8
@DIM_STEPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim*)* @rdma_dim_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_dim_step(%struct.dim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim*, align 8
  store %struct.dim* %0, %struct.dim** %3, align 8
  %4 = load %struct.dim*, %struct.dim** %3, align 8
  %5 = getelementptr inbounds %struct.dim, %struct.dim* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DIM_GOING_RIGHT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.dim*, %struct.dim** %3, align 8
  %11 = getelementptr inbounds %struct.dim, %struct.dim* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RDMA_DIM_PARAMS_NUM_PROFILES, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @DIM_ON_EDGE, align 4
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %9
  %19 = load %struct.dim*, %struct.dim** %3, align 8
  %20 = getelementptr inbounds %struct.dim, %struct.dim* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.dim*, %struct.dim** %3, align 8
  %24 = getelementptr inbounds %struct.dim, %struct.dim* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.dim*, %struct.dim** %3, align 8
  %29 = getelementptr inbounds %struct.dim, %struct.dim* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DIM_GOING_LEFT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.dim*, %struct.dim** %3, align 8
  %35 = getelementptr inbounds %struct.dim, %struct.dim* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @DIM_ON_EDGE, align 4
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.dim*, %struct.dim** %3, align 8
  %42 = getelementptr inbounds %struct.dim, %struct.dim* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.dim*, %struct.dim** %3, align 8
  %46 = getelementptr inbounds %struct.dim, %struct.dim* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %27
  %50 = load i32, i32* @DIM_STEPPED, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %38, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

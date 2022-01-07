; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_step.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim = type { i32, i32, i32, i32, i32 }

@NET_DIM_PARAMS_NUM_PROFILES = common dso_local global i32 0, align 4
@DIM_TOO_TIRED = common dso_local global i32 0, align 4
@DIM_ON_EDGE = common dso_local global i32 0, align 4
@DIM_STEPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim*)* @net_dim_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dim_step(%struct.dim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim*, align 8
  store %struct.dim* %0, %struct.dim** %3, align 8
  %4 = load %struct.dim*, %struct.dim** %3, align 8
  %5 = getelementptr inbounds %struct.dim, %struct.dim* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NET_DIM_PARAMS_NUM_PROFILES, align 4
  %8 = mul nsw i32 %7, 2
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DIM_TOO_TIRED, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.dim*, %struct.dim** %3, align 8
  %14 = getelementptr inbounds %struct.dim, %struct.dim* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %51 [
    i32 129, label %16
    i32 128, label %16
    i32 130, label %17
    i32 131, label %35
  ]

16:                                               ; preds = %12, %12
  br label %51

17:                                               ; preds = %12
  %18 = load %struct.dim*, %struct.dim** %3, align 8
  %19 = getelementptr inbounds %struct.dim, %struct.dim* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NET_DIM_PARAMS_NUM_PROFILES, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @DIM_ON_EDGE, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.dim*, %struct.dim** %3, align 8
  %28 = getelementptr inbounds %struct.dim, %struct.dim* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.dim*, %struct.dim** %3, align 8
  %32 = getelementptr inbounds %struct.dim, %struct.dim* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %51

35:                                               ; preds = %12
  %36 = load %struct.dim*, %struct.dim** %3, align 8
  %37 = getelementptr inbounds %struct.dim, %struct.dim* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DIM_ON_EDGE, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %35
  %43 = load %struct.dim*, %struct.dim** %3, align 8
  %44 = getelementptr inbounds %struct.dim, %struct.dim* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.dim*, %struct.dim** %3, align 8
  %48 = getelementptr inbounds %struct.dim, %struct.dim* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %12, %42, %26, %16
  %52 = load %struct.dim*, %struct.dim** %3, align 8
  %53 = getelementptr inbounds %struct.dim, %struct.dim* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @DIM_STEPPED, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %40, %24, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

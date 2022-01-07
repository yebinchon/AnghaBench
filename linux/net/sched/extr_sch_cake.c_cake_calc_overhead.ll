; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_calc_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_calc_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cake_sched_data = type { i32, i32, i32, i32, i64, i32, i32, i64 }

@CAKE_FLAG_OVERHEAD = common dso_local global i32 0, align 4
@CAKE_ATM_ATM = common dso_local global i64 0, align 8
@CAKE_ATM_PTM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cake_sched_data*, i32, i32)* @cake_calc_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_calc_overhead(%struct.cake_sched_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cake_sched_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cake_sched_data* %0, %struct.cake_sched_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %8 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CAKE_FLAG_OVERHEAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %19 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %26 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %29 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %36 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %39 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %47 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %52 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %37
  %55 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %56 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CAKE_ATM_ATM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 47
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sdiv i32 %63, 48
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 53
  store i32 %66, i32* %5, align 4
  br label %80

67:                                               ; preds = %54
  %68 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %69 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CAKE_ATM_PTM, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 63
  %76 = sdiv i32 %75, 64
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %82 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %89 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %92 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %99 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_next_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_next_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32, i64, i32, %struct.intel_pt* }
%struct.intel_pt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*)* @intel_pt_next_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_next_time(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  %5 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %5, i32 0, i32 3
  %7 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  store %struct.intel_pt* %7, %struct.intel_pt** %4, align 8
  %8 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %9 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %16 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %19 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  store i32 1, i32* %2, align 4
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %28 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %32 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %26
  %37 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %38 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %40 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %44 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %47 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %53 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  store i32 1, i32* %2, align 4
  br label %56

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %36, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

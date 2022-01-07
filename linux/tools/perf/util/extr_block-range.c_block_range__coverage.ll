; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_block-range.c_block_range__coverage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_block-range.c_block_range__coverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.block_range = type { i64, %struct.symbol* }
%struct.symbol = type { i32 }
%struct.TYPE_3__ = type { double }

@block_ranges = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @block_range__coverage(%struct.block_range* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.block_range*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.block_range* %0, %struct.block_range** %3, align 8
  %5 = load %struct.block_range*, %struct.block_range** %3, align 8
  %6 = icmp ne %struct.block_range* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @block_ranges, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store double 0.000000e+00, double* %2, align 8
  br label %29

11:                                               ; preds = %7
  store double -1.000000e+00, double* %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.block_range*, %struct.block_range** %3, align 8
  %14 = getelementptr inbounds %struct.block_range, %struct.block_range* %13, i32 0, i32 1
  %15 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %15, %struct.symbol** %4, align 8
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = icmp ne %struct.symbol* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store double -1.000000e+00, double* %2, align 8
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.block_range*, %struct.block_range** %3, align 8
  %21 = getelementptr inbounds %struct.block_range, %struct.block_range* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = load %struct.symbol*, %struct.symbol** %4, align 8
  %25 = call %struct.TYPE_3__* @symbol__annotation(%struct.symbol* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fdiv double %23, %27
  store double %28, double* %2, align 8
  br label %29

29:                                               ; preds = %19, %18, %11, %10
  %30 = load double, double* %2, align 8
  ret double %30
}

declare dso_local %struct.TYPE_3__* @symbol__annotation(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

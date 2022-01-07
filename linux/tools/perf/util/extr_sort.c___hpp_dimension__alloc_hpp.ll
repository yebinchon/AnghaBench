; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___hpp_dimension__alloc_hpp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___hpp_dimension__alloc_hpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i32, i32, i32, i32 }
%struct.hpp_dimension = type { i32 }

@hpp_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_hpp_fmt* (%struct.hpp_dimension*, i32)* @__hpp_dimension__alloc_hpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_hpp_fmt* @__hpp_dimension__alloc_hpp(%struct.hpp_dimension* %0, i32 %1) #0 {
  %3 = alloca %struct.hpp_dimension*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_hpp_fmt*, align 8
  store %struct.hpp_dimension* %0, %struct.hpp_dimension** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hpp_dimension*, %struct.hpp_dimension** %3, align 8
  %7 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.perf_hpp_fmt* @memdup(i32 %8, i32 16)
  store %struct.perf_hpp_fmt* %9, %struct.perf_hpp_fmt** %5, align 8
  %10 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %5, align 8
  %11 = icmp ne %struct.perf_hpp_fmt* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %5, align 8
  %14 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %5, align 8
  %17 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i32, i32* @hpp_free, align 4
  %20 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %5, align 8
  %21 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %5, align 8
  %24 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %12, %2
  %26 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %5, align 8
  ret %struct.perf_hpp_fmt* %26
}

declare dso_local %struct.perf_hpp_fmt* @memdup(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___hpp_dimension__add_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___hpp_dimension__add_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_list = type { i32 }
%struct.hpp_dimension = type { i32 }
%struct.perf_hpp_fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_list*, %struct.hpp_dimension*)* @__hpp_dimension__add_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hpp_dimension__add_output(%struct.perf_hpp_list* %0, %struct.hpp_dimension* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_hpp_list*, align 8
  %5 = alloca %struct.hpp_dimension*, align 8
  %6 = alloca %struct.perf_hpp_fmt*, align 8
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %4, align 8
  store %struct.hpp_dimension* %1, %struct.hpp_dimension** %5, align 8
  %7 = load %struct.hpp_dimension*, %struct.hpp_dimension** %5, align 8
  %8 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.hpp_dimension*, %struct.hpp_dimension** %5, align 8
  %14 = call %struct.perf_hpp_fmt* @__hpp_dimension__alloc_hpp(%struct.hpp_dimension* %13, i32 0)
  store %struct.perf_hpp_fmt* %14, %struct.perf_hpp_fmt** %6, align 8
  %15 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %16 = icmp ne %struct.perf_hpp_fmt* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.hpp_dimension*, %struct.hpp_dimension** %5, align 8
  %20 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %22 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %23 = call i32 @perf_hpp_list__column_register(%struct.perf_hpp_list* %21, %struct.perf_hpp_fmt* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %17, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.perf_hpp_fmt* @__hpp_dimension__alloc_hpp(%struct.hpp_dimension*, i32) #1

declare dso_local i32 @perf_hpp_list__column_register(%struct.perf_hpp_list*, %struct.perf_hpp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

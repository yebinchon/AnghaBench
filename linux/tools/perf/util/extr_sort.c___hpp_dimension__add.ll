; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___hpp_dimension__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___hpp_dimension__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpp_dimension = type { i32 }
%struct.perf_hpp_list = type { i32 }
%struct.perf_hpp_fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpp_dimension*, %struct.perf_hpp_list*, i32)* @__hpp_dimension__add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hpp_dimension__add(%struct.hpp_dimension* %0, %struct.perf_hpp_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpp_dimension*, align 8
  %6 = alloca %struct.perf_hpp_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_hpp_fmt*, align 8
  store %struct.hpp_dimension* %0, %struct.hpp_dimension** %5, align 8
  store %struct.perf_hpp_list* %1, %struct.perf_hpp_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hpp_dimension*, %struct.hpp_dimension** %5, align 8
  %10 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.hpp_dimension*, %struct.hpp_dimension** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.perf_hpp_fmt* @__hpp_dimension__alloc_hpp(%struct.hpp_dimension* %15, i32 %16)
  store %struct.perf_hpp_fmt* %17, %struct.perf_hpp_fmt** %8, align 8
  %18 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %8, align 8
  %19 = icmp ne %struct.perf_hpp_fmt* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load %struct.hpp_dimension*, %struct.hpp_dimension** %5, align 8
  %23 = getelementptr inbounds %struct.hpp_dimension, %struct.hpp_dimension* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %25 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %8, align 8
  %26 = call i32 @perf_hpp_list__register_sort_field(%struct.perf_hpp_list* %24, %struct.perf_hpp_fmt* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %20, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.perf_hpp_fmt* @__hpp_dimension__alloc_hpp(%struct.hpp_dimension*, i32) #1

declare dso_local i32 @perf_hpp_list__register_sort_field(%struct.perf_hpp_list*, %struct.perf_hpp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

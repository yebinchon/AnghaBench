; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_dimension = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.perf_hpp_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sort_dimension*, %struct.perf_hpp_list*, i32)* @__sort_dimension__add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sort_dimension__add(%struct.sort_dimension* %0, %struct.perf_hpp_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sort_dimension*, align 8
  %6 = alloca %struct.perf_hpp_list*, align 8
  %7 = alloca i32, align 4
  store %struct.sort_dimension* %0, %struct.sort_dimension** %5, align 8
  store %struct.perf_hpp_list* %1, %struct.perf_hpp_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %9 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %15 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @__sort_dimension__add_hpp_sort(%struct.sort_dimension* %14, %struct.perf_hpp_list* %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %22 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %29 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %32 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %19, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @__sort_dimension__add_hpp_sort(%struct.sort_dimension*, %struct.perf_hpp_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

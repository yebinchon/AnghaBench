; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__add_hpp_sort.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__add_hpp_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_dimension = type { i32 }
%struct.perf_hpp_list = type { i32 }
%struct.hpp_sort_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sort_dimension*, %struct.perf_hpp_list*, i32)* @__sort_dimension__add_hpp_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sort_dimension__add_hpp_sort(%struct.sort_dimension* %0, %struct.perf_hpp_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sort_dimension*, align 8
  %6 = alloca %struct.perf_hpp_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpp_sort_entry*, align 8
  store %struct.sort_dimension* %0, %struct.sort_dimension** %5, align 8
  store %struct.perf_hpp_list* %1, %struct.perf_hpp_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.hpp_sort_entry* @__sort_dimension__alloc_hpp(%struct.sort_dimension* %9, i32 %10)
  store %struct.hpp_sort_entry* %11, %struct.hpp_sort_entry** %8, align 8
  %12 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %8, align 8
  %13 = icmp eq %struct.hpp_sort_entry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %6, align 8
  %17 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %8, align 8
  %18 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %17, i32 0, i32 0
  %19 = call i32 @perf_hpp_list__register_sort_field(%struct.perf_hpp_list* %16, i32* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.hpp_sort_entry* @__sort_dimension__alloc_hpp(%struct.sort_dimension*, i32) #1

declare dso_local i32 @perf_hpp_list__register_sort_field(%struct.perf_hpp_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__add_hpp_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__add_hpp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_dimension = type { i32 }
%struct.perf_hpp_list = type { i32 }
%struct.hpp_sort_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sort_dimension*, %struct.perf_hpp_list*)* @__sort_dimension__add_hpp_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sort_dimension__add_hpp_output(%struct.sort_dimension* %0, %struct.perf_hpp_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sort_dimension*, align 8
  %5 = alloca %struct.perf_hpp_list*, align 8
  %6 = alloca %struct.hpp_sort_entry*, align 8
  store %struct.sort_dimension* %0, %struct.sort_dimension** %4, align 8
  store %struct.perf_hpp_list* %1, %struct.perf_hpp_list** %5, align 8
  %7 = load %struct.sort_dimension*, %struct.sort_dimension** %4, align 8
  %8 = call %struct.hpp_sort_entry* @__sort_dimension__alloc_hpp(%struct.sort_dimension* %7, i32 0)
  store %struct.hpp_sort_entry* %8, %struct.hpp_sort_entry** %6, align 8
  %9 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %10 = icmp eq %struct.hpp_sort_entry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %5, align 8
  %14 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %15 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %14, i32 0, i32 0
  %16 = call i32 @perf_hpp_list__column_register(%struct.perf_hpp_list* %13, i32* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.hpp_sort_entry* @__sort_dimension__alloc_hpp(%struct.sort_dimension*, i32) #1

declare dso_local i32 @perf_hpp_list__column_register(%struct.perf_hpp_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

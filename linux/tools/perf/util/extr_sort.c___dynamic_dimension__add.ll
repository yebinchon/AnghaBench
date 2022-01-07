; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___dynamic_dimension__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___dynamic_dimension__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.tep_format_field = type { i32 }
%struct.hpp_dynamic_entry = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.tep_format_field*, i32, i32)* @__dynamic_dimension__add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dynamic_dimension__add(%struct.evsel* %0, %struct.tep_format_field* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.tep_format_field*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpp_dynamic_entry*, align 8
  store %struct.evsel* %0, %struct.evsel** %6, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.evsel*, %struct.evsel** %6, align 8
  %12 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.hpp_dynamic_entry* @__alloc_dynamic_entry(%struct.evsel* %11, %struct.tep_format_field* %12, i32 %13)
  store %struct.hpp_dynamic_entry* %14, %struct.hpp_dynamic_entry** %10, align 8
  %15 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %10, align 8
  %16 = icmp eq %struct.hpp_dynamic_entry* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %10, align 8
  %23 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %10, align 8
  %25 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %24, i32 0, i32 1
  %26 = call i32 @perf_hpp__register_sort_field(i32* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.hpp_dynamic_entry* @__alloc_dynamic_entry(%struct.evsel*, %struct.tep_format_field*, i32) #1

declare dso_local i32 @perf_hpp__register_sort_field(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

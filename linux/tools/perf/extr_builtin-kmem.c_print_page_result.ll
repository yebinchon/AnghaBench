; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_print_page_result.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_print_page_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }

@caller_flag = common dso_local global i64 0, align 8
@alloc_flag = common dso_local global i64 0, align 8
@caller_lines = common dso_local global i32 0, align 4
@alloc_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_session*)* @print_page_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_page_result(%struct.perf_session* %0) #0 {
  %2 = alloca %struct.perf_session*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %2, align 8
  %3 = load i64, i64* @caller_flag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @alloc_flag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = call i32 (...) @print_gfp_flags()
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i64, i64* @caller_flag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %15 = load i32, i32* @caller_lines, align 4
  %16 = call i32 @__print_page_caller_result(%struct.perf_session* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* @alloc_flag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %22 = load i32, i32* @alloc_lines, align 4
  %23 = call i32 @__print_page_alloc_result(%struct.perf_session* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 (...) @print_page_summary()
  ret void
}

declare dso_local i32 @print_gfp_flags(...) #1

declare dso_local i32 @__print_page_caller_result(%struct.perf_session*, i32) #1

declare dso_local i32 @__print_page_alloc_result(%struct.perf_session*, i32) #1

declare dso_local i32 @print_page_summary(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

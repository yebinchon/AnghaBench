; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_sort_result.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_sort_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmem_slab = common dso_local global i64 0, align 8
@root_alloc_stat = common dso_local global i32 0, align 4
@root_alloc_sorted = common dso_local global i32 0, align 4
@slab_alloc_sort = common dso_local global i32 0, align 4
@root_caller_stat = common dso_local global i32 0, align 4
@root_caller_sorted = common dso_local global i32 0, align 4
@slab_caller_sort = common dso_local global i32 0, align 4
@kmem_page = common dso_local global i64 0, align 8
@live_page = common dso_local global i64 0, align 8
@page_live_tree = common dso_local global i32 0, align 4
@page_alloc_sorted = common dso_local global i32 0, align 4
@page_alloc_sort = common dso_local global i32 0, align 4
@page_alloc_tree = common dso_local global i32 0, align 4
@page_caller_tree = common dso_local global i32 0, align 4
@page_caller_sorted = common dso_local global i32 0, align 4
@page_caller_sort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_result() #0 {
  %1 = load i64, i64* @kmem_slab, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = call i32 @__sort_slab_result(i32* @root_alloc_stat, i32* @root_alloc_sorted, i32* @slab_alloc_sort)
  %5 = call i32 @__sort_slab_result(i32* @root_caller_stat, i32* @root_caller_sorted, i32* @slab_caller_sort)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @kmem_page, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i64, i64* @live_page, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @__sort_page_result(i32* @page_live_tree, i32* @page_alloc_sorted, i32* @page_alloc_sort)
  br label %16

14:                                               ; preds = %9
  %15 = call i32 @__sort_page_result(i32* @page_alloc_tree, i32* @page_alloc_sorted, i32* @page_alloc_sort)
  br label %16

16:                                               ; preds = %14, %12
  %17 = call i32 @__sort_page_result(i32* @page_caller_tree, i32* @page_caller_sorted, i32* @page_caller_sort)
  br label %18

18:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @__sort_slab_result(i32*, i32*, i32*) #1

declare dso_local i32 @__sort_page_result(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

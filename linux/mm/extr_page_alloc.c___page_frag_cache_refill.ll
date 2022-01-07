; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___page_frag_cache_refill.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___page_frag_cache_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.page_frag_cache = type { i32*, i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@PAGE_FRAG_CACHE_MAX_ORDER = common dso_local global i32 0, align 4
@PAGE_FRAG_CACHE_MAX_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.page_frag_cache*, i32)* @__page_frag_cache_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__page_frag_cache_refill(%struct.page_frag_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.page_frag_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.page_frag_cache* %0, %struct.page_frag_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.page* null, %struct.page** %5, align 8
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = icmp ne %struct.page* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @NUMA_NO_NODE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.page* @alloc_pages_node(i32 %15, i32 %16, i32 0)
  store %struct.page* %17, %struct.page** %5, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32* @page_address(%struct.page* %22)
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32* [ %23, %21 ], [ null, %24 ]
  %27 = load %struct.page_frag_cache*, %struct.page_frag_cache** %3, align 8
  %28 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

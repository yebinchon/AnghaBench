; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_getpages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kmem_cache = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.kmem_cache*, i32, i32)* @kmem_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @kmem_getpages(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %10 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.page* @__alloc_pages_node(i32 %14, i32 %15, i32 %18)
  store %struct.page* %19, %struct.page** %8, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @slab_out_of_memory(%struct.kmem_cache* %23, i32 %24, i32 %25)
  store %struct.page* null, %struct.page** %4, align 8
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %31 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %34 = call i64 @charge_slab_page(%struct.page* %28, i32 %29, i32 %32, %struct.kmem_cache* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %39 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__free_pages(%struct.page* %37, i32 %40)
  store %struct.page* null, %struct.page** %4, align 8
  br label %56

42:                                               ; preds = %27
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i32 @__SetPageSlab(%struct.page* %43)
  %45 = call i64 (...) @sk_memalloc_socks()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i64 @page_is_pfmemalloc(%struct.page* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = call i32 @SetPageSlabPfmemalloc(%struct.page* %52)
  br label %54

54:                                               ; preds = %51, %47, %42
  %55 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %55, %struct.page** %4, align 8
  br label %56

56:                                               ; preds = %54, %36, %22
  %57 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %57
}

declare dso_local %struct.page* @__alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @slab_out_of_memory(%struct.kmem_cache*, i32, i32) #1

declare dso_local i64 @charge_slab_page(%struct.page*, i32, i32, %struct.kmem_cache*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @__SetPageSlab(%struct.page*) #1

declare dso_local i64 @sk_memalloc_socks(...) #1

declare dso_local i64 @page_is_pfmemalloc(%struct.page*) #1

declare dso_local i32 @SetPageSlabPfmemalloc(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

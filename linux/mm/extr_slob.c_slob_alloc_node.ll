; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_alloc_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slob.c_slob_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32 (i8*)*, i32, i32 }

@gfp_allowed_mask = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@SLOB_UNIT = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32)* @slob_alloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slob_alloc_node(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @gfp_allowed_mask, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @fs_reclaim_acquire(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @fs_reclaim_release(i32 %13)
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %22 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %26 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @slob_alloc(i32 %23, i32 %24, i32 %27, i32 %28, i32 0)
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* @_RET_IP_, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %36 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SLOB_UNITS(i32 %37)
  %39 = load i32, i32* @SLOB_UNIT, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @trace_kmem_cache_alloc_node(i32 %30, i8* %31, i32 %34, i32 %40, i32 %41, i32 %42)
  br label %66

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %47 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @get_order(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @slob_new_pages(i32 %45, i32 %49, i32 %50)
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* @_RET_IP_, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %55 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %59 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @get_order(i32 %60)
  %62 = shl i32 %57, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @trace_kmem_cache_alloc_node(i32 %52, i8* %53, i32 %56, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %44, %20
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %71 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %70, i32 0, i32 2
  %72 = load i32 (i8*)*, i32 (i8*)** %71, align 8
  %73 = icmp ne i32 (i8*)* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @__GFP_ZERO, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @WARN_ON_ONCE(i32 %77)
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %80 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %79, i32 0, i32 2
  %81 = load i32 (i8*)*, i32 (i8*)** %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 %81(i8* %82)
  br label %84

84:                                               ; preds = %74, %69, %66
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %87 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %90 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @kmemleak_alloc_recursive(i8* %85, i32 %88, i32 1, i32 %91, i32 %92)
  %94 = load i8*, i8** %7, align 8
  ret i8* %94
}

declare dso_local i32 @fs_reclaim_acquire(i32) #1

declare dso_local i32 @fs_reclaim_release(i32) #1

declare dso_local i8* @slob_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_kmem_cache_alloc_node(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SLOB_UNITS(i32) #1

declare dso_local i8* @slob_new_pages(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kmemleak_alloc_recursive(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

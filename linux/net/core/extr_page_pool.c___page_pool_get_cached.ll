; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_get_cached.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_get_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.page_pool = type { %struct.TYPE_2__, %struct.ptr_ring }
%struct.TYPE_2__ = type { i64, %struct.page** }
%struct.ptr_ring = type { i32 }

@PP_ALLOC_CACHE_REFILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.page_pool*)* @__page_pool_get_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__page_pool_get_cached(%struct.page_pool* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.page_pool*, align 8
  %4 = alloca %struct.ptr_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.page_pool* %0, %struct.page_pool** %3, align 8
  %7 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %8 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %7, i32 0, i32 1
  store %struct.ptr_ring* %8, %struct.ptr_ring** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i64 (...) @in_serving_softirq()
  %10 = call i64 @likely(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %14 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @likely(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %21 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.page**, %struct.page*** %22, align 8
  %24 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %25 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %6, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %31, %struct.page** %2, align 8
  br label %62

32:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %35 = call i64 @__ptr_ring_empty(%struct.ptr_ring* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.page* null, %struct.page** %2, align 8
  br label %62

38:                                               ; preds = %33
  %39 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %40 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %43 = call %struct.page* @__ptr_ring_consume(%struct.ptr_ring* %42)
  store %struct.page* %43, %struct.page** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %48 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %49 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.page**, %struct.page*** %50, align 8
  %52 = load i32, i32* @PP_ALLOC_CACHE_REFILL, align 4
  %53 = call i64 @__ptr_ring_consume_batched(%struct.ptr_ring* %47, %struct.page** %51, i32 %52)
  %54 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %55 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %38
  %58 = load %struct.ptr_ring*, %struct.ptr_ring** %4, align 8
  %59 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %61, %struct.page** %2, align 8
  br label %62

62:                                               ; preds = %57, %37, %19
  %63 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %63
}

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @in_serving_softirq(...) #1

declare dso_local i64 @__ptr_ring_empty(%struct.ptr_ring*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.page* @__ptr_ring_consume(%struct.ptr_ring*) #1

declare dso_local i64 @__ptr_ring_consume_batched(%struct.ptr_ring*, %struct.page**, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

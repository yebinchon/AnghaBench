; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_clean_page.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_clean_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.page = type { i64 }

@PP_FLAG_DMA_MAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page_pool*, %struct.page*)* @__page_pool_clean_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__page_pool_clean_page(%struct.page_pool* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page_pool*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  store %struct.page_pool* %0, %struct.page_pool** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %7 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PP_FLAG_DMA_MAP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %19 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %25 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %23, %27
  %29 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %30 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %34 = call i32 @dma_unmap_page_attrs(i32 %21, i64 %22, i32 %28, i32 %32, i32 %33)
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %14, %13
  %38 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %39 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %38, i32 0, i32 0
  %40 = call i32 @atomic_inc(i32* %39)
  %41 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = load %struct.page_pool*, %struct.page_pool** %3, align 8
  %44 = getelementptr inbounds %struct.page_pool, %struct.page_pool* %43, i32 0, i32 0
  %45 = call i32 @atomic_read(i32* %44)
  %46 = call i32 @trace_page_pool_state_release(%struct.page_pool* %41, %struct.page* %42, i32 %45)
  ret void
}

declare dso_local i32 @dma_unmap_page_attrs(i32, i64, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_page_pool_state_release(%struct.page_pool*, %struct.page*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

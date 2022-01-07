; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-km.c_pcpu_create_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-km.c_pcpu_create_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i32, %struct.page* }
%struct.page = type { i32 }

@pcpu_group_sizes = common dso_local global i32* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@pcpu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcpu_chunk* (i32)* @pcpu_create_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcpu_chunk* @pcpu_create_chunk(i32 %0) #0 {
  %2 = alloca %struct.pcpu_chunk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcpu_chunk*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32*, i32** @pcpu_group_sizes, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.pcpu_chunk* @pcpu_alloc_chunk(i32 %14)
  store %struct.pcpu_chunk* %15, %struct.pcpu_chunk** %5, align 8
  %16 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %17 = icmp ne %struct.pcpu_chunk* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.pcpu_chunk* null, %struct.pcpu_chunk** %2, align 8
  br label %64

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @order_base_2(i32 %21)
  %23 = call %struct.page* @alloc_pages(i32 %20, i32 %22)
  store %struct.page* %23, %struct.page** %6, align 8
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %28 = call i32 @pcpu_free_chunk(%struct.pcpu_chunk* %27)
  store %struct.pcpu_chunk* null, %struct.pcpu_chunk** %2, align 8
  br label %64

29:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @nth_page(%struct.page* %35, i32 %36)
  %38 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %39 = call i32 @pcpu_set_page_chunk(i32 %37, %struct.pcpu_chunk* %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %30

43:                                               ; preds = %30
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %46 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %45, i32 0, i32 1
  store %struct.page* %44, %struct.page** %46, align 8
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = call i32 @page_address(%struct.page* %47)
  %49 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %50 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_lock_irqsave(i32* @pcpu_lock, i64 %51)
  %53 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pcpu_chunk_populated(%struct.pcpu_chunk* %53, i32 0, i32 %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @pcpu_lock, i64 %56)
  %58 = call i32 (...) @pcpu_stats_chunk_alloc()
  %59 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %60 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @trace_percpu_create_chunk(i32 %61)
  %63 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  store %struct.pcpu_chunk* %63, %struct.pcpu_chunk** %2, align 8
  br label %64

64:                                               ; preds = %43, %26, %18
  %65 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  ret %struct.pcpu_chunk* %65
}

declare dso_local %struct.pcpu_chunk* @pcpu_alloc_chunk(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @pcpu_free_chunk(%struct.pcpu_chunk*) #1

declare dso_local i32 @pcpu_set_page_chunk(i32, %struct.pcpu_chunk*) #1

declare dso_local i32 @nth_page(%struct.page*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcpu_chunk_populated(%struct.pcpu_chunk*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pcpu_stats_chunk_alloc(...) #1

declare dso_local i32 @trace_percpu_create_chunk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

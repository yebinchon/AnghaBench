; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-km.c_pcpu_destroy_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-km.c_pcpu_destroy_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i64, i32 }

@pcpu_group_sizes = common dso_local global i32* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu_chunk*)* @pcpu_destroy_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_destroy_chunk(%struct.pcpu_chunk* %0) #0 {
  %2 = alloca %struct.pcpu_chunk*, align 8
  %3 = alloca i32, align 4
  store %struct.pcpu_chunk* %0, %struct.pcpu_chunk** %2, align 8
  %4 = load i32*, i32** @pcpu_group_sizes, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PAGE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %10 = icmp ne %struct.pcpu_chunk* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = call i32 (...) @pcpu_stats_chunk_dealloc()
  %14 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %15 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @trace_percpu_destroy_chunk(i32 %16)
  %18 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %19 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %24 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @order_base_2(i32 %26)
  %28 = call i32 @__free_pages(i64 %25, i32 %27)
  br label %29

29:                                               ; preds = %22, %12
  %30 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %2, align 8
  %31 = call i32 @pcpu_free_chunk(%struct.pcpu_chunk* %30)
  br label %32

32:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @pcpu_stats_chunk_dealloc(...) #1

declare dso_local i32 @trace_percpu_destroy_chunk(i32) #1

declare dso_local i32 @__free_pages(i64, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @pcpu_free_chunk(%struct.pcpu_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

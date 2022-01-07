; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_get_partial.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_get_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kmem_cache_cpu = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32, %struct.kmem_cache_cpu*)* @get_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_partial(%struct.kmem_cache* %0, i32 %1, i32 %2, %struct.kmem_cache_cpu* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kmem_cache_cpu*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.kmem_cache_cpu* %3, %struct.kmem_cache_cpu** %9, align 8
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NUMA_NO_NODE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 (...) @numa_mem_id()
  store i32 %17, i32* %11, align 4
  br label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @node_present_pages(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @node_to_mem_node(i32 %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @get_node(%struct.kmem_cache* %28, i32 %29)
  %31 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @get_partial_node(%struct.kmem_cache* %27, i32 %30, %struct.kmem_cache_cpu* %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NUMA_NO_NODE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %26
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %5, align 8
  br label %47

42:                                               ; preds = %36
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %9, align 8
  %46 = call i8* @get_any_partial(%struct.kmem_cache* %43, i32 %44, %struct.kmem_cache_cpu* %45)
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %42, %40
  %48 = load i8*, i8** %5, align 8
  ret i8* %48
}

declare dso_local i32 @numa_mem_id(...) #1

declare dso_local i32 @node_present_pages(i32) #1

declare dso_local i32 @node_to_mem_node(i32) #1

declare dso_local i8* @get_partial_node(%struct.kmem_cache*, i32, %struct.kmem_cache_cpu*, i32) #1

declare dso_local i32 @get_node(%struct.kmem_cache*, i32) #1

declare dso_local i8* @get_any_partial(%struct.kmem_cache*, i32, %struct.kmem_cache_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

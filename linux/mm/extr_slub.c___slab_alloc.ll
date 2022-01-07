; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c___slab_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c___slab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kmem_cache_cpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32, i64, %struct.kmem_cache_cpu*)* @__slab_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__slab_alloc(%struct.kmem_cache* %0, i32 %1, i32 %2, i64 %3, %struct.kmem_cache_cpu* %4) #0 {
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kmem_cache_cpu*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.kmem_cache_cpu* %4, %struct.kmem_cache_cpu** %10, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %10, align 8
  %20 = call i8* @___slab_alloc(%struct.kmem_cache* %15, i32 %16, i32 %17, i64 %18, %struct.kmem_cache_cpu* %19)
  store i8* %20, i8** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @local_irq_restore(i64 %21)
  %23 = load i8*, i8** %11, align 8
  ret i8* %23
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @___slab_alloc(%struct.kmem_cache*, i32, i32, i64, %struct.kmem_cache_cpu*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

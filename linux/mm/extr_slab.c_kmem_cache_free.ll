; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@SLAB_DEBUG_OBJECTS = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_free(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache* %6, i8* %7)
  store %struct.kmem_cache* %8, %struct.kmem_cache** %3, align 8
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %10 = icmp ne %struct.kmem_cache* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @debug_check_no_locks_freed(i8* %15, i32 %18)
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %21 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SLAB_DEBUG_OBJECTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %12
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %29 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @debug_check_no_obj_freed(i8* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %12
  %33 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @_RET_IP_, align 4
  %36 = call i32 @__cache_free(%struct.kmem_cache* %33, i8* %34, i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  %39 = load i32, i32* @_RET_IP_, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @trace_kmem_cache_free(i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %32, %11
  ret void
}

declare dso_local %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @debug_check_no_locks_freed(i8*, i32) #1

declare dso_local i32 @debug_check_no_obj_freed(i8*, i32) #1

declare dso_local i32 @__cache_free(%struct.kmem_cache*, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @trace_kmem_cache_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

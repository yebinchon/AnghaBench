; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_free_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_free_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@SLAB_DEBUG_OBJECTS = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_free_bulk(%struct.kmem_cache* %0, i64 %1, i8** %2) #0 {
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.kmem_cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = call i32 (...) @local_irq_disable()
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %56, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %21 = icmp ne %struct.kmem_cache* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i8*, i8** %9, align 8
  %24 = call %struct.kmem_cache* @virt_to_cache(i8* %23)
  store %struct.kmem_cache* %24, %struct.kmem_cache** %7, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache* %26, i8* %27)
  store %struct.kmem_cache* %28, %struct.kmem_cache** %7, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %31 = icmp ne %struct.kmem_cache* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %56

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %36 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @debug_check_no_locks_freed(i8* %34, i32 %37)
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %40 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SLAB_DEBUG_OBJECTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %33
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %48 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @debug_check_no_obj_freed(i8* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %33
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @_RET_IP_, align 4
  %55 = call i32 @__cache_free(%struct.kmem_cache* %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %32
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %11

59:                                               ; preds = %11
  %60 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local %struct.kmem_cache* @virt_to_cache(i8*) #1

declare dso_local %struct.kmem_cache* @cache_from_obj(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @debug_check_no_locks_freed(i8*, i32) #1

declare dso_local i32 @debug_check_no_obj_freed(i8*, i32) #1

declare dso_local i32 @__cache_free(%struct.kmem_cache*, i8*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

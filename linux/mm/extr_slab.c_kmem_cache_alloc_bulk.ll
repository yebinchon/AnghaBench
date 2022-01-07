; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_alloc_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_alloc_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_cache_alloc_bulk(%struct.kmem_cache* %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* %12, i32 %13)
  store %struct.kmem_cache* %14, %struct.kmem_cache** %6, align 8
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %16 = icmp ne %struct.kmem_cache* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %102

18:                                               ; preds = %4
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cache_alloc_debugcheck_before(%struct.kmem_cache* %19, i32 %20)
  %22 = call i32 (...) @local_irq_disable()
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %43, %18
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @__do_cache_alloc(%struct.kmem_cache* %28, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %85

38:                                               ; preds = %27
  %39 = load i8*, i8** %11, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %39, i8** %42, align 8
  br label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %23

46:                                               ; preds = %23
  %47 = call i32 (...) @local_irq_enable()
  %48 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = load i32, i32* @_RET_IP_, align 4
  %53 = call i32 @cache_alloc_debugcheck_after_bulk(%struct.kmem_cache* %48, i32 %49, i64 %50, i8** %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %56 = call i32 @slab_want_init_on_alloc(i32 %54, %struct.kmem_cache* %55)
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i8**, i8*** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %70 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memset(i8* %68, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %60

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* %8, align 8
  %81 = load i8**, i8*** %9, align 8
  %82 = call i32 @slab_post_alloc_hook(%struct.kmem_cache* %78, i32 %79, i64 %80, i8** %81)
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %102

85:                                               ; preds = %37
  %86 = call i32 (...) @local_irq_enable()
  %87 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i64, i64* %10, align 8
  %90 = load i8**, i8*** %9, align 8
  %91 = load i32, i32* @_RET_IP_, align 4
  %92 = call i32 @cache_alloc_debugcheck_after_bulk(%struct.kmem_cache* %87, i32 %88, i64 %89, i8** %90, i32 %91)
  %93 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i64, i64* %10, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = call i32 @slab_post_alloc_hook(%struct.kmem_cache* %93, i32 %94, i64 %95, i8** %96)
  %98 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i8**, i8*** %9, align 8
  %101 = call i32 @__kmem_cache_free_bulk(%struct.kmem_cache* %98, i64 %99, i8** %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %85, %77, %17
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache*, i32) #1

declare dso_local i32 @cache_alloc_debugcheck_before(%struct.kmem_cache*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i8* @__do_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cache_alloc_debugcheck_after_bulk(%struct.kmem_cache*, i32, i64, i8**, i32) #1

declare dso_local i32 @slab_want_init_on_alloc(i32, %struct.kmem_cache*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @slab_post_alloc_hook(%struct.kmem_cache*, i32, i64, i8**) #1

declare dso_local i32 @__kmem_cache_free_bulk(%struct.kmem_cache*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

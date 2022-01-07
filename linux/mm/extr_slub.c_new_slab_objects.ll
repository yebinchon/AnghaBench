; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_new_slab_objects.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_new_slab_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i64 }
%struct.kmem_cache_cpu = type { %struct.page* }
%struct.page = type { i32* }

@__GFP_ZERO = common dso_local global i32 0, align 4
@ALLOC_SLAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32, %struct.kmem_cache_cpu**)* @new_slab_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @new_slab_objects(%struct.kmem_cache* %0, i32 %1, i32 %2, %struct.kmem_cache_cpu** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kmem_cache_cpu**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kmem_cache_cpu*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.kmem_cache_cpu** %3, %struct.kmem_cache_cpu*** %9, align 8
  %13 = load %struct.kmem_cache_cpu**, %struct.kmem_cache_cpu*** %9, align 8
  %14 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %13, align 8
  store %struct.kmem_cache_cpu* %14, %struct.kmem_cache_cpu** %11, align 8
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @__GFP_ZERO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i1 [ false, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %32 = call i8* @get_partial(%struct.kmem_cache* %28, i32 %29, i32 %30, %struct.kmem_cache_cpu* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i8*, i8** %10, align 8
  store i8* %36, i8** %5, align 8
  br label %74

37:                                               ; preds = %24
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.page* @new_slab(%struct.kmem_cache* %38, i32 %39, i32 %40)
  store %struct.page* %41, %struct.page** %12, align 8
  %42 = load %struct.page*, %struct.page** %12, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %46 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.kmem_cache_cpu* @raw_cpu_ptr(i32 %47)
  store %struct.kmem_cache_cpu* %48, %struct.kmem_cache_cpu** %11, align 8
  %49 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %50 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %49, i32 0, i32 0
  %51 = load %struct.page*, %struct.page** %50, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %55 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %56 = call i32 @flush_slab(%struct.kmem_cache* %54, %struct.kmem_cache_cpu* %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.page*, %struct.page** %12, align 8
  %59 = getelementptr inbounds %struct.page, %struct.page* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %10, align 8
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %65 = load i32, i32* @ALLOC_SLAB, align 4
  %66 = call i32 @stat(%struct.kmem_cache* %64, i32 %65)
  %67 = load %struct.page*, %struct.page** %12, align 8
  %68 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %69 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %68, i32 0, i32 0
  store %struct.page* %67, %struct.page** %69, align 8
  %70 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %71 = load %struct.kmem_cache_cpu**, %struct.kmem_cache_cpu*** %9, align 8
  store %struct.kmem_cache_cpu* %70, %struct.kmem_cache_cpu** %71, align 8
  br label %72

72:                                               ; preds = %57, %37
  %73 = load i8*, i8** %10, align 8
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %72, %35
  %75 = load i8*, i8** %5, align 8
  ret i8* %75
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @get_partial(%struct.kmem_cache*, i32, i32, %struct.kmem_cache_cpu*) #1

declare dso_local %struct.page* @new_slab(%struct.kmem_cache*, i32, i32) #1

declare dso_local %struct.kmem_cache_cpu* @raw_cpu_ptr(i32) #1

declare dso_local i32 @flush_slab(%struct.kmem_cache*, %struct.kmem_cache_cpu*) #1

declare dso_local i32 @stat(%struct.kmem_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

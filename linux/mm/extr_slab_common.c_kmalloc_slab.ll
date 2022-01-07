; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_kmalloc_slab.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_kmalloc_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@ZERO_SIZE_PTR = common dso_local global %struct.kmem_cache* null, align 8
@size_index = common dso_local global i32* null, align 8
@KMALLOC_MAX_CACHE_SIZE = common dso_local global i64 0, align 8
@kmalloc_caches = common dso_local global %struct.kmem_cache*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kmem_cache* @kmalloc_slab(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp ule i64 %7, 192
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** @ZERO_SIZE_PTR, align 8
  store %struct.kmem_cache* %13, %struct.kmem_cache** %3, align 8
  br label %42

14:                                               ; preds = %9
  %15 = load i32*, i32** @size_index, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @size_index_elem(i64 %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @KMALLOC_MAX_CACHE_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store %struct.kmem_cache* null, %struct.kmem_cache** %3, align 8
  br label %42

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  %30 = sub i64 %29, 1
  %31 = call i32 @fls(i64 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %14
  %33 = load %struct.kmem_cache***, %struct.kmem_cache**** @kmalloc_caches, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @kmalloc_type(i32 %34)
  %36 = getelementptr inbounds %struct.kmem_cache**, %struct.kmem_cache*** %33, i64 %35
  %37 = load %struct.kmem_cache**, %struct.kmem_cache*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %37, i64 %39
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %40, align 8
  store %struct.kmem_cache* %41, %struct.kmem_cache** %3, align 8
  br label %42

42:                                               ; preds = %32, %27, %12
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  ret %struct.kmem_cache* %43
}

declare dso_local i64 @size_index_elem(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @kmalloc_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

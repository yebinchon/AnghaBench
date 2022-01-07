; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c___kmem_cache_alloc_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c___kmem_cache_alloc_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kmem_cache_alloc_bulk(%struct.kmem_cache* %0, i32 %1, i64 %2, i8** %3) #0 {
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
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @kmem_cache_alloc(%struct.kmem_cache* %17, i32 %18)
  %20 = load i8**, i8*** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  store i8* %19, i8** %22, align 8
  store i8* %19, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = call i32 @__kmem_cache_free_bulk(%struct.kmem_cache* %26, i64 %27, i8** %28)
  store i32 0, i32* %5, align 4
  br label %37

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @__kmem_cache_free_bulk(%struct.kmem_cache*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

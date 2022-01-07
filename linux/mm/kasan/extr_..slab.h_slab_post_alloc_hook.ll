; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_slab_post_alloc_hook.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_slab_post_alloc_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@gfp_allowed_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, i32, i64, i8**)* @slab_post_alloc_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_post_alloc_hook(%struct.kmem_cache* %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i32, i32* @gfp_allowed_mask, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %6, align 4
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @kasan_slab_alloc(%struct.kmem_cache* %18, i8* %22, i32 %23)
  %25 = load i8**, i8*** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8* %24, i8** %27, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %36 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @kmemleak_alloc_recursive(i8* %31, i32 %34, i32 1, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %17
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %13

43:                                               ; preds = %13
  %44 = call i64 (...) @memcg_kmem_enabled()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %48 = call i32 @memcg_kmem_put_cache(%struct.kmem_cache* %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local i8* @kasan_slab_alloc(%struct.kmem_cache*, i8*, i32) #1

declare dso_local i32 @kmemleak_alloc_recursive(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @memcg_kmem_enabled(...) #1

declare dso_local i32 @memcg_kmem_put_cache(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_direct_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_direct_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.alloc_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, i32, %struct.alloc_context*, i64*)* @__alloc_pages_direct_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__alloc_pages_direct_reclaim(i32 %0, i32 %1, i32 %2, %struct.alloc_context* %3, i64* %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.alloc_context*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.alloc_context* %3, %struct.alloc_context** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.alloc_context*, %struct.alloc_context** %10, align 8
  %17 = call i64 @__perform_reclaim(i32 %14, i32 %15, %struct.alloc_context* %16)
  %18 = load i64*, i64** %11, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store %struct.page* null, %struct.page** %6, align 8
  br label %45

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.alloc_context*, %struct.alloc_context** %10, align 8
  %33 = call %struct.page* @get_page_from_freelist(i32 %29, i32 %30, i32 %31, %struct.alloc_context* %32)
  store %struct.page* %33, %struct.page** %12, align 8
  %34 = load %struct.page*, %struct.page** %12, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load %struct.alloc_context*, %struct.alloc_context** %10, align 8
  %41 = call i32 @unreserve_highatomic_pageblock(%struct.alloc_context* %40, i32 0)
  %42 = call i32 @drain_all_pages(i32* null)
  store i32 1, i32* %13, align 4
  br label %28

43:                                               ; preds = %36, %28
  %44 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %44, %struct.page** %6, align 8
  br label %45

45:                                               ; preds = %43, %26
  %46 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %46
}

declare dso_local i64 @__perform_reclaim(i32, i32, %struct.alloc_context*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @get_page_from_freelist(i32, i32, i32, %struct.alloc_context*) #1

declare dso_local i32 @unreserve_highatomic_pageblock(%struct.alloc_context*, i32) #1

declare dso_local i32 @drain_all_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_page_frag_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_page_frag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_frag_cache = type { i8*, i32, i32, i8*, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_FRAG_CACHE_MAX_SIZE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @page_frag_alloc(%struct.page_frag_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page_frag_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.page_frag_cache* %0, %struct.page_frag_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %13 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %65, %20
  %22 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.page* @__page_frag_cache_refill(%struct.page_frag_cache* %22, i32 %23)
  store %struct.page* %24, %struct.page** %9, align 8
  %25 = load %struct.page*, %struct.page** %9, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %92

28:                                               ; preds = %21
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = load i8*, i8** @PAGE_FRAG_CACHE_MAX_SIZE, align 8
  %31 = call i32 @page_ref_add(%struct.page* %29, i8* %30)
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = call i32 @page_is_pfmemalloc(%struct.page* %32)
  %34 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %35 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @PAGE_FRAG_CACHE_MAX_SIZE, align 8
  %37 = getelementptr i8, i8* %36, i64 1
  %38 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %39 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %42 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %28, %3
  %44 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %45 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %43
  %55 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %56 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call %struct.page* @virt_to_page(i8* %57)
  store %struct.page* %58, %struct.page** %9, align 8
  %59 = load %struct.page*, %struct.page** %9, align 8
  %60 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %61 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @page_ref_sub_and_test(%struct.page* %59, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  br label %21

66:                                               ; preds = %54
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = load i8*, i8** @PAGE_FRAG_CACHE_MAX_SIZE, align 8
  %69 = getelementptr i8, i8* %68, i64 1
  %70 = call i32 @set_page_count(%struct.page* %67, i8* %69)
  %71 = load i8*, i8** @PAGE_FRAG_CACHE_MAX_SIZE, align 8
  %72 = getelementptr i8, i8* %71, i64 1
  %73 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %74 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %66, %43
  %79 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %80 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %80, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %85 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.page_frag_cache*, %struct.page_frag_cache** %5, align 8
  %87 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %88, i64 %90
  store i8* %91, i8** %4, align 8
  br label %92

92:                                               ; preds = %78, %27
  %93 = load i8*, i8** %4, align 8
  ret i8* %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @__page_frag_cache_refill(%struct.page_frag_cache*, i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i8*) #1

declare dso_local i32 @page_is_pfmemalloc(%struct.page*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @page_ref_sub_and_test(%struct.page*, i8*) #1

declare dso_local i32 @set_page_count(%struct.page*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

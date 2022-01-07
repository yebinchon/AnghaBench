; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_move_freepages_block.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_move_freepages_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_freepages_block(%struct.zone* %0, %struct.page* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %4
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = call i64 @page_to_pfn(%struct.page* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @pageblock_nr_pages, align 4
  %23 = sub nsw i32 %22, 1
  %24 = xor i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = and i64 %21, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call %struct.page* @pfn_to_page(i64 %27)
  store %struct.page* %28, %struct.page** %12, align 8
  %29 = load %struct.page*, %struct.page** %12, align 8
  %30 = load i32, i32* @pageblock_nr_pages, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page, %struct.page* %29, i64 %31
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i64 -1
  store %struct.page* %33, %struct.page** %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @pageblock_nr_pages, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = sub i64 %37, 1
  store i64 %38, i64* %11, align 8
  %39 = load %struct.zone*, %struct.zone** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @zone_spans_pfn(%struct.zone* %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %18
  %44 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %44, %struct.page** %12, align 8
  br label %45

45:                                               ; preds = %43, %18
  %46 = load %struct.zone*, %struct.zone** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @zone_spans_pfn(%struct.zone* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %58

51:                                               ; preds = %45
  %52 = load %struct.zone*, %struct.zone** %6, align 8
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = load %struct.page*, %struct.page** %13, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @move_freepages(%struct.zone* %52, %struct.page* %53, %struct.page* %54, i32 %55, i32* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @zone_spans_pfn(%struct.zone*, i64) #1

declare dso_local i32 @move_freepages(%struct.zone*, %struct.page*, %struct.page*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

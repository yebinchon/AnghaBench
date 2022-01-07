; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___get_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___get_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__get_free_pages(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @__GFP_HIGHMEM, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.page* @alloc_pages(i32 %10, i32 %11)
  store %struct.page* %12, %struct.page** %6, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = icmp ne %struct.page* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call i64 @page_address(%struct.page* %17)
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

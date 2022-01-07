; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_kasan_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_kasan_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kasan_alloc_pages(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @PageHighMem(%struct.page* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = call i32 (...) @random_tag()
  store i32 %13, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %26, %12
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %21, i64 %22
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @page_kasan_tag_set(%struct.page* %23, i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @page_address(%struct.page* %30)
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @kasan_unpoison_shadow(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %29, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @random_tag(...) #1

declare dso_local i32 @page_kasan_tag_set(%struct.page*, i32) #1

declare dso_local i32 @kasan_unpoison_shadow(i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

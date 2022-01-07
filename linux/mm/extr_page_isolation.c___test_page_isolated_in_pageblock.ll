; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_isolation.c___test_page_isolated_in_pageblock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_isolation.c___test_page_isolated_in_pageblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @__test_page_isolated_in_pageblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__test_page_isolated_in_pageblock(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %44, %16, %3
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @pfn_valid_within(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %4, align 8
  br label %8

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.page* @pfn_to_page(i64 %20)
  store %struct.page* %21, %struct.page** %7, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i64 @PageBuddy(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @page_order(%struct.page* %26)
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %44

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = call i64 @PageHWPoison(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %43

42:                                               ; preds = %35, %32
  br label %45

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %25
  br label %8

45:                                               ; preds = %42, %8
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @pfn_valid_within(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageBuddy(%struct.page*) #1

declare dso_local i32 @page_order(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

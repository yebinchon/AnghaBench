; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c___basepage_index.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c___basepage_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MAX_ORDER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__basepage_index(%struct.page* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.page* @compound_head(%struct.page* %7)
  store %struct.page* %8, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @page_index(%struct.page* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageHuge(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i64 @page_index(%struct.page* %15)
  store i64 %16, i64* %2, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i64 @compound_order(%struct.page* %18)
  %20 = load i64, i64* @MAX_ORDER, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i64 @page_to_pfn(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i64 @page_to_pfn(%struct.page* %25)
  %27 = sub i64 %24, %26
  store i64 %27, i64* %6, align 8
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = ptrtoint %struct.page* %29 to i64
  %32 = ptrtoint %struct.page* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i64 @compound_order(%struct.page* %37)
  %39 = shl i64 %36, %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %35, %14
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @page_index(%struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i64 @compound_order(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_undo_isolate_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_undo_isolate_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @undo_isolate_page_range(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @pageblock_nr_pages, align 8
  %11 = call i32 @IS_ALIGNED(i64 %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @pageblock_nr_pages, align 8
  %18 = call i32 @IS_ALIGNED(i64 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %43, %3
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @pageblock_nr_pages, align 8
  %31 = call %struct.page* @__first_valid_page(i64 %29, i64 %30)
  store %struct.page* %31, %struct.page** %8, align 8
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call i32 @is_migrate_isolate_page(%struct.page* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %28
  br label %43

39:                                               ; preds = %34
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @unset_migratetype_isolate(%struct.page* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i64, i64* @pageblock_nr_pages, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %24

47:                                               ; preds = %24
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local %struct.page* @__first_valid_page(i64, i64) #1

declare dso_local i32 @is_migrate_isolate_page(%struct.page*) #1

declare dso_local i32 @unset_migratetype_isolate(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

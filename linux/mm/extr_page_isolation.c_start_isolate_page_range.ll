; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_start_isolate_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_start_isolate_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@pageblock_nr_pages = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_isolate_page_range(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @pageblock_nr_pages, align 8
  %17 = call i32 @IS_ALIGNED(i64 %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @pageblock_nr_pages, align 8
  %24 = call i32 @IS_ALIGNED(i64 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %52, %4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @pageblock_nr_pages, align 8
  %37 = call %struct.page* @__first_valid_page(i64 %35, i64 %36)
  store %struct.page* %37, %struct.page** %12, align 8
  %38 = load %struct.page*, %struct.page** %12, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @set_migratetype_isolate(%struct.page* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %11, align 8
  br label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %48, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* @pageblock_nr_pages, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %10, align 8
  br label %30

56:                                               ; preds = %30
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %81

58:                                               ; preds = %46
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %74, %58
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i64, i64* %10, align 8
  %66 = call %struct.page* @pfn_to_online_page(i64 %65)
  store %struct.page* %66, %struct.page** %14, align 8
  %67 = load %struct.page*, %struct.page** %14, align 8
  %68 = icmp ne %struct.page* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %74

70:                                               ; preds = %64
  %71 = load %struct.page*, %struct.page** %14, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @unset_migratetype_isolate(%struct.page* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i64, i64* @pageblock_nr_pages, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %10, align 8
  br label %60

78:                                               ; preds = %60
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %56
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local %struct.page* @__first_valid_page(i64, i64) #1

declare dso_local i64 @set_migratetype_isolate(%struct.page*, i32, i32) #1

declare dso_local %struct.page* @pfn_to_online_page(i64) #1

declare dso_local i32 @unset_migratetype_isolate(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

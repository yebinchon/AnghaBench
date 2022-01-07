; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_memory_failure_hugetlb.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_memory_failure_hugetlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"Memory failure: %#lx: already hardware poisoned\0A\00", align 1
@MF_COUNT_INCREASED = common dso_local global i32 0, align 4
@MF_MSG_FREE_HUGE = common dso_local global i32 0, align 4
@MF_DELAYED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Memory failure: %#lx: just unpoisoned\0A\00", align 1
@PMD_SIZE = common dso_local global i64 0, align 8
@MF_MSG_NON_PMD_HUGE = common dso_local global i32 0, align 4
@MF_IGNORED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MF_MSG_UNMAP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @memory_failure_hugetlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_failure_hugetlb(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.page* @pfn_to_page(i64 %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = call %struct.page* @compound_head(%struct.page* %12)
  store %struct.page* %13, %struct.page** %7, align 8
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = call i64 @TestSetPageHWPoison(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 0, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = call i32 (...) @num_poisoned_pages_inc()
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MF_COUNT_INCREASED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %20
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = call i32 @get_hwpoison_page(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i32 @lock_page(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i64 @PageHWPoison(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i64 @hwpoison_filter(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = call i64 @TestClearPageHWPoison(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = icmp ne %struct.page* %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = call i64 @TestSetPageHWPoison(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %40
  %53 = call i32 (...) @num_poisoned_pages_dec()
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = call i32 @unlock_page(%struct.page* %54)
  store i32 0, i32* %3, align 4
  br label %118

56:                                               ; preds = %48, %44
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.page*, %struct.page** %7, align 8
  %59 = call i32 @unlock_page(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i32 @dissolve_free_huge_page(%struct.page* %60)
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* @MF_MSG_FREE_HUGE, align 4
  %64 = load i32, i32* @MF_DELAYED, align 4
  %65 = call i32 @action_result(i64 %62, i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %118

66:                                               ; preds = %26, %20
  %67 = load %struct.page*, %struct.page** %7, align 8
  %68 = call i32 @lock_page(%struct.page* %67)
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %9, align 8
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = call i64 @PageHWPoison(%struct.page* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = call i32 (...) @num_poisoned_pages_dec()
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = call i32 @unlock_page(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %7, align 8
  %82 = call i32 @put_hwpoison_page(%struct.page* %81)
  store i32 0, i32* %3, align 4
  br label %118

83:                                               ; preds = %66
  %84 = load %struct.page*, %struct.page** %7, align 8
  %85 = call i32 @page_hstate(%struct.page* %84)
  %86 = call i64 @huge_page_size(i32 %85)
  %87 = load i64, i64* @PMD_SIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i64, i64* %4, align 8
  %91 = load i32, i32* @MF_MSG_NON_PMD_HUGE, align 4
  %92 = load i32, i32* @MF_IGNORED, align 4
  %93 = call i32 @action_result(i64 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %114

96:                                               ; preds = %83
  %97 = load %struct.page*, %struct.page** %6, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @hwpoison_user_mappings(%struct.page* %97, i64 %98, i32 %99, %struct.page** %7)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %4, align 8
  %104 = load i32, i32* @MF_MSG_UNMAP_FAILED, align 4
  %105 = load i32, i32* @MF_IGNORED, align 4
  %106 = call i32 @action_result(i64 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %114

109:                                              ; preds = %96
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.page*, %struct.page** %6, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @identify_page_state(i64 %110, %struct.page* %111, i64 %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %109, %102, %89
  %115 = load %struct.page*, %struct.page** %7, align 8
  %116 = call i32 @unlock_page(%struct.page* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %75, %57, %52, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @TestSetPageHWPoison(%struct.page*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @num_poisoned_pages_inc(...) #1

declare dso_local i32 @get_hwpoison_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i64 @hwpoison_filter(%struct.page*) #1

declare dso_local i64 @TestClearPageHWPoison(%struct.page*) #1

declare dso_local i32 @num_poisoned_pages_dec(...) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @dissolve_free_huge_page(%struct.page*) #1

declare dso_local i32 @action_result(i64, i32, i32) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

declare dso_local i64 @huge_page_size(i32) #1

declare dso_local i32 @page_hstate(%struct.page*) #1

declare dso_local i32 @hwpoison_user_mappings(%struct.page*, i64, i32, %struct.page**) #1

declare dso_local i32 @identify_page_state(i64, %struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

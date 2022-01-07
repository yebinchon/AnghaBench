; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_soft_offline_in_use_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_soft_offline_in_use_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"soft offline: %#lx: non anonymous thp\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"soft offline: %#lx: thp split failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MIGRATE_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @soft_offline_in_use_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soft_offline_in_use_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.page* @compound_head(%struct.page* %9)
  store %struct.page* %10, %struct.page** %8, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i64 @PageHuge(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = call i64 @PageTransHuge(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @lock_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @PageAnon(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @split_huge_page(%struct.page* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24, %18
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @unlock_page(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @PageAnon(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @page_to_pfn(%struct.page* %36)
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i32 @page_to_pfn(%struct.page* %40)
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @put_hwpoison_page(%struct.page* %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %73

48:                                               ; preds = %24
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = call i32 @unlock_page(%struct.page* %49)
  br label %51

51:                                               ; preds = %48, %14, %2
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = call i32 @get_pageblock_migratetype(%struct.page* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = load i32, i32* @MIGRATE_ISOLATE, align 4
  %56 = call i32 @set_pageblock_migratetype(%struct.page* %54, i32 %55)
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = call i64 @PageHuge(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.page*, %struct.page** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @soft_offline_huge_page(%struct.page* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %68

64:                                               ; preds = %51
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @__soft_offline_page(%struct.page* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @set_pageblock_migratetype(%struct.page* %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %43
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

declare dso_local i32 @soft_offline_huge_page(%struct.page*, i32) #1

declare dso_local i32 @__soft_offline_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

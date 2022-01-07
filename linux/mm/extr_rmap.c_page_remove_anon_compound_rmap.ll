; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_remove_anon_compound_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_remove_anon_compound_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@NR_ANON_THPS = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@NR_ANON_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @page_remove_anon_compound_rmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_remove_anon_compound_rmap(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32* @compound_mapcount_ptr(%struct.page* %5)
  %7 = call i64 @atomic_add_negative(i32 -1, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @PageHuge(%struct.page* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %71

16:                                               ; preds = %10
  %17 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %18 = call i32 @IS_ENABLED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %71

21:                                               ; preds = %16
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = load i32, i32* @NR_ANON_THPS, align 4
  %24 = call i32 @__dec_node_page_state(%struct.page* %22, i32 %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i64 @TestClearPageDoubleMap(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @HPAGE_PMD_NR, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.page, %struct.page* %34, i64 %36
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = call i64 @atomic_add_negative(i32 -1, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %29

48:                                               ; preds = %29
  br label %51

49:                                               ; preds = %21
  %50 = load i32, i32* @HPAGE_PMD_NR, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = load %struct.page*, %struct.page** %2, align 8
  %53 = call i32 @PageMlocked(%struct.page* %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.page*, %struct.page** %2, align 8
  %58 = call i32 @clear_page_mlock(%struct.page* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.page*, %struct.page** %2, align 8
  %64 = call i32 @page_pgdat(%struct.page* %63)
  %65 = load i32, i32* @NR_ANON_MAPPED, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @__mod_node_page_state(i32 %64, i32 %65, i32 %67)
  %69 = load %struct.page*, %struct.page** %2, align 8
  %70 = call i32 @deferred_split_huge_page(%struct.page* %69)
  br label %71

71:                                               ; preds = %9, %15, %20, %62, %59
  ret void
}

declare dso_local i64 @atomic_add_negative(i32, i32*) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @__dec_node_page_state(%struct.page*, i32) #1

declare dso_local i64 @TestClearPageDoubleMap(%struct.page*) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @clear_page_mlock(%struct.page*) #1

declare dso_local i32 @__mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @deferred_split_huge_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

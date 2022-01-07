; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page_states.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @migrate_page_states(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call i64 @PageError(%struct.page* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @SetPageError(%struct.page* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i64 @PageReferenced(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @SetPageReferenced(%struct.page* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i64 @PageUptodate(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @SetPageUptodate(%struct.page* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i64 @TestClearPageActive(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @PageUnevictable(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @VM_BUG_ON_PAGE(i32 %32, %struct.page* %33)
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i32 @SetPageActive(%struct.page* %35)
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i64 @TestClearPageUnevictable(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = call i32 @SetPageUnevictable(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i64 @PageWorkingset(%struct.page* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.page*, %struct.page** %3, align 8
  %51 = call i32 @SetPageWorkingset(%struct.page* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i64 @PageChecked(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.page*, %struct.page** %3, align 8
  %58 = call i32 @SetPageChecked(%struct.page* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i64 @PageMappedToDisk(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.page*, %struct.page** %3, align 8
  %65 = call i32 @SetPageMappedToDisk(%struct.page* %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.page*, %struct.page** %4, align 8
  %68 = call i64 @PageDirty(%struct.page* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.page*, %struct.page** %3, align 8
  %72 = call i32 @SetPageDirty(%struct.page* %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.page*, %struct.page** %4, align 8
  %75 = call i64 @page_is_young(%struct.page* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.page*, %struct.page** %3, align 8
  %79 = call i32 @set_page_young(%struct.page* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = call i64 @page_is_idle(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.page*, %struct.page** %3, align 8
  %86 = call i32 @set_page_idle(%struct.page* %85)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.page*, %struct.page** %4, align 8
  %89 = call i32 @page_cpupid_xchg_last(%struct.page* %88, i32 -1)
  store i32 %89, i32* %5, align 4
  %90 = load %struct.page*, %struct.page** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @page_cpupid_xchg_last(%struct.page* %90, i32 %91)
  %93 = load %struct.page*, %struct.page** %3, align 8
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = call i32 @ksm_migrate_page(%struct.page* %93, %struct.page* %94)
  %96 = load %struct.page*, %struct.page** %4, align 8
  %97 = call i64 @PageSwapCache(%struct.page* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load %struct.page*, %struct.page** %4, align 8
  %101 = call i32 @ClearPageSwapCache(%struct.page* %100)
  br label %102

102:                                              ; preds = %99, %87
  %103 = load %struct.page*, %struct.page** %4, align 8
  %104 = call i32 @ClearPagePrivate(%struct.page* %103)
  %105 = load %struct.page*, %struct.page** %4, align 8
  %106 = call i32 @set_page_private(%struct.page* %105, i32 0)
  %107 = load %struct.page*, %struct.page** %3, align 8
  %108 = call i64 @PageWriteback(%struct.page* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.page*, %struct.page** %3, align 8
  %112 = call i32 @end_page_writeback(%struct.page* %111)
  br label %113

113:                                              ; preds = %110, %102
  %114 = load %struct.page*, %struct.page** %4, align 8
  %115 = load %struct.page*, %struct.page** %3, align 8
  %116 = call i32 @copy_page_owner(%struct.page* %114, %struct.page* %115)
  %117 = load %struct.page*, %struct.page** %4, align 8
  %118 = load %struct.page*, %struct.page** %3, align 8
  %119 = call i32 @mem_cgroup_migrate(%struct.page* %117, %struct.page* %118)
  ret void
}

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i64 @PageReferenced(%struct.page*) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @TestClearPageActive(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @SetPageActive(%struct.page*) #1

declare dso_local i64 @TestClearPageUnevictable(%struct.page*) #1

declare dso_local i32 @SetPageUnevictable(%struct.page*) #1

declare dso_local i64 @PageWorkingset(%struct.page*) #1

declare dso_local i32 @SetPageWorkingset(%struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i64 @PageMappedToDisk(%struct.page*) #1

declare dso_local i32 @SetPageMappedToDisk(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i64 @page_is_young(%struct.page*) #1

declare dso_local i32 @set_page_young(%struct.page*) #1

declare dso_local i64 @page_is_idle(%struct.page*) #1

declare dso_local i32 @set_page_idle(%struct.page*) #1

declare dso_local i32 @page_cpupid_xchg_last(%struct.page*, i32) #1

declare dso_local i32 @ksm_migrate_page(%struct.page*, %struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @ClearPageSwapCache(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @copy_page_owner(%struct.page*, %struct.page*) #1

declare dso_local i32 @mem_cgroup_migrate(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

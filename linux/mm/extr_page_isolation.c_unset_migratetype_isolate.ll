; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_unset_migratetype_isolate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_unset_migratetype_isolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32, i32 }

@pageblock_order = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @unset_migratetype_isolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unset_migratetype_isolate(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call %struct.zone* @page_zone(%struct.page* %13)
  store %struct.zone* %14, %struct.zone** %5, align 8
  %15 = load %struct.zone*, %struct.zone** %5, align 8
  %16 = getelementptr inbounds %struct.zone, %struct.zone* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @is_migrate_isolate_page(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i64 @PageBuddy(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @page_order(%struct.page* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @pageblock_order, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i64 @page_to_pfn(%struct.page* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @__find_buddy_pfn(i64 %36, i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %40, %41
  %43 = getelementptr inbounds %struct.page, %struct.page* %39, i64 %42
  store %struct.page* %43, %struct.page** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @pfn_valid_within(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %33
  %48 = load %struct.page*, %struct.page** %12, align 8
  %49 = call i32 @is_migrate_isolate_page(%struct.page* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.page*, %struct.page** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @__isolate_free_page(%struct.page* %52, i32 %53)
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47, %33
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load %struct.zone*, %struct.zone** %5, align 8
  %62 = load %struct.page*, %struct.page** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @move_freepages_block(%struct.zone* %61, %struct.page* %62, i32 %63, i32* null)
  store i64 %64, i64* %7, align 8
  %65 = load %struct.zone*, %struct.zone** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @__mod_zone_freepage_state(%struct.zone* %65, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load %struct.page*, %struct.page** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @set_pageblock_migratetype(%struct.page* %70, i32 %71)
  %73 = load %struct.zone*, %struct.zone** %5, align 8
  %74 = getelementptr inbounds %struct.zone, %struct.zone* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %22
  %78 = load %struct.zone*, %struct.zone** %5, align 8
  %79 = getelementptr inbounds %struct.zone, %struct.zone* %78, i32 0, i32 0
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.page*, %struct.page** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @__GFP_MOVABLE, align 4
  %88 = call i32 @post_alloc_hook(%struct.page* %85, i32 %86, i32 %87)
  %89 = load %struct.page*, %struct.page** %3, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @__free_pages(%struct.page* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %77
  ret void
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_migrate_isolate_page(%struct.page*) #1

declare dso_local i64 @PageBuddy(%struct.page*) #1

declare dso_local i32 @page_order(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @__find_buddy_pfn(i64, i32) #1

declare dso_local i64 @pfn_valid_within(i64) #1

declare dso_local i32 @__isolate_free_page(%struct.page*, i32) #1

declare dso_local i64 @move_freepages_block(%struct.zone*, %struct.page*, i32, i32*) #1

declare dso_local i32 @__mod_zone_freepage_state(%struct.zone*, i64, i32) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @post_alloc_hook(%struct.page*, i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

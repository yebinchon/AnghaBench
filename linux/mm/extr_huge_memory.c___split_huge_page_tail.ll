; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_page_tail.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_page_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i64, i64, i32 }
%struct.lruvec = type { i32 }
%struct.list_head = type { i32 }

@PAGE_FLAGS_CHECK_AT_PREP = common dso_local global i64 0, align 8
@PG_referenced = common dso_local global i64 0, align 8
@PG_swapbacked = common dso_local global i64 0, align 8
@PG_swapcache = common dso_local global i64 0, align 8
@PG_mlocked = common dso_local global i64 0, align 8
@PG_uptodate = common dso_local global i64 0, align 8
@PG_active = common dso_local global i64 0, align 8
@PG_workingset = common dso_local global i64 0, align 8
@PG_locked = common dso_local global i64 0, align 8
@PG_unevictable = common dso_local global i64 0, align 8
@PG_dirty = common dso_local global i64 0, align 8
@TAIL_MAPPING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, %struct.lruvec*, %struct.list_head*)* @__split_huge_page_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__split_huge_page_tail(%struct.page* %0, i32 %1, %struct.lruvec* %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lruvec*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.lruvec* %2, %struct.lruvec** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.page, %struct.page* %10, i64 %12
  store %struct.page* %13, %struct.page** %9, align 8
  %14 = load %struct.page*, %struct.page** %9, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 3
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp ne i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = call i32 @VM_BUG_ON_PAGE(i32 %18, %struct.page* %19)
  %21 = load i64, i64* @PAGE_FLAGS_CHECK_AT_PREP, align 8
  %22 = xor i64 %21, -1
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PG_referenced, align 8
  %31 = shl i64 1, %30
  %32 = load i64, i64* @PG_swapbacked, align 8
  %33 = shl i64 1, %32
  %34 = or i64 %31, %33
  %35 = load i64, i64* @PG_swapcache, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load i64, i64* @PG_mlocked, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load i64, i64* @PG_uptodate, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @PG_active, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = load i64, i64* @PG_workingset, align 8
  %48 = shl i64 1, %47
  %49 = or i64 %46, %48
  %50 = load i64, i64* @PG_locked, align 8
  %51 = shl i64 1, %50
  %52 = or i64 %49, %51
  %53 = load i64, i64* @PG_unevictable, align 8
  %54 = shl i64 1, %53
  %55 = or i64 %52, %54
  %56 = load i64, i64* @PG_dirty, align 8
  %57 = shl i64 1, %56
  %58 = or i64 %55, %57
  %59 = and i64 %29, %58
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %4
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = getelementptr inbounds %struct.page, %struct.page* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TAIL_MAPPING, align 8
  %71 = icmp ne i64 %69, %70
  br label %72

72:                                               ; preds = %66, %4
  %73 = phi i1 [ false, %4 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = load %struct.page*, %struct.page** %9, align 8
  %76 = call i32 @VM_BUG_ON_PAGE(i32 %74, %struct.page* %75)
  %77 = load %struct.page*, %struct.page** %5, align 8
  %78 = getelementptr inbounds %struct.page, %struct.page* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.page*, %struct.page** %9, align 8
  %81 = getelementptr inbounds %struct.page, %struct.page* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.page*, %struct.page** %5, align 8
  %83 = getelementptr inbounds %struct.page, %struct.page* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.page*, %struct.page** %9, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = call i32 (...) @smp_wmb()
  %91 = load %struct.page*, %struct.page** %9, align 8
  %92 = call i32 @clear_compound_head(%struct.page* %91)
  %93 = load %struct.page*, %struct.page** %9, align 8
  %94 = load %struct.page*, %struct.page** %5, align 8
  %95 = call i32 @PageAnon(%struct.page* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %72
  %98 = load %struct.page*, %struct.page** %5, align 8
  %99 = call i64 @PageSwapCache(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %97, %72
  %102 = phi i1 [ true, %72 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = add nsw i32 1, %103
  %105 = call i32 @page_ref_unfreeze(%struct.page* %93, i32 %104)
  %106 = load %struct.page*, %struct.page** %5, align 8
  %107 = call i64 @page_is_young(%struct.page* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.page*, %struct.page** %9, align 8
  %111 = call i32 @set_page_young(%struct.page* %110)
  br label %112

112:                                              ; preds = %109, %101
  %113 = load %struct.page*, %struct.page** %5, align 8
  %114 = call i64 @page_is_idle(%struct.page* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.page*, %struct.page** %9, align 8
  %118 = call i32 @set_page_idle(%struct.page* %117)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.page*, %struct.page** %9, align 8
  %121 = load %struct.page*, %struct.page** %5, align 8
  %122 = call i32 @page_cpupid_last(%struct.page* %121)
  %123 = call i32 @page_cpupid_xchg_last(%struct.page* %120, i32 %122)
  %124 = load %struct.page*, %struct.page** %5, align 8
  %125 = load %struct.page*, %struct.page** %9, align 8
  %126 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  %127 = load %struct.list_head*, %struct.list_head** %8, align 8
  %128 = call i32 @lru_add_page_tail(%struct.page* %124, %struct.page* %125, %struct.lruvec* %126, %struct.list_head* %127)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @clear_compound_head(%struct.page*) #1

declare dso_local i32 @page_ref_unfreeze(%struct.page*, i32) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @page_is_young(%struct.page*) #1

declare dso_local i32 @set_page_young(%struct.page*) #1

declare dso_local i64 @page_is_idle(%struct.page*) #1

declare dso_local i32 @set_page_idle(%struct.page*) #1

declare dso_local i32 @page_cpupid_xchg_last(%struct.page*, i32) #1

declare dso_local i32 @page_cpupid_last(%struct.page*) #1

declare dso_local i32 @lru_add_page_tail(%struct.page*, %struct.page*, %struct.lruvec*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

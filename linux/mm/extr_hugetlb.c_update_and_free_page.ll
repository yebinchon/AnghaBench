; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_update_and_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_update_and_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32*, i32 }
%struct.page = type { i32 }

@PG_locked = common dso_local global i32 0, align 4
@PG_error = common dso_local global i32 0, align 4
@PG_referenced = common dso_local global i32 0, align 4
@PG_dirty = common dso_local global i32 0, align 4
@PG_active = common dso_local global i32 0, align 4
@PG_private = common dso_local global i32 0, align 4
@PG_writeback = common dso_local global i32 0, align 4
@NULL_COMPOUND_DTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, %struct.page*)* @update_and_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_and_free_page(%struct.hstate* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.hstate*, %struct.hstate** %3, align 8
  %7 = call i64 @hstate_is_gigantic(%struct.hstate* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 (...) @gigantic_page_runtime_supported()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %90

13:                                               ; preds = %9, %2
  %14 = load %struct.hstate*, %struct.hstate** %3, align 8
  %15 = getelementptr inbounds %struct.hstate, %struct.hstate* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.hstate*, %struct.hstate** %3, align 8
  %19 = getelementptr inbounds %struct.hstate, %struct.hstate* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i64 @page_to_nid(%struct.page* %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %60, %13
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hstate*, %struct.hstate** %3, align 8
  %29 = call i32 @pages_per_huge_page(%struct.hstate* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = load i32, i32* @PG_locked, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @PG_error, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* @PG_referenced, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @PG_dirty, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @PG_active, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @PG_private, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @PG_writeback, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.page, %struct.page* %53, i64 %55
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %52
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %31
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %26

63:                                               ; preds = %26
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call i32 @hugetlb_cgroup_from_page(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @VM_BUG_ON_PAGE(i32 %65, %struct.page* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = load i32, i32* @NULL_COMPOUND_DTOR, align 4
  %70 = call i32 @set_compound_page_dtor(%struct.page* %68, i32 %69)
  %71 = load %struct.page*, %struct.page** %4, align 8
  %72 = call i32 @set_page_refcounted(%struct.page* %71)
  %73 = load %struct.hstate*, %struct.hstate** %3, align 8
  %74 = call i64 @hstate_is_gigantic(%struct.hstate* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %63
  %77 = load %struct.page*, %struct.page** %4, align 8
  %78 = load %struct.hstate*, %struct.hstate** %3, align 8
  %79 = call i32 @huge_page_order(%struct.hstate* %78)
  %80 = call i32 @destroy_compound_gigantic_page(%struct.page* %77, i32 %79)
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = load %struct.hstate*, %struct.hstate** %3, align 8
  %83 = call i32 @huge_page_order(%struct.hstate* %82)
  %84 = call i32 @free_gigantic_page(%struct.page* %81, i32 %83)
  br label %90

85:                                               ; preds = %63
  %86 = load %struct.page*, %struct.page** %4, align 8
  %87 = load %struct.hstate*, %struct.hstate** %3, align 8
  %88 = call i32 @huge_page_order(%struct.hstate* %87)
  %89 = call i32 @__free_pages(%struct.page* %86, i32 %88)
  br label %90

90:                                               ; preds = %12, %85, %76
  ret void
}

declare dso_local i64 @hstate_is_gigantic(%struct.hstate*) #1

declare dso_local i32 @gigantic_page_runtime_supported(...) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @hugetlb_cgroup_from_page(%struct.page*) #1

declare dso_local i32 @set_compound_page_dtor(%struct.page*, i32) #1

declare dso_local i32 @set_page_refcounted(%struct.page*) #1

declare dso_local i32 @destroy_compound_gigantic_page(%struct.page*, i32) #1

declare dso_local i32 @huge_page_order(%struct.hstate*) #1

declare dso_local i32 @free_gigantic_page(%struct.page*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

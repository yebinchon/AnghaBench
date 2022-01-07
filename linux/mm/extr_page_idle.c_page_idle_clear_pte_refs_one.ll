; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_idle.c_page_idle_clear_pte_refs_one.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_idle.c_page_idle_clear_pte_refs_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page_vma_mapped_walk = type { i64, i32, i64, %struct.vm_area_struct*, %struct.page* }

@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @page_idle_clear_pte_refs_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_idle_clear_pte_refs_one(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page_vma_mapped_walk, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 3
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %15, align 8
  %17 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 4
  %18 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %18, %struct.page** %17, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %53, %4
  %20 = call i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @ptep_clear_young_notify(%struct.vm_area_struct* %29, i64 %30, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %28
  br label %53

37:                                               ; preds = %22
  %38 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %39 = call i64 @IS_ENABLED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @pmdp_clear_young_notify(%struct.vm_area_struct* %42, i64 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %41
  br label %52

50:                                               ; preds = %37
  %51 = call i32 @WARN_ON_ONCE(i32 1)
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %36
  br label %19

54:                                               ; preds = %19
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i32 @clear_page_idle(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @set_page_young(%struct.page* %60)
  br label %62

62:                                               ; preds = %57, %54
  ret i32 1
}

declare dso_local i64 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i64 @ptep_clear_young_notify(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @pmdp_clear_young_notify(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @clear_page_idle(%struct.page*) #1

declare dso_local i32 @set_page_young(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

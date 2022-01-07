; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_pagevec_fill.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_pagevec_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zone = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pagevec*, %struct.vm_area_struct*, %struct.zone*, i64, i64)* @__munlock_pagevec_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__munlock_pagevec_fill(%struct.pagevec* %0, %struct.vm_area_struct* %1, %struct.zone* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.pagevec*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.zone*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store %struct.zone* %2, %struct.zone** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @get_locked_pte(i32 %16, i64 %17, i32** %12)
  store i32* %18, i32** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @pgd_addr_end(i64 %19, i64 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @p4d_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @pud_addr_end(i64 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @pmd_addr_end(i64 %28, i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %76, %5
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  store %struct.page* null, %struct.page** %13, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pte_present(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %46, i64 %47, i32 %49)
  store %struct.page* %50, %struct.page** %13, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.page*, %struct.page** %13, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.page*, %struct.page** %13, align 8
  %56 = call %struct.zone* @page_zone(%struct.page* %55)
  %57 = load %struct.zone*, %struct.zone** %8, align 8
  %58 = icmp ne %struct.zone* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %51
  br label %77

60:                                               ; preds = %54
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = call i64 @PageTransCompound(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %77

65:                                               ; preds = %60
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = call i32 @get_page(%struct.page* %66)
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load %struct.pagevec*, %struct.pagevec** %6, align 8
  %72 = load %struct.page*, %struct.page** %13, align 8
  %73 = call i64 @pagevec_add(%struct.pagevec* %71, %struct.page* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %77

76:                                               ; preds = %65
  br label %34

77:                                               ; preds = %75, %64, %59, %34
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @pte_unmap_unlock(i32* %78, i32* %79)
  %81 = load i64, i64* %9, align 8
  ret i64 %81
}

declare dso_local i32* @get_locked_pte(i32, i64, i32**) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @p4d_addr_end(i64, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

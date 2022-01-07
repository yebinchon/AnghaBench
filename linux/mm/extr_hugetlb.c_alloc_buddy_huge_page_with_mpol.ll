; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_buddy_huge_page_with_mpol.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_buddy_huge_page_with_mpol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.mempolicy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, %struct.vm_area_struct*, i64)* @alloc_buddy_huge_page_with_mpol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_buddy_huge_page_with_mpol(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.hstate*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.hstate* %0, %struct.hstate** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.hstate*, %struct.hstate** %4, align 8
  %13 = call i32 @htlb_alloc_mask(%struct.hstate* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @huge_node(%struct.vm_area_struct* %14, i64 %15, i32 %16, %struct.mempolicy** %8, i32** %11)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.hstate*, %struct.hstate** %4, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call %struct.page* @alloc_surplus_huge_page(%struct.hstate* %18, i32 %19, i32 %20, i32* %21)
  store %struct.page* %22, %struct.page** %7, align 8
  %23 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %24 = call i32 @mpol_cond_put(%struct.mempolicy* %23)
  %25 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %25
}

declare dso_local i32 @htlb_alloc_mask(%struct.hstate*) #1

declare dso_local i32 @huge_node(%struct.vm_area_struct*, i64, i32, %struct.mempolicy**, i32**) #1

declare dso_local %struct.page* @alloc_surplus_huge_page(%struct.hstate*, i32, i32, i32*) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

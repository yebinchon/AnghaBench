; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_dequeue_huge_page_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_dequeue_huge_page_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i64, i64 }
%struct.vm_area_struct = type { i32 }
%struct.mempolicy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, %struct.vm_area_struct*, i64, i32, i64)* @dequeue_huge_page_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @dequeue_huge_page_vma(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.hstate*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.mempolicy*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @vma_has_reserves(%struct.vm_area_struct* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = load %struct.hstate*, %struct.hstate** %7, align 8
  %23 = getelementptr inbounds %struct.hstate, %struct.hstate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hstate*, %struct.hstate** %7, align 8
  %26 = getelementptr inbounds %struct.hstate, %struct.hstate* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %77

31:                                               ; preds = %21, %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.hstate*, %struct.hstate** %7, align 8
  %36 = getelementptr inbounds %struct.hstate, %struct.hstate* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hstate*, %struct.hstate** %7, align 8
  %39 = getelementptr inbounds %struct.hstate, %struct.hstate* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %77

44:                                               ; preds = %34, %31
  %45 = load %struct.hstate*, %struct.hstate** %7, align 8
  %46 = call i32 @htlb_alloc_mask(%struct.hstate* %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @huge_node(%struct.vm_area_struct* %47, i64 %48, i32 %49, %struct.mempolicy** %13, i32** %15)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.hstate*, %struct.hstate** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = call %struct.page* @dequeue_huge_page_nodemask(%struct.hstate* %51, i32 %52, i32 %53, i32* %54)
  store %struct.page* %55, %struct.page** %12, align 8
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @vma_has_reserves(%struct.vm_area_struct* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.page*, %struct.page** %12, align 8
  %68 = call i32 @SetPagePrivate(%struct.page* %67)
  %69 = load %struct.hstate*, %struct.hstate** %7, align 8
  %70 = getelementptr inbounds %struct.hstate, %struct.hstate* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %66, %61, %58, %44
  %74 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %75 = call i32 @mpol_cond_put(%struct.mempolicy* %74)
  %76 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %76, %struct.page** %6, align 8
  br label %78

77:                                               ; preds = %43, %30
  store %struct.page* null, %struct.page** %6, align 8
  br label %78

78:                                               ; preds = %77, %73
  %79 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %79
}

declare dso_local i64 @vma_has_reserves(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @htlb_alloc_mask(%struct.hstate*) #1

declare dso_local i32 @huge_node(%struct.vm_area_struct*, i64, i32, %struct.mempolicy**, i32**) #1

declare dso_local %struct.page* @dequeue_huge_page_nodemask(%struct.hstate*, i32, i32, i32*) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

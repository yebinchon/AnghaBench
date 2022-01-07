; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_follow_devmap_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_follow_devmap_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.dev_pagemap = type { i32 }

@FOLL_COW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mm: In follow_devmap_pmd with FOLL_COW set\00", align 1
@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_TOUCH = common dso_local global i32 0, align 4
@FOLL_GET = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_devmap_pmd(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, %struct.dev_pagemap** %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dev_pagemap**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mm_struct*, align 8
  %14 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.dev_pagemap** %4, %struct.dev_pagemap*** %11, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @pmd_pfn(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %13, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @pmd_lockptr(%struct.mm_struct* %21, i32* %22)
  %24 = call i32 @assert_spin_locked(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @FOLL_COW, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @WARN_ONCE(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @FOLL_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pmd_write(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store %struct.page* null, %struct.page** %6, align 8
  br label %98

39:                                               ; preds = %33, %5
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pmd_present(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pmd_devmap(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %44, %39
  store %struct.page* null, %struct.page** %6, align 8
  br label %98

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @FOLL_TOUCH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @touch_pmd(%struct.vm_area_struct* %57, i64 %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @FOLL_GET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.page* @ERR_PTR(i32 %69)
  store %struct.page* %70, %struct.page** %6, align 8
  br label %98

71:                                               ; preds = %62
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @PMD_MASK, align 8
  %74 = xor i64 %73, -1
  %75 = and i64 %72, %74
  %76 = load i64, i64* @PAGE_SHIFT, align 8
  %77 = lshr i64 %75, %76
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.dev_pagemap**, %struct.dev_pagemap*** %11, align 8
  %82 = load %struct.dev_pagemap*, %struct.dev_pagemap** %81, align 8
  %83 = call %struct.dev_pagemap* @get_dev_pagemap(i64 %80, %struct.dev_pagemap* %82)
  %84 = load %struct.dev_pagemap**, %struct.dev_pagemap*** %11, align 8
  store %struct.dev_pagemap* %83, %struct.dev_pagemap** %84, align 8
  %85 = load %struct.dev_pagemap**, %struct.dev_pagemap*** %11, align 8
  %86 = load %struct.dev_pagemap*, %struct.dev_pagemap** %85, align 8
  %87 = icmp ne %struct.dev_pagemap* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %71
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.page* @ERR_PTR(i32 %90)
  store %struct.page* %91, %struct.page** %6, align 8
  br label %98

92:                                               ; preds = %71
  %93 = load i64, i64* %12, align 8
  %94 = call %struct.page* @pfn_to_page(i64 %93)
  store %struct.page* %94, %struct.page** %14, align 8
  %95 = load %struct.page*, %struct.page** %14, align 8
  %96 = call i32 @get_page(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %97, %struct.page** %6, align 8
  br label %98

98:                                               ; preds = %92, %88, %67, %50, %38
  %99 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %99
}

declare dso_local i64 @pmd_pfn(i32) #1

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @pmd_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @pmd_write(i32) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i32 @touch_pmd(%struct.vm_area_struct*, i64, i32*, i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local %struct.dev_pagemap* @get_dev_pagemap(i64, %struct.dev_pagemap*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

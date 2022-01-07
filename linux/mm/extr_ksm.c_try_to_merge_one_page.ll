; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_try_to_merge_one_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_try_to_merge_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.page*, %struct.page*)* @try_to_merge_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_merge_one_page(%struct.vm_area_struct* %0, %struct.page* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %10 = call i32 @__pte(i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @EFAULT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = icmp eq %struct.page* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

17:                                               ; preds = %3
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @PageAnon(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %102

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @trylock_page(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %102

27:                                               ; preds = %22
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i64 @PageTransCompound(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i64 @split_huge_page(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %99

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %27
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = call i64 @write_protect_page(%struct.vm_area_struct* %38, %struct.page* %39, i32* %8)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i32 @set_page_stable_node(%struct.page* %46, i32* null)
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call i32 @mark_page_accessed(%struct.page* %48)
  %50 = load %struct.page*, %struct.page** %6, align 8
  %51 = call i32 @PageDirty(%struct.page* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = call i32 @SetPageDirty(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %45
  store i32 0, i32* %9, align 4
  br label %69

57:                                               ; preds = %42
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = load %struct.page*, %struct.page** %7, align 8
  %60 = call i64 @pages_identical(%struct.page* %58, %struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = load %struct.page*, %struct.page** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @replace_page(%struct.vm_area_struct* %63, %struct.page* %64, %struct.page* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VM_LOCKED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %70
  %78 = load %struct.page*, %struct.page** %7, align 8
  %79 = icmp ne %struct.page* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %80
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = call i32 @munlock_vma_page(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = call i32 @PageMlocked(%struct.page* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = load %struct.page*, %struct.page** %6, align 8
  %91 = call i32 @unlock_page(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %7, align 8
  %93 = call i32 @lock_page(%struct.page* %92)
  %94 = load %struct.page*, %struct.page** %7, align 8
  %95 = call i32 @mlock_vma_page(%struct.page* %94)
  %96 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %96, %struct.page** %6, align 8
  br label %97

97:                                               ; preds = %89, %83
  br label %98

98:                                               ; preds = %97, %80, %77, %70
  br label %99

99:                                               ; preds = %98, %35
  %100 = load %struct.page*, %struct.page** %6, align 8
  %101 = call i32 @unlock_page(%struct.page* %100)
  br label %102

102:                                              ; preds = %99, %26, %21
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i64 @split_huge_page(%struct.page*) #1

declare dso_local i64 @write_protect_page(%struct.vm_area_struct*, %struct.page*, i32*) #1

declare dso_local i32 @set_page_stable_node(%struct.page*, i32*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i64 @pages_identical(%struct.page*, %struct.page*) #1

declare dso_local i32 @replace_page(%struct.vm_area_struct*, %struct.page*, %struct.page*, i32) #1

declare dso_local i32 @munlock_vma_page(%struct.page*) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @mlock_vma_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

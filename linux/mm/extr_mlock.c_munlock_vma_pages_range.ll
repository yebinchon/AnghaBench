; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_munlock_vma_pages_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_munlock_vma_pages_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.pagevec = type { i32 }
%struct.zone = type { i32 }

@VM_LOCKED_CLEAR_MASK = common dso_local global i32 0, align 4
@FOLL_GET = common dso_local global i32 0, align 4
@FOLL_DUMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @munlock_vma_pages_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pagevec, align 4
  %11 = alloca %struct.zone*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @VM_LOCKED_CLEAR_MASK, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %82, %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %22 = call i32 @pagevec_init(%struct.pagevec* %10)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @FOLL_GET, align 4
  %26 = load i32, i32* @FOLL_DUMP, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.page* @follow_page(%struct.vm_area_struct* %23, i64 %24, i32 %27)
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %21
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @IS_ERR(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = call i64 @PageTransTail(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = call i32 @PageMlocked(%struct.page* %40)
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = call i32 @VM_BUG_ON_PAGE(i32 %41, %struct.page* %42)
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = call i32 @put_page(%struct.page* %44)
  br label %72

46:                                               ; preds = %35
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = call i64 @PageTransHuge(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.page*, %struct.page** %7, align 8
  %52 = call i32 @lock_page(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call i32 @munlock_vma_page(%struct.page* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = call i32 @unlock_page(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = call i32 @put_page(%struct.page* %57)
  br label %71

59:                                               ; preds = %46
  %60 = load %struct.page*, %struct.page** %7, align 8
  %61 = call i32 @pagevec_add(%struct.pagevec* %10, %struct.page* %60)
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call %struct.zone* @page_zone(%struct.page* %62)
  store %struct.zone* %63, %struct.zone** %11, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %65 = load %struct.zone*, %struct.zone** %11, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @__munlock_pagevec_fill(%struct.pagevec* %10, %struct.vm_area_struct* %64, %struct.zone* %65, i64 %66, i64 %67)
  store i64 %68, i64* %5, align 8
  %69 = load %struct.zone*, %struct.zone** %11, align 8
  %70 = call i32 @__munlock_pagevec(%struct.pagevec* %10, %struct.zone* %69)
  br label %82

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %39
  br label %73

73:                                               ; preds = %72, %31, %21
  %74 = load i32, i32* %8, align 4
  %75 = add i32 1, %74
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @PAGE_SIZE, align 8
  %79 = mul i64 %77, %78
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %73, %59
  %83 = call i32 (...) @cond_resched()
  br label %17

84:                                               ; preds = %17
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local %struct.page* @follow_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i64 @PageTransTail(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @munlock_vma_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i64 @__munlock_pagevec_fill(%struct.pagevec*, %struct.vm_area_struct*, %struct.zone*, i64, i64) #1

declare dso_local i32 @__munlock_pagevec(%struct.pagevec*, %struct.zone*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

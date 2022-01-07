; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_insert_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.page*, i32)* @insert_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_page(%struct.vm_area_struct* %0, i64 %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i64 @PageAnon(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i64 @PageSlab(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i64 @page_has_type(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %4
  br label %69

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @flush_dcache_page(%struct.page* %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @get_locked_pte(%struct.mm_struct* %35, i64 %36, i32** %12)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %69

41:                                               ; preds = %30
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pte_none(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %65

49:                                               ; preds = %41
  %50 = load %struct.page*, %struct.page** %7, align 8
  %51 = call i32 @get_page(%struct.page* %50)
  %52 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call i32 @mm_counter_file(%struct.page* %53)
  %55 = call i32 @inc_mm_counter_fast(%struct.mm_struct* %52, i32 %54)
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = call i32 @page_add_file_rmap(%struct.page* %56, i32 0)
  %58 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.page*, %struct.page** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @mk_pte(%struct.page* %61, i32 %62)
  %64 = call i32 @set_pte_at(%struct.mm_struct* %58, i64 %59, i32* %60, i32 %63)
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %49, %48
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @pte_unmap_unlock(i32* %66, i32* %67)
  br label %69

69:                                               ; preds = %65, %40, %29
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i64 @page_has_type(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32* @get_locked_pte(%struct.mm_struct*, i64, i32**) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @inc_mm_counter_fast(%struct.mm_struct*, i32) #1

declare dso_local i32 @mm_counter_file(%struct.page*) #1

declare dso_local i32 @page_add_file_rmap(%struct.page*, i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_add_new_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_add_new_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@NR_ANON_THPS = common dso_local global i32 0, align 4
@NR_ANON_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_add_new_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @hpage_nr_pages(%struct.page* %13)
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ %14, %12 ], [ 1, %15 ]
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi i1 [ true, %16 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = call i32 @VM_BUG_ON_VMA(i32 %31, %struct.vm_area_struct* %32)
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @__SetPageSwapBacked(%struct.page* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = call i32 @PageTransHuge(%struct.page* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @VM_BUG_ON_PAGE(i32 %43, %struct.page* %44)
  %46 = load %struct.page*, %struct.page** %5, align 8
  %47 = call i32* @compound_mapcount_ptr(%struct.page* %46)
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = load i32, i32* @NR_ANON_THPS, align 4
  %51 = call i32 @__inc_node_page_state(%struct.page* %49, i32 %50)
  br label %60

52:                                               ; preds = %29
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @PageTransCompound(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = call i32 @VM_BUG_ON_PAGE(i32 %54, %struct.page* %55)
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %52, %38
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @page_pgdat(%struct.page* %61)
  %63 = load i32, i32* @NR_ANON_MAPPED, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @__mod_node_page_state(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @__page_set_anon_rmap(%struct.page* %66, %struct.vm_area_struct* %67, i64 %68, i32 1)
  ret void
}

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @__SetPageSwapBacked(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i32 @__inc_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @__mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @__page_set_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_do_page_add_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_do_page_add_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@RMAP_COMPOUND = common dso_local global i32 0, align 4
@NR_ANON_THPS = common dso_local global i32 0, align 4
@NR_ANON_MAPPED = common dso_local global i32 0, align 4
@RMAP_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_page_add_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @RMAP_COMPOUND, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @PageLocked(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @VM_BUG_ON_PAGE(i32 %23, %struct.page* %24)
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i32 @PageTransHuge(%struct.page* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @VM_BUG_ON_PAGE(i32 %30, %struct.page* %31)
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32* @compound_mapcount_ptr(%struct.page* %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @atomic_inc_and_test(i32* %35)
  store i32 %36, i32* %10, align 4
  br label %41

37:                                               ; preds = %4
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = call i32 @atomic_inc_and_test(i32* %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %18
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @hpage_nr_pages(%struct.page* %48)
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 1, %50 ]
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = load i32, i32* @NR_ANON_THPS, align 4
  %58 = call i32 @__inc_node_page_state(%struct.page* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @page_pgdat(%struct.page* %60)
  %62 = load i32, i32* @NR_ANON_MAPPED, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @__mod_node_page_state(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %41
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @PageKsm(%struct.page* %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %94

71:                                               ; preds = %65
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @PageLocked(%struct.page* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.page*, %struct.page** %5, align 8
  %78 = call i32 @VM_BUG_ON_PAGE(i32 %76, %struct.page* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load %struct.page*, %struct.page** %5, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @RMAP_EXCLUSIVE, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @__page_set_anon_rmap(%struct.page* %82, %struct.vm_area_struct* %83, i64 %84, i32 %87)
  br label %94

89:                                               ; preds = %71
  %90 = load %struct.page*, %struct.page** %5, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @__page_check_anon_rmap(%struct.page* %90, %struct.vm_area_struct* %91, i64 %92)
  br label %94

94:                                               ; preds = %70, %89, %81
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @__inc_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @__mod_node_page_state(i32, i32, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @__page_set_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__page_check_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

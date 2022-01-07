; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_try_to_merge_with_ksm_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_try_to_merge_with_ksm_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmap_item = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmap_item*, %struct.page*, %struct.page*)* @try_to_merge_with_ksm_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_merge_with_ksm_page(%struct.rmap_item* %0, %struct.page* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.rmap_item*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.rmap_item* %0, %struct.rmap_item** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %10 = load %struct.rmap_item*, %struct.rmap_item** %4, align 8
  %11 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %10, i32 0, i32 2
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %7, align 8
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %19 = load %struct.rmap_item*, %struct.rmap_item** %4, align 8
  %20 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vm_area_struct* @find_mergeable_vma(%struct.mm_struct* %18, i32 %21)
  store %struct.vm_area_struct* %22, %struct.vm_area_struct** %8, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %24 = icmp ne %struct.vm_area_struct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = call i32 @try_to_merge_one_page(%struct.vm_area_struct* %27, %struct.page* %28, %struct.page* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.rmap_item*, %struct.rmap_item** %4, align 8
  %36 = call i32 @remove_rmap_item_from_tree(%struct.rmap_item* %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rmap_item*, %struct.rmap_item** %4, align 8
  %41 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_anon_vma(i32 %44)
  br label %46

46:                                               ; preds = %34, %33, %25
  %47 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  %49 = call i32 @up_read(i32* %48)
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_mergeable_vma(%struct.mm_struct*, i32) #1

declare dso_local i32 @try_to_merge_one_page(%struct.vm_area_struct*, %struct.page*, %struct.page*) #1

declare dso_local i32 @remove_rmap_item_from_tree(%struct.rmap_item*) #1

declare dso_local i32 @get_anon_vma(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

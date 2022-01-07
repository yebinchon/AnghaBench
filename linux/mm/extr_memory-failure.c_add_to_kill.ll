; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_add_to_kill.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_add_to_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.list_head = type { i32 }
%struct.to_kill = type { i64, i32, %struct.task_struct*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Memory failure: Out of memory while machine check handling\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Memory failure: Unable to find user space address %lx in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.page*, %struct.vm_area_struct*, %struct.list_head*, %struct.to_kill**)* @add_to_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_kill(%struct.task_struct* %0, %struct.page* %1, %struct.vm_area_struct* %2, %struct.list_head* %3, %struct.to_kill** %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.to_kill**, align 8
  %11 = alloca %struct.to_kill*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store %struct.to_kill** %4, %struct.to_kill*** %10, align 8
  %12 = load %struct.to_kill**, %struct.to_kill*** %10, align 8
  %13 = load %struct.to_kill*, %struct.to_kill** %12, align 8
  %14 = icmp ne %struct.to_kill* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.to_kill**, %struct.to_kill*** %10, align 8
  %17 = load %struct.to_kill*, %struct.to_kill** %16, align 8
  store %struct.to_kill* %17, %struct.to_kill** %11, align 8
  %18 = load %struct.to_kill**, %struct.to_kill*** %10, align 8
  store %struct.to_kill* null, %struct.to_kill** %18, align 8
  br label %27

19:                                               ; preds = %5
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.to_kill* @kmalloc(i32 32, i32 %20)
  store %struct.to_kill* %21, %struct.to_kill** %11, align 8
  %22 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %23 = icmp ne %struct.to_kill* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %83

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %30 = call i32 @page_address_in_vma(%struct.page* %28, %struct.vm_area_struct* %29)
  %31 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %32 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i64 @is_zone_device_page(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %39 = call i64 @dev_pagemap_mapping_shift(%struct.page* %37, %struct.vm_area_struct* %38)
  %40 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %41 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = call i32 @compound_head(%struct.page* %43)
  %45 = call i64 @compound_order(i32 %44)
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %49 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %52 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.page*, %struct.page** %7, align 8
  %59 = call i32 @page_to_pfn(%struct.page* %58)
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  br label %73

64:                                               ; preds = %50
  %65 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %66 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %71 = call i32 @kfree(%struct.to_kill* %70)
  br label %83

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %57
  %74 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %75 = call i32 @get_task_struct(%struct.task_struct* %74)
  %76 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %77 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %78 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %77, i32 0, i32 2
  store %struct.task_struct* %76, %struct.task_struct** %78, align 8
  %79 = load %struct.to_kill*, %struct.to_kill** %11, align 8
  %80 = getelementptr inbounds %struct.to_kill, %struct.to_kill* %79, i32 0, i32 1
  %81 = load %struct.list_head*, %struct.list_head** %9, align 8
  %82 = call i32 @list_add_tail(i32* %80, %struct.list_head* %81)
  br label %83

83:                                               ; preds = %73, %69, %24
  ret void
}

declare dso_local %struct.to_kill* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @page_address_in_vma(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i64 @is_zone_device_page(%struct.page*) #1

declare dso_local i64 @dev_pagemap_mapping_shift(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i64 @compound_order(i32) #1

declare dso_local i32 @compound_head(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @kfree(%struct.to_kill*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

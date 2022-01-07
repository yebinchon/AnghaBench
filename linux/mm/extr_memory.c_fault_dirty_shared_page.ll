; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_fault_dirty_shared_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_fault_dirty_shared_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, %struct.page*)* @fault_dirty_shared_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fault_dirty_shared_page(%struct.vm_area_struct* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i1 [ false, %2 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @set_page_dirty(%struct.page* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @PageAnon(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @VM_BUG_ON_PAGE(i32 %25, %struct.page* %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call %struct.address_space* @page_rmapping(%struct.page* %28)
  store %struct.address_space* %29, %struct.address_space** %5, align 8
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @unlock_page(%struct.page* %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34, %19
  %38 = load %struct.address_space*, %struct.address_space** %5, align 8
  %39 = icmp ne %struct.address_space* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.address_space*, %struct.address_space** %5, align 8
  %42 = call i32 @balance_dirty_pages_ratelimited(%struct.address_space* %41)
  br label %43

43:                                               ; preds = %40, %37, %34
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @file_update_time(i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local %struct.address_space* @page_rmapping(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @balance_dirty_pages_ratelimited(%struct.address_space*) #1

declare dso_local i32 @file_update_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

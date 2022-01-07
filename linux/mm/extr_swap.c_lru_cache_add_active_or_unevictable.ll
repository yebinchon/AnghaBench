; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_cache_add_active_or_unevictable.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_lru_cache_add_active_or_unevictable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_SPECIAL = common dso_local global i32 0, align 4
@NR_MLOCK = common dso_local global i32 0, align 4
@UNEVICTABLE_PGMLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lru_cache_add_active_or_unevictable(%struct.page* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @PageLRU(%struct.page* %5)
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @VM_BUG_ON_PAGE(i32 %6, %struct.page* %7)
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VM_LOCKED, align 4
  %13 = load i32, i32* @VM_SPECIAL, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @VM_LOCKED, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @SetPageActive(%struct.page* %22)
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @TestSetPageMlocked(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @page_zone(%struct.page* %29)
  %31 = load i32, i32* @NR_MLOCK, align 4
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @hpage_nr_pages(%struct.page* %32)
  %34 = call i32 @__mod_zone_page_state(i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* @UNEVICTABLE_PGMLOCKED, align 4
  %36 = call i32 @count_vm_event(i32 %35)
  br label %37

37:                                               ; preds = %28, %24
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @lru_cache_add(%struct.page* %39)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SetPageActive(%struct.page*) #1

declare dso_local i32 @TestSetPageMlocked(%struct.page*) #1

declare dso_local i32 @__mod_zone_page_state(i32, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @lru_cache_add(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

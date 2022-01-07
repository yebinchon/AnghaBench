; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_mlock_vma_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_mlock_vma_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4
@UNEVICTABLE_PGMLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlock_vma_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageLocked(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @PageTail(%struct.page* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @VM_BUG_ON_PAGE(i32 %10, %struct.page* %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i64 @PageCompound(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i64 @PageDoubleMap(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ false, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @VM_BUG_ON_PAGE(i32 %22, %struct.page* %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @TestSetPageMlocked(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.page*, %struct.page** %2, align 8
  %30 = call i32 @page_zone(%struct.page* %29)
  %31 = load i32, i32* @NR_MLOCK, align 4
  %32 = load %struct.page*, %struct.page** %2, align 8
  %33 = call i32 @hpage_nr_pages(%struct.page* %32)
  %34 = call i32 @mod_zone_page_state(i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* @UNEVICTABLE_PGMLOCKED, align 4
  %36 = call i32 @count_vm_event(i32 %35)
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i32 @isolate_lru_page(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = call i32 @putback_lru_page(%struct.page* %41)
  br label %43

43:                                               ; preds = %40, %28
  br label %44

44:                                               ; preds = %43, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

declare dso_local i32 @TestSetPageMlocked(%struct.page*) #1

declare dso_local i32 @mod_zone_page_state(i32, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
